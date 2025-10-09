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
    final Color devColor = isDragging ? Theme.of(context).primaryColor : Colors.grey;
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
                color: devColor,
              ),
            ),
            Expanded(child: VerticalDivider(thickness: 3, color: devColor)),
          ],
        ),
      ),
    );
  }
}
