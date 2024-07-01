import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/modeles/candidat.dart';
import 'package:secret_story/widgets/gradient_text.dart';

class CardCandidat extends StatefulWidget {
  const CardCandidat(
      {super.key, required this.candidat, this.cardChoice, this.editChoice});
  final Candidat candidat;
  final String? cardChoice;
  final void Function()? editChoice;

  @override
  State<CardCandidat> createState() => _CardCandidatState();
}

class _CardCandidatState extends State<CardCandidat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.editChoice,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.3,
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: widget.cardChoice == widget.candidat.id
                  ? const LinearGradient(
                      colors: [orangeFonce2, orange],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 200,
                  margin: widget.cardChoice == widget.candidat.id
                      ? const EdgeInsets.all(02)
                      : const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: widget.cardChoice == widget.candidat.id
                        ? grey
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/${widget.candidat.id}.png',
                    width: 170,
                  ),
                )
              ],
            ),
          ),
        ),
        GradientText(
          widget.candidat.prenom.toUpperCase(),
          style: const TextStyle(
              fontFamily: 'sans-serif',
              fontWeight: FontWeight.bold,
              fontSize: 20),
          gradient: const LinearGradient(
              colors: [orangeFonce2, orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        )
      ],
    );
  }
}
