import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

import '../material/colors.dart';

class Bell extends StatelessWidget {
  Color? color;
  Bell({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Badge(
      backgroundColor: GuoloColors.secondaryColor,
      label: const Text(
        '2',
        style: TextStyle(color: Colors.white),
      ),
      child: Icon(
        LucideIcons.bell,
        color: color ?? Colors.white,
      ),
    );
  }
}
