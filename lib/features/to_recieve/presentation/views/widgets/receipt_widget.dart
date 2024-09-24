import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/receipt_divider.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class ReceiptWidget extends StatelessWidget {
  const ReceiptWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        child: CustomPaint(
          painter: DashedBorderWithHalfCirclesPainter(),
          child: Container(
            width: 350,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tracking Number",
                              style: Styles.styleBoldLeagueSpartan14,
                            ),
                            Text(
                              "LGS-i92927839300763731",
                              style: Styles.styleRegularInterLight12,
                            ),
                          ],
                        ),
                        SvgPicture.asset(Assets.imagesReceiptIcon),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Center(
                  child: Text(
                      'your order confirmed successfully',
                      style: Styles.styleRegularInterLight12
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: DashedDivider(color: Color(0xff707070), dashWidth: 4, dashSpace: 4.0),
                ),
                const SizedBox(height: 15),
                _buildRow('Order Date', '22/6/2024'),
                _buildRow('Arrives Date', '25/6/2024'),
                _buildRow('Time', '20:15:22'),
                _buildRow('Seller name', 'El Shazly'),
                _buildRow('Seller ID', 'IG093042'),
                _buildRow('Price', '200 LE'),
                _buildRow('Discount', '10 %'),
                _buildRow('Total Price', '180 LE'),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: DashedDivider(color: Color(0xff707070), dashWidth: 4, dashSpace: 4.0),
                ),
                const SizedBox(height: 20),
                Center(
                    child: SvgPicture.asset(Assets.imagesBarCodeIcon)
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(top:  7.0,bottom: 7,left: 18,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              '$title :',
              style: Styles.styleBoldInterLight14
          ),
          Text(
              value,
              style: Styles.styleRegularInterLight12.copyWith(fontSize: 14)
          ),
        ],
      ),
    );
  }
}

class DashedBorderWithHalfCirclesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =  kPrimaryColor
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    const dashWidth = 5.0;
    const dashSpace = 3.0;
    const circleRadius = 14.0;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }

    startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
          Offset(startX, size.height),
          Offset(startX + dashWidth, size.height),
          paint);
      startX += dashWidth + dashSpace;
    }

    double startY = 0;
    while (startY < size.height / 5 - circleRadius) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      canvas.drawLine(Offset(size.width, startY),
          Offset(size.width, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }

    startY = size.height / 5 + circleRadius;
    while (startY < size.height * 0.8 - circleRadius) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      canvas.drawLine(Offset(size.width, startY),
          Offset(size.width, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }

    startY = size.height * 0.8 + circleRadius;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      canvas.drawLine(Offset(size.width, startY),
          Offset(size.width, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }

    // Draw half circles
    final halfCirclePaint = Paint()
      ..color = kPrimaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final leftTopCenter = Offset(0, size.height / 5);
    final rightTopCenter = Offset(size.width, size.height / 5);
    final leftBottomCenter = Offset(0, size.height * 0.8);
    final rightBottomCenter = Offset(size.width, size.height * 0.8);

    _drawHalfCircle(canvas, leftTopCenter, circleRadius, halfCirclePaint, isLeft: true);
    _drawHalfCircle(canvas, rightTopCenter, circleRadius, halfCirclePaint, isLeft: false);
    _drawHalfCircle(canvas, leftBottomCenter, circleRadius, halfCirclePaint, isLeft: true);
    _drawHalfCircle(canvas, rightBottomCenter, circleRadius, halfCirclePaint, isLeft: false);
  }

  void _drawHalfCircle(Canvas canvas, Offset center, double radius, Paint paint, {required bool isLeft}) {
    const dashWidth = 5.0;
    const dashSpace = 3.0;
    double circumference = 3.14 * radius;
    double dashCount = circumference / (dashWidth + dashSpace);
    double sweepAngle = (3.14) / dashCount;
    double startAngle = isLeft ? 3.14 : 0;

    for (int i = 0; i < dashCount; i++) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle + (sweepAngle + (dashSpace / radius)) * i,
        sweepAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
