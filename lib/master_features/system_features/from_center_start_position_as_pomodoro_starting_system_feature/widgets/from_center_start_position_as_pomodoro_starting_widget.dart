import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/models/from_center_start_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_one_character_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_one_character_conversation_content_widget.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_starting_system_feature/models/from_center_start_position_as_pomodoro_starting_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_starting_system_feature/widgets/contents/from_center_start_position_as_pomodoro_starting_character_widget.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_starting_system_feature/widgets/contents/from_center_start_position_as_pomodoro_starting_content_widget.dart';

class FromCenterStartPositionAsPomodoroStartingWidget extends StatefulWidget {
  const FromCenterStartPositionAsPomodoroStartingWidget({super.key, required this.fromCenterStartPositionAsPomodoroStartingSystemFeature});

  final FromCenterStartPositionAsPomodoroStartingSystemFeature? fromCenterStartPositionAsPomodoroStartingSystemFeature;

  @override
  State<FromCenterStartPositionAsPomodoroStartingWidget> createState() => _FromCenterStartPositionAsPomodoroStartingWidgetState();
}

class _FromCenterStartPositionAsPomodoroStartingWidgetState extends State<FromCenterStartPositionAsPomodoroStartingWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterStartPositionAsPomodoroStartingContentWidget? _fromCenterStartPositionAsPomodoroStartingContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterStartPositionAsPomodoroStartingContentWidget = FromCenterStartPositionAsPomodoroStartingContentWidget(
      systemStateManagement: widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getTopPosition;
    rightPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getRightPosition;
    bottomPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getBottomPosition;
    leftPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getLeftPosition;
    sizeDx = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getTopPosition) {
        topPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getRightPosition) {
        rightPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDx) {
        sizeDx = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDy) {
        sizeDy = widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterStartPositionAsPomodoroStartingSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterStartPositionAsPomodoroStartingContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterStartPositionAsPomodoroStartingCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
