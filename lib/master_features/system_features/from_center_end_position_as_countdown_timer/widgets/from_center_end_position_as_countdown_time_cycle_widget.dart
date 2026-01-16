import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_end_position_as_countdown_timer/models/from_center_end_position_as_countdown_time_cycle_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_end_position_as_countdown_timer/widgets/contents/from_center_end_position_as_countdown_time_cycle_content_widget.dart';

class FromCenterEndPositionAsCountdownTimeCycleWidget extends StatefulWidget {
  const FromCenterEndPositionAsCountdownTimeCycleWidget({super.key, required this.fromCenterEndPositionAsCountdownTimeCycleSystemFeature});

  final FromCenterEndPositionAsCountdownTimeCycleSystemFeature? fromCenterEndPositionAsCountdownTimeCycleSystemFeature;

  @override
  State<FromCenterEndPositionAsCountdownTimeCycleWidget> createState() => _FromCenterEndPositionAsCountdownTimeCycleWidgetState();
}

class _FromCenterEndPositionAsCountdownTimeCycleWidgetState extends State<FromCenterEndPositionAsCountdownTimeCycleWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterEndPositionAsCountdownTimeCycleContentWidget? _fromCenterEndPositionAsCountdownTimeCycleContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterEndPositionAsCountdownTimeCycleContentWidget = FromCenterEndPositionAsCountdownTimeCycleContentWidget(systemStateManagement: widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSystemStateManagement, sizeDx: widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDx ?? 0, sizeDy: widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDy ?? 0);

    topPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getTopPosition;
    rightPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getRightPosition;
    bottomPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getBottomPosition;
    leftPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getLeftPosition;
    sizeDx = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getTopPosition) {
        topPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getTopPosition;
        isUpdate = true;
      } else if (topPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getTopPosition) {
        topPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getRightPosition) {
        rightPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getRightPosition;
        isUpdate = true;
      } else if (rightPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getRightPosition) {
        rightPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getBottomPosition;
        isUpdate = true;
      } else if (bottomPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getLeftPosition;
        isUpdate = true;
      } else if (leftPosition != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDx) {
        sizeDx = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDy) {
        sizeDy = widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.fromCenterEndPositionAsCountdownTimeCycleSystemFeature?.checkConditionActiveByDirection() == false) {
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
                child: Stack(children: [_fromCenterEndPositionAsCountdownTimeCycleContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
