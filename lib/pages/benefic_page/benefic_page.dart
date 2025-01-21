import 'package:flutter/material.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/components/simple_app_bar.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/material/environement_path.dart';

class BeneficPageView extends StatelessWidget {
  const BeneficPageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CommonScaffold(
      appBar: SimpleAppBar(title: 'Voir le resultat'),
      body: Center(
        child: SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (true)
                  ? const Expanded(
                      child: Column(children: [
                        Flexible(
                          child: Text(
                            'Felicitationnnnn!!!!!!!!!!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Text(
                          ' vous avez gagner au',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(' Bingo Millions',
                            style: TextStyle(
                              color: GuoloColors.primaryColor,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            )),
                      ]),
                    )
                  : const Expanded(
                      child: Column(children: [
                        Flexible(
                          child: Text(
                            'opssssssssssssssssss',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Text(
                          ' vous avez perdu votre pari',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ]),
                    ),
              Image.asset(
                '${EnvironementPath.images}ilustration.png',
                height: size.height * 0.4,
              ),
              (true)
                  ? const Expanded(
                      child: Column(
                        children: [
                          Flexible(
                            child: Text('Vous avez',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                          Text('140.000.000 FCFA',
                              style: TextStyle(
                                  color: GuoloColors.primaryColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  : const Expanded(
                      child: Column(
                        children: [
                          Flexible(
                            child: Text('Vous avez perdu',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                          Text('140.000.000 FCFA',
                              style: TextStyle(
                                  color: GuoloColors.primaryColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
