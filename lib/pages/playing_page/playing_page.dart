import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/models/lottery_entity.dart';
import 'package:guolo_app/pages/payed_tickets_page/payed_tickets_page.dart';
import 'package:guolo_app/repositorys/ticket_repository.dart';
import 'package:guolo_app/services/ticket/ticket_bloc.dart';

import '../../components/loto_info_component.dart';
import '../../material/colors.dart';

class PlayingPageView extends StatefulWidget {
  final LotteryEntity lotteryEntity;
  const PlayingPageView({super.key, required this.lotteryEntity});

  @override
  State<PlayingPageView> createState() => _PlayingPageViewState();
}

class _PlayingPageViewState extends State<PlayingPageView> {
  List<String> choices = [];
  List<List<String>> tickets = [];
  List<int> numberOfTicket = [1];
  int validated = 0;

  final List<Map<String, dynamic>> lotoNumbers = List.generate(
    20,
    (index) => {"id": index, "name": "${index + 1}"},
  ).toList();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CommonScaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              LotoInfoView(
                lotteryEntity: widget.lotteryEntity,
              ),
              const SizedBox(
                height: 20,
              ),
              // _GamePanel(
              //   lotoNumbers: lotoNumbers,
              //   choices: choices,
              // ),
              Text(
                "Selectioner le nombre de ticket desiré ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              SizedBox(
                  height: 300,
                  child: Image.asset('assets/images/illustration1.png')),

              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: size.width * 0.4,
                  child: _Incrementor(
                    numberOfTichet: numberOfTicket,
                  )),
              SizedBox(
                height: size.height * 0.08,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: LayoutBuilder(builder: (context, cons) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: cons.maxWidth * 0.45,
                          child: ButtonComponentView(
                              height: 40,
                              title: 'Retour',
                              onPressed: () {
                                Navigator.pop(context);
                              })),
                      BlocProvider(
                        create: (context) => TicketBloc(
                            ticketRepository:
                                RepositoryProvider.of<TicketRepository>(
                                    context)),
                        child: BlocConsumer<TicketBloc, TicketState>(
                          listener: (context, state) {
                            state.maybeWhen(
                                error: (val) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          content: Text(
                                    val,
                                    style: TextStyle(color: Colors.white),
                                  )));
                                },
                                success: (value) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PayedTicketPage(
                                                tickets: value,
                                                lotteryEntity:
                                                    widget.lotteryEntity,
                                              )));
                                },
                                orElse: () {});
                          },
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: SizedBox(
                                  width: cons.maxWidth * 0.45,
                                  child: Builder(builder: (context) {
                                    return state.maybeWhen(
                                        orElse: () => ButtonComponentView(
                                            height: 40,
                                            title: 'Valider',
                                            onPressed: () {
                                              context.read<TicketBloc>().add(
                                                  TicketEvent.getTicket(
                                                      widget.lotteryEntity.id!,
                                                      numberOfTicket.first));
                                            }),
                                        loading: () => ButtonComponentView(
                                            loading: true,
                                            height: 40,
                                            title: 'Valider',
                                            onPressed: () {}));
                                  })),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Incrementor extends StatefulWidget {
  List<int> numberOfTichet;
  _Incrementor({required this.numberOfTichet});

  @override
  State<_Incrementor> createState() => _IncrementorState();
}

class _IncrementorState extends State<_Incrementor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: GuoloColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (widget.numberOfTichet.first > 1) {
                    widget.numberOfTichet.first--;
                  }
                });
              },
              icon: const Icon(
                LucideIcons.minus,
                color: Colors.white,
              )),
          Text(
            (widget.numberOfTichet.first) > 9
                ? '${widget.numberOfTichet.first}'
                : '0${widget.numberOfTichet.first}',
            style: const TextStyle(color: Colors.white),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  widget.numberOfTichet.first++;
                });
              },
              icon: const Icon(
                LucideIcons.plus,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class _GamePanel extends StatefulWidget {
  final List<Map<String, dynamic>> lotoNumbers;
  List<String> choices;

  _GamePanel({required this.lotoNumbers, required this.choices});

  @override
  State<_GamePanel> createState() => _GamePanelState();
}

class _GamePanelState extends State<_GamePanel> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.88,
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Selectioner 05 numeros',
                        style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic)),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          widget.choices = [];
                        });
                      },
                      icon: const Icon(LucideIcons.rotate_ccw),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.27,
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              for (var i = 0; i <= 4; i++)
                                Number(
                                  myNumber: widget.lotoNumbers[i]["name"],
                                  choices: widget.choices,
                                ),
                            ],
                          ),
                          Row(
                            children: [
                              for (var i = 5; i <= 9; i++)
                                Number(
                                  myNumber: widget.lotoNumbers[i]["name"],
                                  choices: widget.choices,
                                ),
                            ],
                          ),
                          Row(
                            children: [
                              for (var i = 10; i < 15; i++)
                                Number(
                                  myNumber: widget.lotoNumbers[i]["name"],
                                  choices: widget.choices,
                                ),
                            ],
                          ),
                          Row(
                            children: [
                              for (var i = 15; i < 20; i++)
                                Number(
                                  myNumber: widget.lotoNumbers[i]["name"],
                                  choices: widget.choices,
                                ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // child: GridView.builder(
                //   padding: EdgeInsets.zero,
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 5,
                //     mainAxisSpacing: 5,
                //     crossAxisSpacing: 5,
                //   ),
                //   itemCount: widget.lotoNumbers.length,
                //   itemBuilder: (BuildContext ctx, int index) {
                //     return Number(
                //       myNumber: widget.lotoNumbers[index]["name"],
                //       choices: widget.choices,
                //     );
                //   },
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Number extends StatefulWidget {
  final String myNumber;
  final List<String> choices;
  const Number({super.key, required this.myNumber, required this.choices});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (widget.choices.contains(widget.myNumber)) {
        check = true;
      } else {
        check = false;
      }
    });
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        onTap: () {
          setState(() {
            if (widget.choices.contains(widget.myNumber)) {
              widget.choices.remove(widget.myNumber);
              check = false;
            }
            if (widget.choices.length <= 4) {
              check = true;
              widget.choices.add(widget.myNumber);
            }
          });
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: (check) ? GuoloColors.primaryColor : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(
                color: Colors.brown,
                width: 0.5,
              )),
          child: Center(
            child: Text(
              widget.myNumber,
              style: TextStyle(
                  fontSize: 18,
                  color: (check) ? Colors.white : GuoloColors.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
