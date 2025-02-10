import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/material/environement_path.dart';
import 'package:guolo_app/models/lottery_entity.dart';
import 'package:guolo_app/pages/playing_page/playing_page.dart';
import 'package:guolo_app/services/lottery/lottery_bloc.dart';
import 'package:guolo_app/services/lottery/lottery_bloc.dart';

class GamePageView extends StatelessWidget {
  const GamePageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    context.read<LotteryBloc>().add(LotteryEvent.started());

    return BlocConsumer<LotteryBloc, LotteryState>(listener: (context, state) {
      state.map(
          initial: (_) {},
          loading: (_) {},
          error: (value) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(value.error)));
          },
          success: (_) {});
    }, builder: (context, state) {
      return RefreshIndicator(
          onRefresh: () async {
            context.read<LotteryBloc>().add(LotteryEvent.started());
          },
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                height: size.height * 0.72,
                child: state.maybeWhen(
                    success: (lotteries) =>
                        lotteries.length > 0 ?
                        ListView.builder(
                        itemCount: lotteries.length,
                        itemBuilder: (context, index) {
                          return PlayCard(
                            lotteryEntity: lotteries[index],
                          );
                        }) : SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                    loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    orElse: () => SizedBox.shrink()),
              ),
            ]),
          ));
    });
  }
}

class PlayCard extends StatelessWidget {
  final LotteryEntity lotteryEntity;
  const PlayCard({
    super.key,
    required this.lotteryEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Icon(
                      LucideIcons.calendar,
                      color: Colors.grey,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      lotteryEntity.startedDate!,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      LucideIcons.clock_8,
                      color: Colors.grey,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      lotteryEntity.hour ?? '10H00',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )
                  ],
                ),
                const Spacer(),
                Wrap(
                  children: [

                    Text(
                      '${lotteryEntity.tickets!.first.price ?? '10'} par ticket FCFA',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ],
                ),


              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  '${EnvironementPath.images}bingo.png',
                  width: 80,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  lotteryEntity.name!.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                )
              ],
            ),
            Text(
              '${lotteryEntity.cashPrize.toString()} FCFA',
              style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: GuoloColors.primaryColor),
            ),
            const SizedBox(
              height: 10,
            ),
            LayoutBuilder(builder: (context, constraint) {
              return ButtonComponentView(
                elevation: 0,
                width: constraint.maxWidth * 0.35,
                title: 'Jouer',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlayingPageView(
                                lotteryEntity: lotteryEntity,
                              )));
                },
                height: 30,
              );
            }),
            const SizedBox(
              height: 20,
            )
          ]),
        ));
  }
}
