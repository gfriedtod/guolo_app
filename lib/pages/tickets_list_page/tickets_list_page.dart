import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/models/lottery_entity.dart';
import 'package:guolo_app/models/ticket_entity.dart';
import 'package:guolo_app/repositorys/ticket_repository.dart';
import '../../components/result_badge.dart';
import '../../material/colors.dart';
import '../../models/lottery_ticket_entity.dart';
import '../../services/ticket/ticket_bloc.dart';

class TicketsListPageView extends StatelessWidget {
  final List<TicketEntity> tickets;

  const TicketsListPageView({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => TicketBloc(
          ticketRepository:
              RepositoryProvider.of<TicketRepository>(context))
        ..add(TicketEvent.fetchStory()),
      child: RefreshIndicator(
        onRefresh: ()  async {
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
                          // height: size.height*0.9,
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
                              : Column(
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

  Widget winner(){
    switch(tickets.lotterieDto?.status){
      case 'created':
        return Text("en cours",style: TextStyle(fontWeight: FontWeight.bold,color: GuoloColors.primaryColor));
      case 'ended':
        for(int i = 0; i < tickets.tickets!.length; i++){
          if(tickets.tickets![i].winner == true){
            return Flexible(child: Text("felicitation 😊", style: TextStyle(fontWeight: FontWeight.bold,color: GuoloColors.primaryColor),));
          }
        }
        return Text("vous avez perdu 😓", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red));
      default:
        return Text("en cours", style: TextStyle(fontWeight: FontWeight.bold,color: GuoloColors.primaryColor));
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        winner(),
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
                              )
                              ,
                            ]),
                          ],
                        ),
                      ],
                    ),
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
