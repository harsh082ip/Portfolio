import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lineStart = Offset(size.height * 0.99, 0);
    final lineEnd = Offset(size.width * 0.45, size.height);

    final topIntersection = lineStart;
    final bottomIntersection = Offset(
      lineEnd.dx +
          (lineStart.dy - lineEnd.dy) /
              (lineEnd.dx - lineStart.dx) *
              (size.height - lineEnd.dy),
      size.height,
    );
    final leftIntersection = Offset(
      0,
      lineStart.dy +
          (lineEnd.dx - lineStart.dx) /
              (lineEnd.dy - lineStart.dy) *
              (-lineStart.dx),
    );
    final rightIntersection = lineEnd;

    Path leftPath = Path()
      ..moveTo(0, 0)
      ..lineTo(leftIntersection.dx * 0.92, leftIntersection.dy * 38)
      ..lineTo(topIntersection.dx, topIntersection.dy)
      ..lineTo(0, 0);

    Path rightPath = Path()
      ..moveTo(size.width * 0.52, 0)
      ..lineTo(rightIntersection.dx, rightIntersection.dy)
      ..lineTo(bottomIntersection.dx, bottomIntersection.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);

    canvas.drawPath(leftPath, Paint()..color = Colors.white);
    canvas.drawPath(rightPath, Paint()..color = Colors.black);
    // canvas.drawPath(
    //     rightPath, Paint()..color = Color.fromARGB(255, 58, 239, 197));
    // canvas.drawLine(lineStart, lineEnd, Paint()..color = Colors.black);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
