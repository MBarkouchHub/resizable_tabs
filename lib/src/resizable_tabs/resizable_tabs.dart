import 'package:flutter/material.dart';

import 'position_listener.dart';
import 'widgets/percentage_widget.dart';
import 'widgets/screen_spliter.dart';

class ResizableTabs extends StatefulWidget {
  const ResizableTabs({
    super.key,
    required this.tabOne,
    required this.tabTwo,
    this.positionListener,
    this.maxFraction = 0.8,
    this.minFraction = 0.2,
  });

  final Widget tabOne, tabTwo;
  final PositionListener? positionListener;
  final double maxFraction, minFraction;

  @override
  State<ResizableTabs> createState() => _ResizableTabsState();
}

class _ResizableTabsState extends State<ResizableTabs> {
  double dividerPosition = .5;
  bool _isDragging = false;
  double? _lastDragGlobalX;
  final double _dividerWidth = 30.0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final leftWidth = screenWidth * dividerPosition;
    final rightWidth = screenWidth - leftWidth;
    final int leftPercentage = ((leftWidth * 100) / screenWidth).round();
    final int rightPercentage = ((rightWidth * 100) / screenWidth).round();

    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: leftWidth,
                child: _isDragging
                    ? PercentageWidget(
                        value: leftPercentage,
                        widget: widget.tabOne,
                      )
                    : widget.tabOne,
              ),
              SizedBox(
                width: rightWidth,
                child: _isDragging
                    ? PercentageWidget(
                        value: rightPercentage,
                        widget: widget.tabTwo,
                      )
                    : widget.tabTwo,
              ),
            ],
          ),

          Positioned(
            left: leftWidth - (_dividerWidth * .5),
            top: 0,
            bottom: 0,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onLongPressStart: (details) {
                _isDragging = true;
                _lastDragGlobalX = details.globalPosition.dx;
                setState(() {});
              },
              onLongPressMoveUpdate: (details) {
                if (!_isDragging || _lastDragGlobalX == null) return;

                final dx = details.globalPosition.dx - _lastDragGlobalX!;
                _lastDragGlobalX = details.globalPosition.dx;

                setState(() {
                  dividerPosition += dx / screenWidth;
                  if (widget.positionListener != null) {
                    widget.positionListener!(dividerPosition);
                  }
                  dividerPosition = dividerPosition.clamp(
                    widget.minFraction,
                    widget.maxFraction,
                  );
                });
              },
              onLongPressEnd: (_) {
                _isDragging = false;
                _lastDragGlobalX = null;
                setState(() {});
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.resizeColumn,
                child: ScreenSpliter(
                  width: _dividerWidth,
                  isDragging: _isDragging,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
