import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/data.dart';
import 'package:secret_story/modeles/candidat.dart';
import 'package:secret_story/modeles/vote.dart';
import 'package:secret_story/widgets/card_candidat.dart';
import 'package:secret_story/widgets/score.dart';

class VoteDetail extends StatefulWidget {
  const VoteDetail({super.key, required this.vote});
  final Vote vote;
  @override
  State<VoteDetail> createState() => _VoteDetailState();
}

class _VoteDetailState extends State<VoteDetail> {
  List<String> nomines = [];

  double get max {
    List temp = [];
    for (var candidat in widget.vote.candidats) {
      temp.add(candidat.pourcentage);
    }
    return temp.reduce((curr, next) => curr > next ? curr : next);
  }

  @override
  Widget build(BuildContext context) {
    int myIndex = 0;
    int tmp = 0;
    String winnerId = widget.vote.candidats
        .where((element) => element.pourcentage == max)
        .first
        .candidatId;
    String winner = dummyData.values
        .where((element) => element.id == winnerId)
        .first
        .prenom;

    for (var candidat in widget.vote.candidats) {
      nomines.add(candidat.candidatId);
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            grey,
            grey.withOpacity(0.2),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              addVerticalSpace(100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'LE PUBLIC A CHOISI',
                    textAlign: TextAlign.center,
                    style: body1,
                  ),
                  Text(
                    ' ${winner.toUpperCase()}',
                    textAlign: TextAlign.center,
                    style: body1.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              addVerticalSpace(30),
              SizedBox(
                height: 300 * (nomines.length / 2).ceilToDouble(),
                child: ListView.builder(
                  itemCount: (nomines.length / 2).ceil(),
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    List<Candidat> candidatsNomines = dummyData.values.where(
                      (element) {
                        return nomines.contains(element.id);
                      },
                    ).toList();

                    if ((myIndex + 1) < nomines.length) {
                      tmp = myIndex;
                      myIndex = myIndex + 2;
                      int test = tmp;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Score(
                                isWinner: winnerId == candidatsNomines[test].id
                                    ? true
                                    : false,
                                score: widget.vote.candidats
                                    .where((element) =>
                                        element.candidatId ==
                                        candidatsNomines[test].id)
                                    .first
                                    .pourcentage,
                              ),
                              CardCandidat(
                                candidat: candidatsNomines[test],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Score(
                                isWinner:
                                    winnerId == candidatsNomines[test + 1].id
                                        ? true
                                        : false,
                                score: widget.vote.candidats
                                    .where((element) =>
                                        element.candidatId ==
                                        candidatsNomines[test + 1].id)
                                    .first
                                    .pourcentage,
                              ),
                              CardCandidat(
                                candidat: candidatsNomines[test + 1],
                              ),
                            ],
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Score(
                            isWinner: winnerId == candidatsNomines[myIndex].id
                                ? true
                                : false,
                            score: widget.vote.candidats
                                .where((element) =>
                                    element.candidatId ==
                                    candidatsNomines[myIndex].id)
                                .first
                                .pourcentage,
                          ),
                          CardCandidat(
                            candidat: candidatsNomines[myIndex],
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
              addVerticalSpace(40),
            ],
          ),
        ),
      ),
    );
  }
}
