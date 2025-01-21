import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guolo_app/components/app_bar_component.dart';
import 'package:guolo_app/components/bell.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/components/profile.dart';
import 'package:guolo_app/components/simple_app_bar.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/material/environement_path.dart';
import 'package:guolo_app/pages/history_page/history_page.dart';
import 'package:guolo_app/pages/game_page/game_page.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';
import 'package:guolo_app/pages/profile_page/profile_page.dart';
import 'package:guolo_app/pages/terms_and_condition_page/terms_and_condition_page.dart';
import 'package:guolo_app/pages/tickets_list_page/tickets_list_page.dart';

import '../pages/login_page/login_page.dart';

class CommonScaffold extends StatefulWidget {
  Widget? body;
  Widget? appBar;
  int? index;

  CommonScaffold({super.key, this.body, this.appBar, this.index});

  @override
  State<CommonScaffold> createState() => _CommonScaffoldState();
}

class _CommonScaffoldState extends State<CommonScaffold> {
  final Widget homePageview = HomePageView();
  final List<Map<String, dynamic>> pages = [
    {'page': const GamePageView(), 'appBar': null},
    {
      'page': const TicketsListPageView(tickets: [],),
      'appBar': SimpleAppBar(
        title: 'Mes Tickets',
        destination: HomePageView(),
      )
    },
    {
      'page': ProfilePageView(),
      'appBar': SimpleAppBar(
        title: 'Profile',
        destination: HomePageView(),
      )
    },
    {
      'page': TermsAndConditionPageView(),
      'appBar': SimpleAppBar(
        title: 'Conditions d\'utilisation',
        destination: HomePageView(),
      )
    }
  ];
  late List<int> currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = [widget.index ?? 0];
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GuoloColors.secondaryColor,
      bottomNavigationBar: NavigationBar(
        overlayColor: MaterialStateProperty.all(GuoloColors.secondaryColor),
        indicatorColor: GuoloColors.secondaryColor,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: GuoloColors.primaryColor,
        selectedIndex: currentIndex.first,
        onDestinationSelected: (int index) {
          setState(() {
            if (Navigator.canPop(context)) {
              // Navigator.popUntil(context, (route) => r);
            }
            widget.body = null;
            currentIndex.first = index;
          });
        },
        destinations: [
          NavigationDestination(
              // icon: Icon(LucideIcons.play, color: Colors.white),
              icon: SvgPicture.asset(
                '${EnvironementPath.images}Jeux.svg',
                color: Colors.white,
                height: 25,
              ),
              label: 'Jouer'),
          NavigationDestination(
              icon: Icon(
                LucideIcons.chart_bar,
                color: Colors.white,
              ),
              label: 'Resultat'),
          NavigationDestination(
              icon: Icon(
                LucideIcons.user,
                color: Colors.white,
              ),
              label: 'profile'),
          NavigationDestination(
              icon: Icon(
                LucideIcons.message_square,
                color: Colors.white,
              ),
              label: 'chat')
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff1b301b),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: LayoutBuilder(builder: (context, constraint) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      (!true)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.5,
                                  child: Column(
                                    children: [
                                      ButtonComponentView(
                                        height: 40,
                                        title: 'S\'incrire',
                                        onPressed: () {},
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      ButtonComponentView(
                                        height: 40,
                                        title: 'Se connecter',
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: double.infinity,
                                  child: Divider(
                                    thickness: 0.5,
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(
                              height: 160,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Profile(),
                                      Text(
                                        "Wayou G. wilfried",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Divider(
                                      thickness: 0.5,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "votre solde",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      LayoutBuilder(
                                          builder: (context, constraint) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "10.000 fcfa",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                  color: GuoloColors
                                                      .primaryLightColor),
                                            ),
                                            SizedBox(
                                              width: constraint.maxWidth * 0.5,
                                              child: ButtonComponentView(
                                                height: 30,
                                                title: 'Recharge',
                                                onPressed: () {},
                                              ),
                                            )
                                          ],
                                        );
                                      })
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                );
              }),
            ),
            Column(
              children: [
                (!false)
                    ? Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);

                              setState(() {
                                widget.body = null;
                                currentIndex.first = 2;
                              });
                            },
                            minVerticalPadding: 0,
                            title: const Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Divider(
                                    thickness: 0.5,
                                  ),
                                ),
                                DrawerMenu(
                                  icon: Icon(
                                    LucideIcons.user,
                                    color: GuoloColors.primaryColor,
                                  ),
                                  label: 'Mon profile',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);

                              setState(() {
                                widget.body = null;
                                currentIndex.first = 0;
                              });
                            },
                            minVerticalPadding: 0,
                            title: DrawerMenu(
                              icon: SvgPicture.asset(
                                '${EnvironementPath.images}Jeux.svg',
                                color: GuoloColors.primaryColor,
                                height: 25,
                              ),
                              label: 'Jouer',
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              setState(() {
                                widget.body = null;
                                Navigator.pop(context);
                                currentIndex.first = 1;
                              });
                            },
                            minVerticalPadding: 0,
                            title: const DrawerMenu(
                              icon: Icon(
                                LucideIcons.ticket,
                                color: GuoloColors.primaryColor,
                              ),
                              label: 'Mes tickets',
                            ),
                          ),
                          const ListTile(
                            minVerticalPadding: 0,
                            title: DrawerMenu(
                              icon: Icon(
                                LucideIcons.send_to_back,
                                color: GuoloColors.primaryColor,
                              ),
                              label: 'Mes transactions',
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HistoryPage()));
                            },
                            minVerticalPadding: 0,
                            title: const DrawerMenu(
                              icon: Icon(
                                LucideIcons.clock_3,
                                color: GuoloColors.primaryColor,
                              ),
                              label: 'Mon historique',
                            ),
                          ),
                          ListTile(
                            minVerticalPadding: 0,
                            title: DrawerMenu(
                              icon: Bell(
                                color: GuoloColors.primaryColor,
                              ),
                              label: 'Notification',
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
                ListTile(
                  onTap: () {
                    setState(() {
                      widget.body = null;
                      Navigator.pop(context);
                      currentIndex.first = 3;
                    });
                  },
                  minVerticalPadding: 0,
                  title: const DrawerMenu(
                    icon: Icon(
                      LucideIcons.file_archive,
                      color: GuoloColors.primaryColor,
                    ),
                    label: 'Terms et condition',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: (!false)
                  ? InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPageView()));
                      },
                      child: _DeconectionComp())
                  : SizedBox.shrink(),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: GuoloColors.primaryColor,
        leadingWidth: double.infinity,
        leading: Builder(builder: (context) {
          return pages[currentIndex.first]['appBar'] ??
              const AppBarComponentView();
        }),
      ),
      body: (widget.body ?? pages[currentIndex.first]['page']),
    );
  }
}

class _DeconectionComp extends StatelessWidget {
  const _DeconectionComp();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          LucideIcons.log_out,
          color: GuoloColors.primaryLightColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Deconexion',
          style: TextStyle(
              color: GuoloColors.primaryLightColor,
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

class DrawerMenu extends StatelessWidget {
  final String label;
  final Widget icon;
  const DrawerMenu({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(
          width: double.infinity,
          child: Divider(
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
