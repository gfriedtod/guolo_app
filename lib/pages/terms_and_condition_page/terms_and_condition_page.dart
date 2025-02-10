import 'package:flutter/material.dart';
import 'package:guolo_app/components/common_scaffold.dart';
import 'package:guolo_app/material/colors.dart';

class TermsAndConditionPageView extends StatelessWidget {
  const TermsAndConditionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GuoloColors.primaryColor,
        title: Text("Termes et conditions",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: size.width * 0.8,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: Text(
                        'TERMS ET CONDITIONS',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: GuoloColors.primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // FittedBox(
                    //   child: Text(
                    //     '1. TERMS ET CONDITIONS STATUS ET ACCEPTATIONS',
                    //     style: TextStyle(
                    //         color: Colors.lightGreen,
                    //         fontSize: 14,
                    //         fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '''TERMES ET CONDITIONS D'UTILISATION DE L'APPLICATION GUOLO CASH
              
              Dernière mise à jour : 22 janvier 2025 (Remplacez cette date par la date du jour à chaque mise à jour)
              
        1. Acceptation des Termes
              
              En téléchargeant, installant ou utilisant l'application mobile Guolo Cash (ci-après « l'Application »), vous acceptez d'être lié par les présents Termes et Conditions d'Utilisation (ci-après « les Termes »). Si vous n'acceptez pas ces Termes, veuillez ne pas utiliser l'Application.
              
        2. Admissibilité
              
              Vous devez être âgé d'au moins [Âge légal dans votre juridiction] ans pour utiliser l'Application.
              L'utilisation de l'Application peut être interdite ou restreinte dans certaines juridictions. Il est de votre responsabilité de vous assurer que l'utilisation de l'Application est légale dans votre lieu de résidence.
              Les employés de Guolo Cash, leurs familles proches et toute personne associée à la création ou à l'administration de l'Application peuvent être exclus de la participation.
             
        3. Compte Utilisateur
              
              Pour participer à certaines fonctionnalités de l'Application, vous devrez peut-être créer un compte utilisateur.
              Vous êtes responsable de la confidentialité de vos informations de compte, y compris votre mot de passe.   
              Vous acceptez de nous informer immédiatement de toute utilisation non autorisée de votre compte.   
              Nous nous réservons le droit de suspendre ou de résilier votre compte en cas de violation de ces Termes.   
        4. Participation aux Tirages
              
              L'achat de tickets de loterie via l'Application est soumis aux règles spécifiques de chaque tirage, qui seront disponibles dans l'Application.
              Les paiements pour les tickets de loterie sont effectués via [Méthodes de paiement acceptées – par exemple, Mobile Money, cartes bancaires, etc.].
              Les résultats des tirages seront publiés dans l'Application et sur [Autres plateformes de publication – par exemple, site web, réseaux sociaux].
              Les prix seront attribués conformément aux règles du tirage concerné.
        5. Responsabilité
              
              Nous ne sommes pas responsables des erreurs ou des omissions dans les informations relatives aux tirages.
              Nous ne sommes pas responsables des problèmes techniques liés à l'Application, tels que les interruptions de service, les erreurs de transmission ou les problèmes liés à la connexion internet de l'utilisateur.
              Notre responsabilité est limitée au prix d'achat des tickets de loterie.
             
         6. Propriété Intellectuelle
              
              L'Application et son contenu, y compris les textes, les graphiques, les logos et les logiciels, sont protégés par les lois sur la propriété intellectuelle. Vous n'êtes pas autorisé à copier, reproduire ou distribuer le contenu de l'Application sans notre autorisation écrite.
              
         7. Modifications des Termes
              
              Nous nous réservons le droit de modifier ces Termes à tout moment. Les modifications seront publiées dans l'Application et entreront en vigueur dès leur publication. Il est de votre responsabilité de consulter régulièrement les Termes.
              
         8. Loi Applicable et Juridiction
              
              Les présents Termes sont régis par les lois de [Juridiction – par exemple, Cameroun]. Tout litige découlant de l'utilisation de l'Application sera soumis à la juridiction exclusive des tribunaux de [Juridiction – par exemple, Yaoundé].
              
         9. Contact
              
              Pour toute question concernant ces Termes, veuillez nous contacter à 6 99 87 41 20 ''',
                      textAlign: TextAlign.justify,
      
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
