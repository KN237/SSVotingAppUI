import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/widgets/appbar_helper.dart';
import 'package:secret_story/widgets/appbutton.dart';
import 'package:secret_story/widgets/candidat_scroll_view.dart';
import 'package:secret_story/widgets/custom_drawer.dart';
import 'package:secret_story/widgets/gradient_text.dart';
import 'package:secret_story/widgets/nomine_scroll_view.dart';
import 'package:secret_story/widgets/timer_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _key = GlobalKey<ScaffoldState>();
  var date = DateTime(2024, 7, 05, 23, 00);
  var today = DateTime.now();
  List<String> nomines = ['1003', '1006', '1009', '1010'];
  String cardChoice = '';
  int days = 0;
  int hours = 0;
  int minutes = 0;
  int seconds = 0;

  void countDown() {
    if (seconds > 0) {
      setState(() {
        seconds--;
      });
    } else {
      if (minutes > 0) {
        setState(() {
          minutes--;
          seconds = 59;
        });
      } else {
        if (hours > 0) {
          setState(() {
            hours--;
            minutes = 59;
            seconds = 59;
          });
        } else {
          if (days > 0) {
            setState(() {
              days--;
              minutes = 59;
              hours = 59;
              seconds = 59;
            });
          }
        }
      }
    }
  }

  String numberFormatter(int num) {
    if (num < 10) {
      return '0${num.toString()[0]}';
    }

    return num.toString()[0] + num.toString()[1];
  }

  //late Timer myTimer;

  // @override
  // void initState() {
  //   days = date.difference(today).inDays;
  //   hours = (date.difference(today).inSeconds / 3600).floor();
  //   minutes = (date.difference(today).inMinutes % 60).floor();
  //   seconds = (date.difference(today).inSeconds % 60).floor();

  //   myTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     countDown();
  //   });

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      extendBodyBehindAppBar: true,
      extendBody: true,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: AppBarMenuButton(
          myKey: _key,
        ),
        backgroundColor: grey,
        title: const AppBarHeroLogo(),
        actions: const [
          AppBarAction(),
        ],
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        decoration: BoxDecoration(
          gradient: appBgGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              addVerticalSpace(100),
              const GradientText(
                'LE VOTE EN COURS',
                style: title1,
                gradient: appGradient,
              ),
              Container(
                width: 80,
                height: 2,
                color: orange,
              ),
              addVerticalSpace(30),
              const TimerTitle(),
              addVerticalSpace(10),
              Text(
                '$days Jour ${numberFormatter(hours)}:${numberFormatter(minutes)}:${numberFormatter(seconds)}',
                style: body1,
              ),
              addVerticalSpace(50),
              Text(
                'CHOISISSEZ LE CANDIDAT QUI VA CONTINUER L’AVENTURE',
                textAlign: TextAlign.center,
                style: body1.copyWith(fontWeight: FontWeight.w400),
              ),
              addVerticalSpace(30),
              NomineScrollView(
                  cardChoice: cardChoice,
                  nomines: nomines,
                  onCardClic: (choice) {
                    setState(() {
                      cardChoice = choice;
                    });
                  }),
              addVerticalSpace(40),
              AppButton(
                cardChoice: cardChoice,
                title: 'VALIDEZ VOTRE VOTE',
                method: () {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  cardChoice.trim().isNotEmpty
                      ? ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: orange,
                            content: Text(
                              'VOTRE VOTE A BIEN ÉTÉ ENREGISTRÉ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      : null;
                },
              ),
              addVerticalSpace(50),
              const GradientText(
                'DÉCOUVREZ LES CANDIDATS',
                style: title1,
                gradient: appGradient,
              ),
              addVerticalSpace(10),
              const CandidatScrollView(),
              addVerticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
