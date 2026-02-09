import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss02_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss02_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss02_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss02_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss02_functional_feature/widgets/contents/from_center_position_as_the_introductory_section_pomodoro_ss02_content_widget.dart';

class FromCenterPositionAsTheIntroductorySectionPomodoroSS02Widget extends StatefulWidget {
  const FromCenterPositionAsTheIntroductorySectionPomodoroSS02Widget({super.key, required this.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature});

  final FromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature? fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature;

  @override
  State<FromCenterPositionAsTheIntroductorySectionPomodoroSS02Widget> createState() => _FromCenterPositionAsTheIntroductorySectionPomodoroSS02WidgetState();
}

class _FromCenterPositionAsTheIntroductorySectionPomodoroSS02WidgetState extends State<FromCenterPositionAsTheIntroductorySectionPomodoroSS02Widget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterPositionAsTheIntroductorySectionPomodoroSS02ContentWidget? _fromCenterPositionAsTheIntroductorySectionPomodoroSS02ContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterPositionAsTheIntroductorySectionPomodoroSS02ContentWidget = FromCenterPositionAsTheIntroductorySectionPomodoroSS02ContentWidget(
      systemStateManagement: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterPositionAsTheIntroductorySectionPomodoroSS02ContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterPositionAsTheIntroductorySectionPomodoroSS02CharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature),
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
