import 'dart:math' as math;

import 'package:flutter/material.dart';

class ActiveContainerWidget extends StatefulWidget {
  const ActiveContainerWidget({super.key, this.isReverse, this.color, this.isStop, this.numBars, this.width, this.height, this.angleBarItem, this.widthBarItem});

  final double? width;
  final double? height;
  final int? numBars;

  final double? widthBarItem;
  final double? angleBarItem;

  final bool? isReverse;
  final Color? color;
  final bool? isStop;

  @override
  State<ActiveContainerWidget> createState() => _ActiveContainerWidgetState();
}

class _ActiveContainerWidgetState extends State<ActiveContainerWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(); // Lặp vô hạn
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double containerWidth = widget.width ?? 500;
    double containerHeight = widget.height ?? 70;
    int numBars = widget.numBars ?? 20;
    double barWidth = widget.widthBarItem ?? 20;
    double angleBarItem = widget.angleBarItem ?? -math.pi / 16;

    // Khoảng cách đều nhau
    final double spacing = (containerWidth - (numBars * barWidth)) / (numBars - 1);

    return Center(
      child: Container(
        width: containerWidth,
        height: containerHeight,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(color: Color(0xFF1C1C1C), borderRadius: BorderRadius.circular(0)),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            double offsetX = 0;
            if (widget.isReverse == true) {
              offsetX = -_controller.value * (barWidth + spacing); // di chuyển các thanh
            } else {
              offsetX = _controller.value * (barWidth + spacing); // di chuyển các thanh
            }

            return Stack(
              children: List.generate(numBars, (index) {
                double totalWidth = 0;
                double x = 0;

                if (widget.isReverse == true) {
                  totalWidth = numBars * (barWidth + spacing);
                  x = ((index * (barWidth + spacing)) + offsetX) % totalWidth;
                } else {
                  totalWidth = numBars * (barWidth + spacing);
                  x = ((index * (barWidth + spacing)) + offsetX) % totalWidth - barWidth;
                }

                return Transform.scale(
                  scaleY: 1.2,
                  child: Transform.translate(
                    offset: Offset(x - barWidth, -10.0),
                    child: Transform.rotate(
                      angle: angleBarItem, // nghiêng nhẹ
                      child: Container(
                        width: barWidth,
                        height: containerHeight + 50.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              widget.color ?? Color(0xFFFF4040).withValues(alpha: 1.0), //
                              widget.color ?? Color(0xFFFF4040).withValues(alpha: 1.0), //
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
