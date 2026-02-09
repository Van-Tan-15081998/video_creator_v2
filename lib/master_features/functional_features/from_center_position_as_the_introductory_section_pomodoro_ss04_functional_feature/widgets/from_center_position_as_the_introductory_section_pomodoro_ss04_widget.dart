import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss04_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss04_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss04_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss04_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss04_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss04_content_widget.dart';

class FromCenterPositionAsTheIntroductorySectionPomodoroSS04Widget extends StatefulWidget {
  const FromCenterPositionAsTheIntroductorySectionPomodoroSS04Widget({super.key, required this.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature});

  final FromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature? fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature;

  @override
  State<FromCenterPositionAsTheIntroductorySectionPomodoroSS04Widget> createState() => _FromCenterPositionAsTheIntroductorySectionPomodoroSS04WidgetState();
}

class _FromCenterPositionAsTheIntroductorySectionPomodoroSS04WidgetState extends State<FromCenterPositionAsTheIntroductorySectionPomodoroSS04Widget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterPositionAsTheIntroductorySectionPomodoroSS04ContentWidget? _fromCenterPositionAsTheIntroductorySectionPomodoroSS04ContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterPositionAsTheIntroductorySectionPomodoroSS04ContentWidget = FromCenterPositionAsTheIntroductorySectionPomodoroSS04ContentWidget(
      systemStateManagement: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterPositionAsTheIntroductorySectionPomodoroSS04ContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterPositionAsTheIntroductorySectionPomodoroSS04CharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature),
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
