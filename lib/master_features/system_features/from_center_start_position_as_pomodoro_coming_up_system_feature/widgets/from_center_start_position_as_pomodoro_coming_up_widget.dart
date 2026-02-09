import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_coming_up_system_feature/models/from_center_start_position_as_pomodoro_coming_up_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_coming_up_system_feature/widgets/contents/from_center_start_position_as_pomodoro_coming_up_character_widget.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_coming_up_system_feature/widgets/contents/from_center_start_position_as_pomodoro_coming_up_content_widget.dart';

class FromCenterStartPositionAsPomodoroComingUpWidget extends StatefulWidget {
  const FromCenterStartPositionAsPomodoroComingUpWidget({super.key, required this.fromCenterStartPositionAsPomodoroComingUpSystemFeature});

  final FromCenterStartPositionAsPomodoroComingUpSystemFeature? fromCenterStartPositionAsPomodoroComingUpSystemFeature;

  @override
  State<FromCenterStartPositionAsPomodoroComingUpWidget> createState() => _FromCenterStartPositionAsPomodoroComingUpWidgetState();
}

class _FromCenterStartPositionAsPomodoroComingUpWidgetState extends State<FromCenterStartPositionAsPomodoroComingUpWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterStartPositionAsPomodoroComingUpContentWidget? _fromCenterStartPositionAsPomodoroComingUpContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterStartPositionAsPomodoroComingUpContentWidget = FromCenterStartPositionAsPomodoroComingUpContentWidget(
      systemStateManagement: widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getTopPosition;
    rightPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getRightPosition;
    bottomPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getBottomPosition;
    leftPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getLeftPosition;
    sizeDx = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getTopPosition) {
        topPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getRightPosition) {
        rightPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDx) {
        sizeDx = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDy) {
        sizeDy = widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.checkConditionActiveByDirection() == false) {
        ///
        if (isActivatedWindow == true && isAnimatedShow == true && isMarkedUnactivatedWindow == false) {
          setState(() {
            isMarkedUnactivatedWindow = true;
          });

          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isActivatedWindow = false;
              isAnimatedShow = false;
              isMarkedUnactivatedWindow = false;
            });
          });
        }
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
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
      duration: const Duration(milliseconds: 500),
      top: topPosition,
      right: rightPosition,
      bottom: bottomPosition,
      left: leftPosition,
      width: sizeDx,
      height: sizeDy,

      child: isAnimatedShow
          ? FadeInDown(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow
                        ? ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),

                    isActivatedWindow ? _fromCenterStartPositionAsPomodoroComingUpContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterStartPositionAsPomodoroComingUpCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromCenterStartPositionAsPomodoroComingUpSystemFeature),
                          )
                        : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
