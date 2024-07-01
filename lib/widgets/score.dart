import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';

class Score extends StatelessWidget {
  const Score({super.key, required this.score, required this.isWinner});
  final double score;
  final bool isWinner;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: isWinner == true
              ? const LinearGradient(
                  colors: [orangeFonce2, orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)
              : null,
          color: isWinner == false ? Colors.white.withOpacity(0.7) : null),
      child: Center(
        child: Text(
          '$score%',
          style: TextStyle(
              fontFamily: 'sans-serif',
              color: isWinner == true ? Colors.white : rougeBordeau,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
