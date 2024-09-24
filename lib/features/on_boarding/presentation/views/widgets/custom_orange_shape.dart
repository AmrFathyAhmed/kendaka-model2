// import 'package:flutter/material.dart';
//
// class OrangeShapePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.orange
//       ..style = PaintingStyle.fill;
//
//     Path path = Path();
//     path.lineTo(size.width * 0.75, 0);
//     path.quadraticBezierTo(size.width, 0, size.width, size.height * 0.25);
//     path.lineTo(size.width, size.height * 0.75);
//     path.quadraticBezierTo(size.width, size.height, size.width * 0.75, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
//}