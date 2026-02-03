import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss01_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss01_content_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss03_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss03_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss03_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss03_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss03_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss03_content_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/models/from_center_start_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_one_character_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_one_character_conversation_content_widget.dart';

class FromCenterPositionAsTheIntroductorySectionPomodoroSS03Widget extends StatefulWidget {
  const FromCenterPositionAsTheIntroductorySectionPomodoroSS03Widget({super.key, required this.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature});

  final FromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature? fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature;

  @override
  State<FromCenterPositionAsTheIntroductorySectionPomodoroSS03Widget> createState() => _FromCenterPositionAsTheIntroductorySectionPomodoroSS03WidgetState();
}

class _FromCenterPositionAsTheIntroductorySectionPomodoroSS03WidgetState extends State<FromCenterPositionAsTheIntroductorySectionPomodoroSS03Widget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterPositionAsTheIntroductorySectionPomodoroSS03ContentWidget? _fromCenterPositionAsTheIntroductorySectionPomodoroSS03ContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterPositionAsTheIntroductorySectionPomodoroSS03ContentWidget = FromCenterPositionAsTheIntroductorySectionPomodoroSS03ContentWidget(
      systemStateManagement: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),

                    isActivatedWindow ? _fromCenterPositionAsTheIntroductorySectionPomodoroSS03ContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
