import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_conversation_functional_feature/models/from_center_start_position_as_two_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_two_character_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_two_character_conversation_content_widget.dart';

class FromCenterStartPositionAsTwoCharacterConversationWidget extends StatefulWidget {
  const FromCenterStartPositionAsTwoCharacterConversationWidget({super.key, required this.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature});

  final FromCenterStartPositionAsTwoCharacterConversationFunctionalFeature? fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature;

  @override
  State<FromCenterStartPositionAsTwoCharacterConversationWidget> createState() => _FromCenterStartPositionAsTwoCharacterConversationWidgetState();
}

class _FromCenterStartPositionAsTwoCharacterConversationWidgetState extends State<FromCenterStartPositionAsTwoCharacterConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterStartPositionAsTwoCharacterConversationContentWidget? _fromCenterStartPositionAsTwoCharacterConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterStartPositionAsTwoCharacterConversationContentWidget = FromCenterStartPositionAsTwoCharacterConversationContentWidget(
      systemStateManagement: widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterStartPositionAsTwoCharacterConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterStartPositionAsTwoCharacterConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
