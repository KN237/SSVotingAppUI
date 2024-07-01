import 'package:flutter/material.dart';
import 'package:secret_story/data.dart';
import 'package:secret_story/screens/candidat_screen.dart';
import 'package:secret_story/widgets/circle_candidat.dart';

class CandidatScrollView extends StatelessWidget {
  const CandidatScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: dummyData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.all(05.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    CandidatScreen(candidat: dummyData['${1000 + index}']!),
              ),
            ),
            child: CircleCandidat(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
