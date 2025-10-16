import 'package:custom_divider/custom_divider.dart';
import 'package:dotted_border/dotted_border.dart';
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
    final theme = Theme.of(context);
    final Color devColor = isDragging ? theme.primaryColor : Colors.grey;
    return SizedBox(
      width: width,
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: CustomDivider(
                orientation: DividerOrientation.VERTICAL,
                style: DividerStyle.DASHED,
                dashWidth: 10,
                thickness: 2,
                color: devColor,
              ),
            ),
            Center(
              child: DottedBorder(
                color: devColor,
                dashPattern: [6, 3], // [dash length, gap length]
                strokeWidth: 2,
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                child: SizedBox(height: 120, width: 16),
              ),
            ),
            Expanded(
              child: CustomDivider(
                orientation: DividerOrientation.VERTICAL,
                style: DividerStyle.DASHED,
                dashWidth: 10,
                thickness: 2,
                color: devColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
