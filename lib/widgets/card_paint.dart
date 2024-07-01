import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';

class CardPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = orange;

    Path path = Path()
      ..lineTo(size.width * 1, 0)
      ..lineTo(size.width * 1, 0)
      ..lineTo(size.width * 1, 0)
      //..lineTo(size.width * .6, size.height * .6)
      ..lineTo(size.width * 1, size.height - 50)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
