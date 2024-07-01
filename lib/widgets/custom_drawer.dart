import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/widgets/card_paint.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String selectedMenu = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey,
      // margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      width: MediaQuery.of(context).size.width / 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.3,
              child: CustomPaint(
                painter: CardPaint(),
                size: Size(
                    double.infinity, MediaQuery.of(context).size.height / 2.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMenu = 'acceuil';
                        });
                        Navigator.of(context).pushNamed('home');
                      },
                      child: Text(
                        'ACCEUIL',
                        style: TextStyle(
                            color: selectedMenu == 'acceuil'
                                ? rougeBordeau
                                : Colors.white,
                            fontFamily: 'sans-serif',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    addVerticalSpace(20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMenu = 'compte';
                        });
                        Navigator.of(context).pushNamed('registration');
                      },
                      child: Text(
                        'MON COMPTE',
                        style: TextStyle(
                            color: selectedMenu == 'compte'
                                ? rougeBordeau
                                : Colors.white,
                            fontFamily: 'sans-serif',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    addVerticalSpace(20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMenu = 'invite';
                        });
                      },
                      child: Text(
                        'INVITEZ VOS AMI.E.S',
                        style: TextStyle(
                            color: selectedMenu == 'invite'
                                ? rougeBordeau
                                : Colors.white,
                            fontFamily: 'sans-serif',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    addVerticalSpace(20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMenu = 'votes';
                        });
                        Navigator.of(context).pushNamed('votes');
                      },
                      child: Text(
                        'LES VOTES PRÉCÉDENTS',
                        style: TextStyle(
                            color: selectedMenu == 'votes'
                                ? rougeBordeau
                                : Colors.white,
                            fontFamily: 'sans-serif',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Retrouvez ',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'sans-serif',
                        color: rougeBordeau,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Secret Story Afrique',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'sans-serif',
                        color: orangeFonce2,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' sur',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'sans-serif',
                        color: rougeBordeau,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              addVerticalSpace(05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/logoCanalPOP.png',
                    width: 100,
                  ),
                  Container(
                    color: Colors.black26,
                    width: 1,
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/logo-24-24.png',
                    width: 100,
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Règlement',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'sans-serif',
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Mentions légales',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'sans-serif',
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Text(
                  'Powered by3W',
                  style: TextStyle(
                      color: rougeBordeau,
                      fontSize: 12,
                      fontFamily: 'sans-serif',
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
