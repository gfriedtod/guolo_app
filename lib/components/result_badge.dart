import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

import '../material/colors.dart';

class ResultBadge extends StatelessWidget {
  const ResultBadge({
    super.key,
    required this.value,
    required this.win,
  });

  final String value;
  final bool win;

  @override
  Widget build(BuildContext context) {
    return Badge(
      isLabelVisible: win,
      backgroundColor: GuoloColors.primaryLightColor,
      label: const FittedBox(
          child: Icon(LucideIcons.check,
              color: GuoloColors.primaryColor, size: 10, weight: 80)),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: GuoloColors.primaryColor,
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
      ),
    );
  }
}
