import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss01_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss01_content_widget.dart';

class FromCenterPositionAsTheIntroductorySectionPomodoroSS01Widget extends StatefulWidget {
  const FromCenterPositionAsTheIntroductorySectionPomodoroSS01Widget({super.key, required this.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature});

  final FromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature? fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature;

  @override
  State<FromCenterPositionAsTheIntroductorySectionPomodoroSS01Widget> createState() => _FromCenterPositionAsTheIntroductorySectionPomodoroSS01WidgetState();
}

class _FromCenterPositionAsTheIntroductorySectionPomodoroSS01WidgetState extends State<FromCenterPositionAsTheIntroductorySectionPomodoroSS01Widget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterPositionAsTheIntroductorySectionPomodoroSS01ContentWidget? _fromCenterPositionAsTheIntroductorySectionPomodoroSS01ContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterPositionAsTheIntroductorySectionPomodoroSS01ContentWidget = FromCenterPositionAsTheIntroductorySectionPomodoroSS01ContentWidget(
      systemStateManagement: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterPositionAsTheIntroductorySectionPomodoroSS01ContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterPositionAsTheIntroductorySectionPomodoroSS01CharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature),
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
