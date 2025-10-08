import 'package:flutter/material.dart';

class ScreenSpliter extends StatelessWidget {
  const ScreenSpliter({
    super.key,
    required this.width,
    required this.isDragging,
    required this.activeColor,
    required this.color,
  });

  final double width;
  final bool isDragging;
  final Color activeColor, color;

  @override
  Widget build(BuildContext context) {
    final Color devColor = isDragging ? activeColor : color;
    return SizedBox(
      width: width,
      child: Center(
        child: Column(
          children: [
            Expanded(child: VerticalDivider(thickness: 3, color: devColor)),
            Expanded(
              child: VerticalDivider(
                thickness: width,
                radius: BorderRadius.circular(30.0),
                color: isDragging ? activeColor : color,
              ),
            ),
            Expanded(child: VerticalDivider(thickness: 3, color: devColor)),
          ],
        ),
      ),
    );
  }
}
