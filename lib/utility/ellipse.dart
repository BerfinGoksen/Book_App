import 'package:flutter/material.dart';

class EllipsePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Elips çizmek için bir boya (Paint) tanımlıyoruz
    final paint = Paint()
      ..color = Colors.blue // Elipsin rengi
      ..style = PaintingStyle.fill; // Dolgu stilini ayarlıyoruz

    // Elips çizmek için bir dikdörtgen alanı tanımlıyoruz
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Elipsi çiziyoruz
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
