import 'package:flutter/material.dart';

class DashedDividerPainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpace;

  DashedDividerPainter({
    required this.color,
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final double width = size.width;
    final double height = size.height;

    double startX = 0.0;
    while (startX < width) {
      canvas.drawLine(
        Offset(startX, height / 2),
        Offset(startX + dashWidth, height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DashedDivider extends StatelessWidget {
  final Color color;
  final double dashWidth;
  final double dashSpace;

  const DashedDivider({
    super.key,
    this.color = Colors.black,
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedDividerPainter(
        color: color,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
      ),
      size: const Size(double.infinity, 2.0), // Height of the divider
    );
  }
}
