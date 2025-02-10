import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/models/lottery_entity.dart';
import 'package:guolo_app/models/ticket_entity.dart';
import 'package:guolo_app/models/user.dart';
import 'package:guolo_app/pages/proof_list/proof_list_page.dart';
import 'package:guolo_app/repositorys/payment_request_repository.dart';
import 'package:guolo_app/repositorys/ticket_repository.dart';
import 'package:guolo_app/services/payment_request/payment_request_cubit.dart';
import 'package:localstorage/localstorage.dart';
import '../../components/result_badge.dart';
import '../../material/colors.dart';
import '../../models/lottery_ticket_entity.dart';
import '../../models/payment_request_entity.dart';
import '../../services/ticket/ticket_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart' as stripe;

class TicketsListPageView extends StatelessWidget {
  final List<TicketEntity> tickets;

  const TicketsListPageView({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => TicketBloc(
          ticketRepository: RepositoryProvider.of<TicketRepository>(context))
        ..add(TicketEvent.fetchStory()),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<TicketBloc>().add(TicketEvent.fetchStory());
        },
        child: SingleChildScrollView(
          child: Center(
            child: BlocConsumer<TicketBloc, TicketState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => SizedBox.shrink(),
                    loading: () => SizedBox(
                          height: size.height * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ],
                          ),
                        ),
                    successStory: (val) => SizedBox(
                          width: size.width * 0.9,
                          height: size.height * 0.9,
                          child: val.length > 0
                              ? Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    for (int i = 0; i < val.length; i++)
                                      _OldTicket(
                                        size: size,
                                        tickets: val[i],
                                      ),
                                  ],
                                )
                              : SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height: 300,
                                          child: Image.asset(
                                              'assets/images/illustration3.png')),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Aucune donnée trouvé",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                        ),
                    error: (_) => Column(
                          children: [
                            SizedBox(
                                height: 300,
                                child: Image.asset(
                                    'assets/images/illustration3.png')),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Aucune donnée trouvé",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ));
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _OldTicket extends StatelessWidget {
  const _OldTicket({
    required this.size,
    required this.tickets,
  });

  final Size size;
  final LotteryTicketEntity tickets;
  createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
      };

      Dio dio = Dio();
      dio.options = BaseOptions(
        headers: {
          'Authorization': 'Bearer ${dotenv.env['SECRET_KEY']}',
          'Content-Type': 'application/x-www-form-urlencoded',
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Credentials': 'true',
          'Access-Control-Allow-Headers': 'Content-Type',
          'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
        },
      );
      //Make post request to Stripe
      var response = await dio.post('https://api.stripe.com/v1/payment_intents',
          data: body);
      var data = response.data;
      data['created'] = data['created'].toString();
      return response.data;
    } catch (err, trace) {
      print(trace);
      throw Exception(err.toString());
    }
  }

  Widget winner() {
    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController bankController = TextEditingController();
    switch (tickets.lotterieDto?.status) {
      case 'created':
        return Text("en cours",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: GuoloColors.primaryColor));
      case 'ended':
        for (int i = 0; i < tickets.tickets!.length; i++) {
          if (tickets.tickets![i].winner == true) {
            return Builder(builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "felicitation 😊",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: GuoloColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: double.infinity*0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0), elevation: 0),
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return BottomSheet(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                        ),
                                        onClosing: () {},
                                        builder: (context) {
                                          return BlocProvider(
                                            create: (context) => PaymentRequestCubit(
                                                RepositoryProvider.of<
                                                        PaymentRequestRepository>(
                                                    context)),
                                            child: BlocConsumer<PaymentRequestCubit,
                                                PaymentRequestState>(
                                              listener: (context, state) {
                                                state.maybeWhen(
                                                  orElse: () {},
                                                  error: (error) {
                                                    Navigator.pop(context);

                                                    ScaffoldMessenger.of(context)
                                                        .showSnackBar(SnackBar(
                                                            backgroundColor:
                                                                Colors.red,
                                                            content: Text(error)));
                                                  },
                                                  success: () {
                                                    Navigator.pop(context);

                                                    ScaffoldMessenger.of(context)
                                                        .showSnackBar(SnackBar(
                                                            content: Text(
                                                                "information enregistrée")));
                                                  },
                                                );
                                              },
                                              builder: (context, state) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [
                                                      SizedBox(
                                                        height: 25,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Flexible(
                                                              child: Text(
                                                            "Entré vos informations banquaires et vos coordonnées",
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 25,
                                                      ),
                                                      TextField(
                                                        controller: nameController,
                                                        decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText: 'Nom',
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      TextField(
                                                        controller:
                                                            numberController,
                                                        decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText:
                                                              'Numero de compte',
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      TextField(
                                                        controller: bankController,
                                                        decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText: 'Banque',
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      state.maybeWhen(
                                                        orElse: () =>
                                                            ButtonComponentView(
                                                          title: 'Valider',
                                                          onPressed: () {
                                                            User user = User
                                                                .fromJson(json.decode(
                                                                    localStorage
                                                                        .getItem(
                                                                            'user')!));
                                                            PaymentRequestEntity
                                                                paymentRequestEntity = PaymentRequestEntity();
                                                                paymentRequestEntity.name = nameController.text;
                                                                paymentRequestEntity.account = numberController.text;
                                                                paymentRequestEntity.banck = bankController.text;
                                                                paymentRequestEntity.idUser = PaymentRequestIdUser.fromJson(user.toJson());
                                                                paymentRequestEntity.idLottery = PaymentRequestIdLottery.fromJson(tickets.lotterieDto!.toJson());

                                                            context
                                                                .read<
                                                                    PaymentRequestCubit>()
                                                                .sendPaymentRequest(
                                                                    paymentRequestEntity);
                                                          },
                                                        ),
                                                        loading: () =>
                                                            ButtonComponentView(
                                                          color: Color(0xFF6B6B6B),
                                                          title: 'sending',
                                                          loading: true,
                                                          onPressed: () {},
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        });
                                  });
                            },
                            child: Text("Demander le virement")),
                        Spacer(),
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0), elevation: 0),
                            onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProofListPage(lotteryDto: tickets.lotterieDto!)));
                        }, child: Text('voir preuves ...'))
                      ],
                    ),
                  )
                ],
              );
            });
          }
        }
        return Text("vous avez perdu 😓",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red));
      default:
        return Text("en cours",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: GuoloColors.primaryColor));
    }
  }

  @override
  Widget build(BuildContext context) {
    print(tickets);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            LayoutBuilder(builder: (context, cons) {
              return SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('${tickets.lotterieDto?.name}',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),

                        Row(
                          children: [
                            Wrap(children: [
                              Icon(
                                LucideIcons.calendar,
                                weight: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${tickets.lotterieDto?.startedDate!}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    ),
                    winner(),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Prix unitaire ticket',
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text('${tickets.tickets?[0].price} FCFA',
                            style: TextStyle(
                                color: GuoloColors.primaryColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jackpot',
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text('${tickets.lotterieDto?.cashPrize} FCFA',
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: GuoloColors.primaryColor, width: 1.5)),
                      child: LayoutBuilder(builder: (context, cons) {
                        return SizedBox(
                            height: size.height * 0.07,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Wrap(spacing: 1, runSpacing: 5, children: [
                                for (int i = 0;
                                    i < tickets.tickets!.length;
                                    i++)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ResultBadge(
                                      value:
                                          tickets.tickets![i].number.toString(),
                                      win: tickets.tickets![i].winner!,
                                    ),
                                  )
                              ]),
                            ));
                      }),
                    )
                  ],
                ),
              );
            }),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
