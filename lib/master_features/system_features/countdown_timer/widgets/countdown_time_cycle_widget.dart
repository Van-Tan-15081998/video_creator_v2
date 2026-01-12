import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/system_features/countdown_timer/models/countdown_time_cycle_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/countdown_timer/widgets/contents/countdown_time_cycle_content_widget.dart';

class CountdownTimeCycleWidget extends StatefulWidget {
  const CountdownTimeCycleWidget({super.key, required this.countdownTimeCycleSystemFeature});

  final CountdownTimeCycleSystemFeature? countdownTimeCycleSystemFeature;

  @override
  State<CountdownTimeCycleWidget> createState() => _CountdownTimeCycleWidgetState();
}

class _CountdownTimeCycleWidgetState extends State<CountdownTimeCycleWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  CountdownTimeCycleContentWidget? _countdownTimeCycleContentWidget;

  @override
  void initState() {
    super.initState();

    _countdownTimeCycleContentWidget = CountdownTimeCycleContentWidget(systemStateManagement: widget.countdownTimeCycleSystemFeature?.getSystemStateManagement, sizeDx: widget.countdownTimeCycleSystemFeature?.getSizeDx ?? 0, sizeDy: widget.countdownTimeCycleSystemFeature?.getSizeDy ?? 0);

    topPosition = widget.countdownTimeCycleSystemFeature?.getTopPosition;
    rightPosition = widget.countdownTimeCycleSystemFeature?.getRightPosition;
    bottomPosition = widget.countdownTimeCycleSystemFeature?.getBottomPosition;
    leftPosition = widget.countdownTimeCycleSystemFeature?.getLeftPosition;
    sizeDx = widget.countdownTimeCycleSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.countdownTimeCycleSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.countdownTimeCycleSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.countdownTimeCycleSystemFeature?.getTopPosition) {
        topPosition = widget.countdownTimeCycleSystemFeature?.getTopPosition;
        isUpdate = true;
      } else if (topPosition != widget.countdownTimeCycleSystemFeature?.getTopPosition) {
        topPosition = widget.countdownTimeCycleSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.countdownTimeCycleSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.countdownTimeCycleSystemFeature?.getRightPosition) {
        rightPosition = widget.countdownTimeCycleSystemFeature?.getRightPosition;
        isUpdate = true;
      } else if (rightPosition != widget.countdownTimeCycleSystemFeature?.getRightPosition) {
        rightPosition = widget.countdownTimeCycleSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.countdownTimeCycleSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.countdownTimeCycleSystemFeature?.getBottomPosition) {
        bottomPosition = widget.countdownTimeCycleSystemFeature?.getBottomPosition;
        isUpdate = true;
      } else if (bottomPosition != widget.countdownTimeCycleSystemFeature?.getBottomPosition) {
        bottomPosition = widget.countdownTimeCycleSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.countdownTimeCycleSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.countdownTimeCycleSystemFeature?.getLeftPosition) {
        leftPosition = widget.countdownTimeCycleSystemFeature?.getLeftPosition;
        isUpdate = true;
      } else if (leftPosition != widget.countdownTimeCycleSystemFeature?.getLeftPosition) {
        leftPosition = widget.countdownTimeCycleSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.countdownTimeCycleSystemFeature?.getSizeDx) {
        sizeDx = widget.countdownTimeCycleSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.countdownTimeCycleSystemFeature?.getSizeDy) {
        sizeDy = widget.countdownTimeCycleSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.countdownTimeCycleSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.countdownTimeCycleSystemFeature?.checkConditionActiveByDirection() == false) {
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
          ? FadeInRight(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_countdownTimeCycleContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
