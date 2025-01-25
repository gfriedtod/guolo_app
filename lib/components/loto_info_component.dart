import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/models/lottery_entity.dart';

import '../material/colors.dart';

class LotoInfoView extends StatelessWidget {
  final LotteryEntity lotteryEntity;
   LotoInfoView({required this.lotteryEntity});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text(
          '${lotteryEntity.cashPrize } FCFA',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: GuoloColors.primaryColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
            width: size.width * 0.5,
            decoration: const BoxDecoration(
              color: GuoloColors.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child:  Padding(
              padding: EdgeInsets.all(8.0),
              child: FittedBox(
                child: Row(
                  children: [
                    Icon(
                      LucideIcons.calendar,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${lotteryEntity.startedDate}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      LucideIcons.clock_8,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${lotteryEntity.hour}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )
                  ],
                ),
              ),
            )),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Bingo Millions',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        ),
      ],
    );
  }
}
