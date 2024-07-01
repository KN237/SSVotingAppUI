import 'package:flutter/material.dart';
import 'package:secret_story/data.dart';
import 'package:secret_story/modeles/vote.dart';

class CircleImageStack extends StatelessWidget {
  const CircleImageStack({super.key, required this.candidats});
  final List<CandidatVote> candidats;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 15,
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
                        image: AssetImage(
                            'assets/images/${dummyData.values.where((element) => element.id == candidats[0].candidatId).first.id}.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        for (var i = 1; i < candidats.length; i++)
          Padding(
            padding: EdgeInsets.only(left: 20 * i.toDouble()),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 15,
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
                            image: AssetImage(
                                'assets/images/${dummyData.values.where((element) => element.id == candidats[i].candidatId).first.id}.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
