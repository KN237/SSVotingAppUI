import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/data.dart';
import 'package:secret_story/widgets/gradient_text.dart';

class CircleCandidat extends StatelessWidget {
  const CircleCandidat({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: const AssetImage('assets/images/bg.png'),
          child: Stack(
            children: [
              Container(
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/${'${1000 + index}'}.png'),
                  ),
                ),
              ),
              !dummyData['${1000 + index}']!.isActive
                  ? Container(
                      width: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
        GradientText(
          dummyData['${1000 + index}']!.prenom.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          gradient: const LinearGradient(
              colors: [orangeFonce2, orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        )
      ],
    );
  }
}
