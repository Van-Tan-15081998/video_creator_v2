import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/models/from_center_start_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_one_character_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/from_center_start_position_as_one_character_conversation_content_widget.dart';

class FromCenterStartPositionAsOneCharacterConversationWidget extends StatefulWidget {
  const FromCenterStartPositionAsOneCharacterConversationWidget({super.key, required this.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature});

  final FromCenterStartPositionAsOneCharacterConversationFunctionalFeature? fromCenterStartPositionAsOneCharacterConversationFunctionalFeature;

  @override
  State<FromCenterStartPositionAsOneCharacterConversationWidget> createState() => _FromCenterStartPositionAsOneCharacterConversationWidgetState();
}

class _FromCenterStartPositionAsOneCharacterConversationWidgetState extends State<FromCenterStartPositionAsOneCharacterConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterStartPositionAsOneCharacterConversationContentWidget? _fromCenterStartPositionAsOneCharacterConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterStartPositionAsOneCharacterConversationContentWidget = FromCenterStartPositionAsOneCharacterConversationContentWidget(
      systemStateManagement: widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterStartPositionAsOneCharacterConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterStartPositionAsOneCharacterConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromCenterStartPositionAsOneCharacterConversationFunctionalFeature),
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
