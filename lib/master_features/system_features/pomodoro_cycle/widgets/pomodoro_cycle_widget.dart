import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/system_features/pomodoro_cycle/models/pomodoro_cycle_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/pomodoro_cycle/widgets/contents/pomodoro_cycle_content_widget.dart';

class PomodoroCycleWidget extends StatefulWidget {
  const PomodoroCycleWidget({super.key, required this.pomodoroCycleSystemFeature});

  final PomodoroCycleSystemFeature? pomodoroCycleSystemFeature;

  @override
  State<PomodoroCycleWidget> createState() => _PomodoroCycleWidgetState();
}

class _PomodoroCycleWidgetState extends State<PomodoroCycleWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  PomodoroCycleContentWidget? _pomodoroCycleContentWidget;

  @override
  void initState() {
    super.initState();

    _pomodoroCycleContentWidget = PomodoroCycleContentWidget(systemStateManagement: widget.pomodoroCycleSystemFeature?.getSystemStateManagement, sizeDx: widget.pomodoroCycleSystemFeature?.getSizeDx ?? 0, sizeDy: widget.pomodoroCycleSystemFeature?.getSizeDy ?? 0);

    topPosition = widget.pomodoroCycleSystemFeature?.getTopPosition;
    rightPosition = widget.pomodoroCycleSystemFeature?.getRightPosition;
    bottomPosition = widget.pomodoroCycleSystemFeature?.getBottomPosition;
    leftPosition = widget.pomodoroCycleSystemFeature?.getLeftPosition;
    sizeDx = widget.pomodoroCycleSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.pomodoroCycleSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.pomodoroCycleSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.pomodoroCycleSystemFeature?.getTopPosition) {
        topPosition = widget.pomodoroCycleSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.pomodoroCycleSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.pomodoroCycleSystemFeature?.getRightPosition) {
        rightPosition = widget.pomodoroCycleSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.pomodoroCycleSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.pomodoroCycleSystemFeature?.getBottomPosition) {
        bottomPosition = widget.pomodoroCycleSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.pomodoroCycleSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.pomodoroCycleSystemFeature?.getLeftPosition) {
        leftPosition = widget.pomodoroCycleSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.pomodoroCycleSystemFeature?.getSizeDx) {
        sizeDx = widget.pomodoroCycleSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.pomodoroCycleSystemFeature?.getSizeDy) {
        sizeDy = widget.pomodoroCycleSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.pomodoroCycleSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.pomodoroCycleSystemFeature?.checkConditionActiveByDirection() == false) {
            isAnimatedShow = false;
          }
        }
      });
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      top: topPosition,
      right: rightPosition,
      bottom: bottomPosition,
      left: leftPosition,
      width: sizeDx,
      height: sizeDy,

      child: isAnimatedShow
          ? FadeInUp(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_pomodoroCycleContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
