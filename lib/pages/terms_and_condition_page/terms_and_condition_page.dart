import 'package:flutter/material.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/material/colors.dart';

class TermsAndConditionPageView extends StatelessWidget {
  const TermsAndConditionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: size.width * 0.9,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'TERMS ET CONDITIONS',
                style: TextStyle(
                    color: GuoloColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Text(
                  '1. TERMS ET CONDITIONS STATUS ET ACCEPTATIONS',
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(color: Colors.white60),
              ),
              SizedBox(
                height: 20,
              ),
              FittedBox(
                child: Text(
                  '2. DEFINITION',
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
