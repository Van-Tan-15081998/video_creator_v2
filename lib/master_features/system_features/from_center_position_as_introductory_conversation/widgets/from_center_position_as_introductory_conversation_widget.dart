import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_position_as_introductory_conversation/models/from_center_position_as_introductory_conversation_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_position_as_introductory_conversation/widgets/contents/from_center_position_as_introductory_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_position_as_introductory_conversation/widgets/contents/from_center_position_as_introductory_conversation_content_widget.dart';

class FromCenterPositionAsIntroductoryConversationWidget extends StatefulWidget {
  const FromCenterPositionAsIntroductoryConversationWidget({super.key, required this.fromCenterPositionAsIntroductoryConversationSystemFeature});

  final FromCenterPositionAsIntroductoryConversationSystemFeature? fromCenterPositionAsIntroductoryConversationSystemFeature;

  @override
  State<FromCenterPositionAsIntroductoryConversationWidget> createState() => _FromCenterPositionAsIntroductoryConversationWidgetState();
}

class _FromCenterPositionAsIntroductoryConversationWidgetState extends State<FromCenterPositionAsIntroductoryConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterPositionAsIntroductoryConversationContentWidget? _fromCenterPositionAsIntroductoryConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterPositionAsIntroductoryConversationContentWidget = FromCenterPositionAsIntroductoryConversationContentWidget(
      systemStateManagement: widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getTopPosition;
    rightPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getRightPosition;
    bottomPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getBottomPosition;
    leftPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getLeftPosition;
    sizeDx = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getTopPosition) {
        topPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getRightPosition) {
        rightPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDx) {
        sizeDx = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDy) {
        sizeDy = widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterPositionAsIntroductoryConversationSystemFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                    isActivatedWindow
                        ? ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),

                    isActivatedWindow ? _fromCenterPositionAsIntroductoryConversationContentWidget ?? Container() : Container(),
                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterPositionAsIntroductoryConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
