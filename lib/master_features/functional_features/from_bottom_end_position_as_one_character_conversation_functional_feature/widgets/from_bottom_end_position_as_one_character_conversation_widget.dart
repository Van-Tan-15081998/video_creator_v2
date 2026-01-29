import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_bottom_end_position_as_one_character_conversation_functional_feature/models/from_bottom_end_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_bottom_end_position_as_one_character_conversation_functional_feature/widgets/contents/from_bottom_end_position_as_one_character_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_bottom_end_position_as_one_character_conversation_functional_feature/widgets/contents/from_bottom_end_position_as_one_character_conversation_content_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/models/from_top_end_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/widgets/contents/from_top_end_position_as_one_character_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/widgets/contents/from_top_end_position_as_one_character_conversation_content_widget.dart';

class FromBottomEndPositionAsOneCharacterConversationWidget extends StatefulWidget {
  const FromBottomEndPositionAsOneCharacterConversationWidget({super.key, required this.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature});

  final FromBottomEndPositionAsOneCharacterConversationFunctionalFeature? fromBottomEndPositionAsOneCharacterConversationFunctionalFeature;

  @override
  State<FromBottomEndPositionAsOneCharacterConversationWidget> createState() => _FromTopFromBottomEndPositionAsOneCharacterConversationWidgetState();
}

class _FromTopFromBottomEndPositionAsOneCharacterConversationWidgetState extends State<FromBottomEndPositionAsOneCharacterConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromBottomEndPositionAsOneCharacterConversationContentWidget? _fromBottomEndPositionAsOneCharacterConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _fromBottomEndPositionAsOneCharacterConversationContentWidget = FromBottomEndPositionAsOneCharacterConversationContentWidget(
      systemStateManagement: widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition;
    rightPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition) {
        topPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(15.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),

                    isActivatedWindow ? _fromBottomEndPositionAsOneCharacterConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromBottomEndPositionAsOneCharacterConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
