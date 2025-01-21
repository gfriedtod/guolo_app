import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/components/loto_info_component.dart';
import 'package:guolo_app/components/text_field_component.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/models/buy_ticket.dart';
import 'package:guolo_app/models/ticket_entity.dart';
import 'package:guolo_app/pages/tickets_list_page/tickets_list_page.dart';
import 'package:guolo_app/pages/view_result_details/view_result_details.dart';
import 'package:guolo_app/repositorys/ticket_repository.dart';
import 'package:guolo_app/services/ticket/ticket_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/lottery_entity.dart';
import '../../models/user.dart';

class ParieTypeOb {
  String type;
  bool value;

  ParieTypeOb({required this.type, required this.value});
}

class PayedTicketPage extends StatelessWidget {
  TextEditingController promoController = TextEditingController();
  List<bool> havePromo = [false];
  final List<TicketEntity> tickets;
  List<ParieTypeOb> parieTypes = [
    ParieTypeOb(type: 'Parie unique', value: false),
    ParieTypeOb(type: 'Abonement', value: true),
  ];
  LotteryEntity lotteryEntity;
  PayedTicketPage(
      {super.key, required this.tickets, required this.lotteryEntity});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CommonScaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              LotoInfoView(
                lotteryEntity: lotteryEntity,
              ),
              const SizedBox(
                height: 20,
              ),
              _TicketView(tickets: tickets),
              const SizedBox(
                height: 10,
              ),
              _ParieTypeListView(parieTypes: parieTypes),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: size.width * 0.9,
                child: _PromoField(
                  promoController: promoController,
                  havePromo: havePromo,
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              BlocProvider(
                create: (context) => TicketBloc(
                    ticketRepository:
                        RepositoryProvider.of<TicketRepository>(context)),
                child: BlocConsumer<TicketBloc, TicketState>(
                  listener: (context, state) {
                    // TODO: implement listener

                    state.maybeWhen(
                        orElse: () {},
                        error: (val) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                            val,
                            style: TextStyle(color: Colors.white),
                          )));
                        },
                        success: (val) {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => CommonScaffold(
                                        body: TicketsListPageView(tickets: val,),
                                        index: 1,
                                      )));
                        });
                  },
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        width: size.width * 0.7,
                        child: LayoutBuilder(builder: (context, cons) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ButtonComponentView(
                                width: cons.maxWidth * 0.45,
                                height: 40,
                                title: 'Retour',
                                onPressed: () => Navigator.pop(context),
                              ),
                              state.maybeWhen(
                                orElse: () => ButtonComponentView(
                                  width: cons.maxWidth * 0.45,
                                  height: 40,
                                  title: 'Payer',
                                  onPressed: () async {
                                    SharedPreferences pref =
                                        await SharedPreferences.getInstance();
                                    print(pref.getString('user'));
                                    User? user = User.fromJson(JsonDecoder()
                                        .convert(pref.getString('user')!));
                                    print(user);
                                    BuyTicket buyTicket = BuyTicket(
                                        user: user, ticketEntitys: tickets);
                                    context
                                        .read<TicketBloc>()
                                        .add(TicketEvent.buyTicket(buyTicket));
                                  },
                                ),
                                loading: () => ButtonComponentView(
                                  width: cons.maxWidth * 0.45,
                                  loading: true,
                                  height: 40,
                                  title: 'Payer',
                                  onPressed: () async {
                                    // SharedPreferences pref=  await SharedPreferences.getInstance();
                                    // User? user = User.fromJson(json.decode(pref.getString('user')!));
                                    // print(user);
                                    // BuyTicket buyTicket = BuyTicket(user: user, ticketEntitys: tickets);
                                    // context.read<TicketBloc>().add(TicketEvent.buyTicket(buyTicket));
                                  },
                                ),
                              )
                            ],
                          );
                        }),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _PromoField extends StatefulWidget {
  List<bool> havePromo;
  _PromoField({required this.promoController, required this.havePromo});

  final TextEditingController promoController;
  @override
  State<_PromoField> createState() => _PromoFieldState();
}

class _PromoFieldState extends State<_PromoField> {
  bool view = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              height: 20,
              child: CircleAvatar(
                  backgroundColor:
                      (!view) ? Colors.green : const Color(0x49c9c9cc),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        view = !view;
                        widget.havePromo.first = view;
                      });
                    },
                    icon: const Icon(
                      LucideIcons.check,
                      size: 10,
                    ),
                  )),
            ),
            const SizedBox(
              width: 2,
            ),
            const Text(
              'J\'ai un code promo',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldComponentView(
          enabled: view,
          controller: widget.promoController,
          labelText: 'Code promo',
        ),
      ],
    );
  }
}

class _ParieTypeListView extends StatefulWidget {
  const _ParieTypeListView({
    required this.parieTypes,
  });

  final List<ParieTypeOb> parieTypes;
  @override
  State<_ParieTypeListView> createState() => _ParieTypeListViewState();
}

class _ParieTypeListViewState extends State<_ParieTypeListView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * 0.85,
          height: 70,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ParieType(
                  type: widget.parieTypes[0].type,
                  value: widget.parieTypes[0].value,
                  choices: widget.parieTypes,
                  onToggle: () {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                _ParieType(
                  type: widget.parieTypes[1].type,
                  value: widget.parieTypes[1].value,
                  choices: widget.parieTypes,
                  onToggle: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ParieType extends StatefulWidget {
  final String type;
  bool value = false;
  List<ParieTypeOb> choices;
  final VoidCallback onToggle;
  _ParieType(
      {required this.type,
      required this.value,
      required this.choices,
      required this.onToggle});

  @override
  State<_ParieType> createState() => _ParieTypeState();
}

class _ParieTypeState extends State<_ParieType> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      widget.choices
          .where((element) => element.type == widget.type)
          .forEach((element) {
        widget.value = element.value;
      });
    });
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Type de pari',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    widget.type,
                    style: const TextStyle(
                        color: GuoloColors.primaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                  height: 20,
                  child: CircleAvatar(
                      backgroundColor: (widget.value)
                          ? Colors.green
                          : const Color(0x49c9c9cc),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            widget.onToggle();
                            widget.choices
                                .where((element) => element.type == widget.type)
                                .forEach((element) {
                              if (!element.value) {
                                element.value = !element.value;
                                widget.value = element.value;
                              }
                            });

                            widget.choices
                                .where((element) => element.type != widget.type)
                                .forEach((element) {
                              if (element.value) {
                                element.value = !element.value;
                              }
                            });
                          });
                        },
                        icon: const Icon(
                          LucideIcons.check,
                          size: 10,
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

class _TicketView extends StatelessWidget {
  const _TicketView({
    required this.tickets,
  });

  final List<TicketEntity> tickets;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      constraints: BoxConstraints(
        minHeight: size.height * 0.1,
        maxHeight: size.height * 0.18,
      ),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (contect, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    LayoutBuilder(builder: (context, cons) {
                      return SizedBox(
                        width: cons.maxWidth * 0.85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ticket ${index + 1}',
                                style: const TextStyle(
                                    color: Colors.brown,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold)),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(LucideIcons.rotate_ccw),
                            ),
                          ],
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    LayoutBuilder(builder: (context, cons) {
                      return SizedBox(
                          width: cons.maxWidth * 0.85,
                          height: size.height * 0.07,
                          child: FittedBox(
                            child: Wrap(spacing: 4, runSpacing: 5, children: [
                              for (int i = 0; i < tickets.length; i++)
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: GuoloColors.primaryColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      border: Border.all(
                                        color: Colors.brown,
                                        width: 0.5,
                                      )),
                                  child: Center(
                                    child: Text(
                                      '${tickets[i].number ?? '0'}',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                            ]),
                          ));
                    })
                  ],
                ),
              ),
            );
          }),
    );
  }
}
