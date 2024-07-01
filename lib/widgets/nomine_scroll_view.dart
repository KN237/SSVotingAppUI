import 'package:flutter/material.dart';
import 'package:secret_story/data.dart';
import 'package:secret_story/modeles/candidat.dart';
import 'package:secret_story/widgets/card_candidat.dart';

class NomineScrollView extends StatefulWidget {
  const NomineScrollView(
      {super.key,
      required this.cardChoice,
      required this.nomines,
      required this.onCardClic});
  final List<String> nomines;
  final String cardChoice;
  final void Function(String choice) onCardClic;
  @override
  State<NomineScrollView> createState() => _NomineScrollViewState();
}

class _NomineScrollViewState extends State<NomineScrollView> {
  @override
  Widget build(BuildContext context) {
    int myIndex = 0;
    int tmp = 0;
    return SizedBox(
      height: 250 * (widget.nomines.length / 2).ceilToDouble(),
      child: ListView.builder(
        itemCount: (widget.nomines.length / 2).ceil(),
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          List<Candidat> candidatsNomines = dummyData.values.where(
            (element) {
              return widget.nomines.contains(element.id);
            },
          ).toList();

          if ((myIndex + 1) < widget.nomines.length) {
            tmp = myIndex;
            myIndex = myIndex + 2;
            int test = tmp;
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CardCandidat(
                  candidat: candidatsNomines[test],
                  cardChoice: widget.cardChoice,
                  editChoice: () {
                    setState(() {
                      widget.onCardClic(candidatsNomines[test].id);
                    });
                  },
                ),
                CardCandidat(
                  candidat: candidatsNomines[test + 1],
                  cardChoice: widget.cardChoice,
                  editChoice: () {
                    setState(() {
                      widget.onCardClic(candidatsNomines[test + 1].id);
                    });
                  },
                ),
              ],
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardCandidat(
                  candidat: candidatsNomines[myIndex],
                  cardChoice: widget.cardChoice,
                  editChoice: () {
                    widget.onCardClic(candidatsNomines[myIndex].id);
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
