import 'package:flutter/material.dart';

class ScreenSpliter extends StatelessWidget {
  const ScreenSpliter({
    super.key,
    required this.width,
    required this.isDragging,
  });

  final double width;
  final bool isDragging;

  @override
  Widget build(BuildContext context) {
    final Color devColor = isDragging
        ? Theme.of(context).primaryColor
        : Colors.grey;
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.keyboard_double_arrow_left_outlined,
            color: devColor,
            size: 26,
          ),
          VerticalDivider(width: 8, thickness: 8, color: devColor),
          Icon(
            Icons.keyboard_double_arrow_right_outlined,
            color: devColor,
            size: 26,
          ),
        ],
      ),
    );
  }
}
