import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/modeles/candidat.dart';
import 'package:secret_story/widgets/gradient_text.dart';
import 'package:locale_emoji_flutter/locale_emoji_flutter.dart';

class CandidatScreen extends StatelessWidget {
  const CandidatScreen({super.key, required this.candidat});
  final Candidat candidat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topLeft,
                      image: AssetImage('assets/images/${candidat.id}.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            addVerticalSpace(30),
            GradientText(
              candidat.prenom.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              gradient: const LinearGradient(
                  colors: [orangeFonce2, orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            Text(
              Locale(
                candidat.country.toLowerCase(),
                candidat.country.toUpperCase(),
              ).flagEmoji!,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: 'sans-serif',
                fontSize: 30,
                color: rougeBordeau,
              ),
            ),
            addVerticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 05,
                  backgroundColor:
                      candidat.isActive ? Colors.green : Colors.red,
                ),
                addHorizontalSpace(10),
                Text(
                  candidat.isActive ? 'TOUJOURS DANS L\'AVENTURE' : 'ÉLIMINÉ',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily: 'sans-serif',
                    fontSize: 15,
                    color: rougeBordeau,
                  ),
                ),
              ],
            ),
            addVerticalSpace(30),
            Text(
              candidat.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'sans-serif',
                color: rougeBordeau,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
