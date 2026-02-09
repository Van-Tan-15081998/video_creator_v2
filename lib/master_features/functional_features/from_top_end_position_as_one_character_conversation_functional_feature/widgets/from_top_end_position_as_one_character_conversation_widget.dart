import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/models/from_top_end_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/widgets/contents/from_top_end_position_as_one_character_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/widgets/contents/from_top_end_position_as_one_character_conversation_content_widget.dart';

class FromTopEndPositionAsOneCharacterConversationWidget extends StatefulWidget {
  const FromTopEndPositionAsOneCharacterConversationWidget({super.key, required this.fromTopEndPositionAsOneCharacterConversationFunctionalFeature});

  final FromTopEndPositionAsOneCharacterConversationFunctionalFeature? fromTopEndPositionAsOneCharacterConversationFunctionalFeature;

  @override
  State<FromTopEndPositionAsOneCharacterConversationWidget> createState() => _FromTopEndPositionAsOneCharacterConversationWidgetState();
}

class _FromTopEndPositionAsOneCharacterConversationWidgetState extends State<FromTopEndPositionAsOneCharacterConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromTopEndPositionAsOneCharacterConversationContentWidget? _fromTopEndPositionAsOneCharacterConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _fromTopEndPositionAsOneCharacterConversationContentWidget = FromTopEndPositionAsOneCharacterConversationContentWidget(
      systemStateManagement: widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition;
    rightPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition) {
        topPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),

                    isActivatedWindow ? _fromTopEndPositionAsOneCharacterConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromTopEndPositionAsOneCharacterConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromTopEndPositionAsOneCharacterConversationFunctionalFeature),
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
