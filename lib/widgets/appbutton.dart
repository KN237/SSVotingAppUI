import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key, required this.method, required this.title, this.cardChoice});
  final String? cardChoice;
  final String title;
  final void Function() method;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: method,
      style: cardChoice.toString().trim().isNotEmpty
          ? ElevatedButton.styleFrom(backgroundColor: orange)
          : ElevatedButton.styleFrom(backgroundColor: Colors.grey),
      child: Text(
        title,
        style: const TextStyle(
            fontFamily: 'sans-serif',
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
