import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/components/profile.dart';
import 'package:guolo_app/material/environement_path.dart';

import 'bell.dart';

class AppBarComponentView extends StatelessWidget {
  const AppBarComponentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(LucideIcons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),

          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: SizedBox(
              child: Image(
                  image: AssetImage('${EnvironementPath.images}bull-logo.png')),
            ),
          ),
          (true)
              ? Row(
                  children: [
                    const Profile(),
                    const SizedBox(
                      width: 10,
                    ),
                    Bell(),
                  ],
                )
              : const SizedBox.shrink(),
          // const SizedBox.shrink(),
        ],
      ),
    );
  }
}
