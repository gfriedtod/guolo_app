import 'package:flutter/material.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/components/loto_info_component.dart';
import 'package:guolo_app/components/simple_app_bar.dart';
import 'package:guolo_app/pages/benefic_page/benefic_page.dart';

import '../../material/colors.dart';

class TakeMoneyPageView extends StatelessWidget {
  final List<String> tickets = ['10', '20', '5', '4', '6'];

  final List<String> winTicket = ['10', '20', '7', '4', '2'];
  TakeMoneyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CommonScaffold(
      appBar: SimpleAppBar(title: 'Payement'),
      body: Center(
        child: SizedBox(
          width: size.width * 0.85,
          child: Column(children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            // const LotoInfoView(),
            SizedBox(
              height: size.height * 0.05,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Numero Selectionés',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.brown,
                            fontStyle: FontStyle.italic),
                      ),
                      LayoutBuilder(builder: (context, cons) {
                        return Container(
                          width: cons.maxWidth * 0.8,
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                              height: size.height * 0.07,
                              child: FittedBox(
                                child:
                                    Wrap(spacing: 4, runSpacing: 5, children: [
                                  for (int i = 0; i < tickets.length; i++)
                                    _Result(
                                      value: tickets[i],
                                      win: false,
                                    )
                                ]),
                              )),
                        );
                      }),
                      const Text(
                        'Numero du tirage',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.brown,
                            fontStyle: FontStyle.italic),
                      ),
                      LayoutBuilder(builder: (context, cons) {
                        return Container(
                          width: cons.maxWidth * 0.8,
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                              width: cons.maxWidth * 0.85,
                              height: size.height * 0.07,
                              child: FittedBox(
                                child:
                                    Wrap(spacing: 4, runSpacing: 5, children: [
                                  ...tickets
                                      .where((element) =>
                                          winTicket.contains(element))
                                      .map((e) => _Result(
                                            value: e,
                                            win: true,
                                          ))
                                      .toList(),
                                ]),
                              )),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Total: 1000 FCFA',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: size.height * 0.12,
            ),
            ButtonComponentView(
                height: 40,
                width: size.width * 0.4,
                title: 'Payer',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BeneficPageView()));
                })
          ]),
        ),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  const _Result({
    required this.value,
    required this.win,
  });

  final String value;
  final bool win;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: (win) ? GuoloColors.primaryColor : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          border: Border.all(
            color: Colors.brown,
            width: 0.5,
          )),
      child: Center(
        child: Text(
          value,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
