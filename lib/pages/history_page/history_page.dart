import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/components/simple_app_bar.dart';

import '../../components/result_badge.dart';
import '../../material/colors.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});
  final List<String> tickets = ['10', '20', '5', '4', '6'];

  final List<String> winTicket = ['10', '20', '7', '4', '2'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CommonScaffold(
      appBar: SimpleAppBar(title: 'Historique'),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width * 0.9,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                _Ticket(size: size, tickets: tickets),
                _Ticket(size: size, tickets: tickets),
                _Ticket(size: size, tickets: tickets),
                _Ticket(size: size, tickets: tickets),
              ],
            ),
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
  final List<String> tickets;

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
                    const Row(
                      children: [
                        Icon(
                          LucideIcons.calendar,
                          weight: 4,
                        ),
                        Text(
                          'fev.2022.02',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(LucideIcons.clock_4, weight: 4),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '9H00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: cons.maxWidth,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Bingomillions',
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold)),
                          Text('140 000 000 FCFA',
                              style: TextStyle(
                                  color: GuoloColors.primaryColor,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: cons.maxWidth,
                      height: 100,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: GuoloColors.primaryColor, width: 1.5)),
                      child: LayoutBuilder(builder: (context, cons) {
                        return SizedBox(
                            width: cons.maxWidth * 0.85,
                            height: size.height * 0.07,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: cons.maxWidth * 0.85,
                                  child: const Row(
                                    children: [
                                      Text('composition gagnante',
                                          style: TextStyle(
                                              color: Color(0xC2795548),
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
                                            value: tickets[i],
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
