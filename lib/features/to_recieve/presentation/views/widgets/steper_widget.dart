import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //let's add some padding press alt enter
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ShapeOutlineWrapper(
            shapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            strokeColor: Colors.red,
            strokeWidth: 4.0,
            child: Row(
              children: [
                StepperComponent(
                  currentIndex: _currentIndex,
                  index: 0,
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                    _pageController.jumpToPage(0);
                  },
                ),
                StepperComponent(
                  currentIndex: _currentIndex,
                  index: 1,
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                ),
                StepperComponent(
                  currentIndex: _currentIndex,
                  index: 2,
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                ),
                StepperComponent(
                  currentIndex: _currentIndex,
                  index: 3,
                  isLast: true,
                  onTap: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                    _pageController.jumpToPage(3);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StepperComponent extends StatelessWidget {
  // index describe the position of our bubble
  int index;

  //currentIndex is index that is gonna change on Tap
  int currentIndex;

  //onTap CallBack
  VoidCallback onTap;

  bool isLast;

  StepperComponent({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    //now let's remove the ligne at the end of the row but also we need to remove unnecessary padding thus we need to remove the expanded
    //widget
    return isLast
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //this is the bubble
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: index <= currentIndex
                            ? Colors.orange
                            : Colors.transparent,
                        border: Border.all(
                            color: currentIndex >= index
                                ? Colors.orange
                                : Colors.black12),
                      ),
                    ),
                  ),
                  //this the ligne
                  Container(
                    height: 2,
                    //why index+1 we want to turn the ligne orange that precede the active bubble
                    color: currentIndex >= index + 1
                        ? Colors.orange
                        : Colors.black12,
                  ),
                ],
              ),
              //index+1 we dont wanna show 0 in the screen since our index will start at 0
            ],
          )
        : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //this is the bubble
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: currentIndex >= index
                              ? Colors.orange
                              : Colors.black12,
                          border: Border.all(
                              color: currentIndex >= index
                                  ? Colors.orange
                                  : Colors.black12),
                        ),
                      ),
                    ),
                    //this the ligne
                    Expanded(
                        child: Container(
                      height: 4,
                      //why index+1 we want to turn the ligne orange that precede the active bubble
                      color: currentIndex >= index + 1
                          ? Colors.orange
                          : Colors.black12,
                    )),
                  ],
                ),
                //index+1 we dont wanna show 0 in the screen since our index will start at 0
              ],
            ),
          );
  }
}

class OutlinePainter extends CustomPainter {
  final ShapeBorder shapeBorder;
  final double strokeWidth;
  final Color strokeColor;

  OutlinePainter({
    required this.shapeBorder,
    required this.strokeWidth,
    required this.strokeColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final path =
        shapeBorder.getOuterPath(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ShapeOutlineWrapper extends StatelessWidget {
  final Widget child;
  final ShapeBorder shapeBorder;
  final double strokeWidth;
  final Color strokeColor;

  const ShapeOutlineWrapper({
    super.key,
    required this.child,
    required this.shapeBorder,
    this.strokeWidth = 2.0,
    this.strokeColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OutlinePainter(
        shapeBorder: shapeBorder,
        strokeWidth: strokeWidth,
        strokeColor: strokeColor,
      ),
      child: ClipPath(
        clipper: ShapeBorderClipper(shape: shapeBorder),
        child: child,
      ),
    );
  }
}
