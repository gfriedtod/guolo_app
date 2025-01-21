import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';

class SimpleAppBar extends StatelessWidget {
  SimpleAppBar({super.key, required this.title, this.destination});

  final String title;
  Widget? destination;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              if (this.destination != null) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePageView()));
              } else {
                Navigator.pop(context);
              }
            },
            icon: const Icon(
              LucideIcons.arrow_left,
              color: Colors.white,
            )),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: size.width * 0.1,
        ),
      ],
    );
  }
}
