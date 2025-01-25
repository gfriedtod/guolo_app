import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/pages/take_your_money_page/take_your_money_page.dart';

import '../../components/result_badge.dart';
import '../../components/simple_app_bar.dart';
import '../../models/ticket_entity.dart';

class ResultDetailsPageView extends StatelessWidget {

  final List<TicketEntity> tickets;

  ResultDetailsPageView({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CommonScaffold(
      appBar: SimpleAppBar(title: 'Voir le resultat'),
      body: Center(
        child: SizedBox(
          width: size.width * 0.85,
          child: Column(
            children: [
              SizedBox(
                height: size.width * 0.1,
              ),
              _Ticket(size: size, tickets: tickets),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Choisir le mode de payement',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.3,
              ),
              ButtonComponentView(
                  width: size.width * 0.5,
                  height: 40,
                  title: 'Voir le resultat',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TakeMoneyPageView()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class _Ticket extends StatelessWidget {
  const _Ticket({
    required this.size,
    required this.tickets,
  });

  final Size size;
  final List<TicketEntity> tickets;

  @override
  Widget build(BuildContext context) {
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
                      children: [
                        Icon(
                          LucideIcons.calendar,
                          weight: 4,
                        ),
                        Text(
                          '${tickets[0].lotterie?.startedDate}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text( '${tickets[0].lotterie?.name}',
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                        Text('${tickets[0].lotterie?.cashPrize} FCFA',
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
                            width: cons.maxWidth,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: cons.maxWidth * 0.9,
                                  child: const Row(
                                    children: [
                                      Text('Ticket 1',
                                          style: TextStyle(
                                              color: Color(0xc2795548),
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                FittedBox(
                                  child: Wrap(
                                      spacing: 4,
                                      runSpacing: 5,
                                      children: [
                                        for (int i = 0; i < tickets.length; i++)
                                          ResultBadge(
                                            value: tickets[i].number,
                                            win: false,
                                          )
                                      ]),
                                ),
                              ],
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
