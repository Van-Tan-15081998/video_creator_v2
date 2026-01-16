import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/system_features/from_bottom_end_position_as_pomodoro_cycle/models/from_bottom_end_position_as_pomodoro_cycle_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_bottom_end_position_as_pomodoro_cycle/widgets/contents/from_bottom_end_position_as_pomodoro_cycle_content_widget.dart';

class FromBottomEndPositionAsPomodoroCycleWidget extends StatefulWidget {
  const FromBottomEndPositionAsPomodoroCycleWidget({super.key, required this.fromBottomEndPositionAsPomodoroCycleSystemFeature});

  final FromBottomEndPositionAsPomodoroCycleSystemFeature? fromBottomEndPositionAsPomodoroCycleSystemFeature;

  @override
  State<FromBottomEndPositionAsPomodoroCycleWidget> createState() => _FromBottomEndPositionAsPomodoroCycleWidgetState();
}

class _FromBottomEndPositionAsPomodoroCycleWidgetState extends State<FromBottomEndPositionAsPomodoroCycleWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromBottomEndPositionAsPomodoroCycleContentWidget? _fromBottomEndPositionAsPomodoroCycleContentWidget;

  @override
  void initState() {
    super.initState();

    _fromBottomEndPositionAsPomodoroCycleContentWidget = FromBottomEndPositionAsPomodoroCycleContentWidget(systemStateManagement: widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSystemStateManagement, sizeDx: widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDx ?? 0, sizeDy: widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDy ?? 0);

    topPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getTopPosition;
    rightPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getRightPosition;
    bottomPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getBottomPosition;
    leftPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getLeftPosition;
    sizeDx = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getTopPosition) {
        topPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getRightPosition) {
        rightPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getBottomPosition) {
        bottomPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getLeftPosition) {
        leftPosition = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDx) {
        sizeDx = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDy) {
        sizeDy = widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.fromBottomEndPositionAsPomodoroCycleSystemFeature?.checkConditionActiveByDirection() == false) {
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
                child: Stack(children: [_fromBottomEndPositionAsPomodoroCycleContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
