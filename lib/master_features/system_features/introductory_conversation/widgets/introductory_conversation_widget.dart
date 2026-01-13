import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/system_features/introductory_conversation/models/introductory_conversation_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/introductory_conversation/widgets/contents/introductory_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/system_features/introductory_conversation/widgets/contents/introductory_conversation_content_widget.dart';

class IntroductoryConversationWidget extends StatefulWidget {
  const IntroductoryConversationWidget({super.key, required this.introductoryConversationSystemFeature});

  final IntroductoryConversationSystemFeature? introductoryConversationSystemFeature;

  @override
  State<IntroductoryConversationWidget> createState() => _IntroductoryConversationWidgetState();
}

class _IntroductoryConversationWidgetState extends State<IntroductoryConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  IntroductoryConversationContentWidget? _introductoryConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _introductoryConversationContentWidget = IntroductoryConversationContentWidget(
      systemStateManagement: widget.introductoryConversationSystemFeature?.getSystemStateManagement,
      sizeDx: widget.introductoryConversationSystemFeature?.getSizeDx ?? 0,
      sizeDy: widget.introductoryConversationSystemFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.introductoryConversationSystemFeature?.getTopPosition;
    rightPosition = widget.introductoryConversationSystemFeature?.getRightPosition;
    bottomPosition = widget.introductoryConversationSystemFeature?.getBottomPosition;
    leftPosition = widget.introductoryConversationSystemFeature?.getLeftPosition;
    sizeDx = widget.introductoryConversationSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.introductoryConversationSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.introductoryConversationSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.introductoryConversationSystemFeature?.getTopPosition) {
        topPosition = widget.introductoryConversationSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.introductoryConversationSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.introductoryConversationSystemFeature?.getRightPosition) {
        rightPosition = widget.introductoryConversationSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.introductoryConversationSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.introductoryConversationSystemFeature?.getBottomPosition) {
        bottomPosition = widget.introductoryConversationSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.introductoryConversationSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.introductoryConversationSystemFeature?.getLeftPosition) {
        leftPosition = widget.introductoryConversationSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.introductoryConversationSystemFeature?.getSizeDx) {
        sizeDx = widget.introductoryConversationSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.introductoryConversationSystemFeature?.getSizeDy) {
        sizeDy = widget.introductoryConversationSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.introductoryConversationSystemFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.introductoryConversationSystemFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.introductoryConversationSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
          ? FadeInUp(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow ? _introductoryConversationContentWidget ?? Container() : Container(),
                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: IntroductoryConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
