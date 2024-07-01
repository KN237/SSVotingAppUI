import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';

class TimerTitle extends StatelessWidget {
  const TimerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.timer_outlined,
          color: orange,
          size: 17,
        ),
        addHorizontalSpace(05),
        const Text(
          'Fin du vote',
          style: TextStyle(
              fontFamily: 'sans-serif',
              fontSize: 14,
              color: orange,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
