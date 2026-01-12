import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_conversation/widgets/contents/vocabulary_conversation_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/two_character_conversation/models/two_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/two_character_conversation/widgets/contents/two_character_conversation_content_widget.dart';

class TwoCharacterConversationWidget extends StatefulWidget {
  const TwoCharacterConversationWidget({super.key, required this.twoCharacterConversationFunctionalFeature});

  final TwoCharacterConversationFunctionalFeature? twoCharacterConversationFunctionalFeature;

  @override
  State<TwoCharacterConversationWidget> createState() => _TwoCharacterConversationWidgetState();
}

class _TwoCharacterConversationWidgetState extends State<TwoCharacterConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  TwoCharacterConversationContentWidget? _twoCharacterConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _twoCharacterConversationContentWidget = TwoCharacterConversationContentWidget(
      systemStateManagement: widget.twoCharacterConversationFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.twoCharacterConversationFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.twoCharacterConversationFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.twoCharacterConversationFunctionalFeature?.getTopPosition;
    rightPosition = widget.twoCharacterConversationFunctionalFeature?.getRightPosition;
    bottomPosition = widget.twoCharacterConversationFunctionalFeature?.getBottomPosition;
    leftPosition = widget.twoCharacterConversationFunctionalFeature?.getLeftPosition;
    sizeDx = widget.twoCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.twoCharacterConversationFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.twoCharacterConversationFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.twoCharacterConversationFunctionalFeature?.getTopPosition) {
        topPosition = widget.twoCharacterConversationFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.twoCharacterConversationFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.twoCharacterConversationFunctionalFeature?.getRightPosition) {
        rightPosition = widget.twoCharacterConversationFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.twoCharacterConversationFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.twoCharacterConversationFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.twoCharacterConversationFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.twoCharacterConversationFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.twoCharacterConversationFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.twoCharacterConversationFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.twoCharacterConversationFunctionalFeature?.getSizeDx) {
        sizeDx = widget.twoCharacterConversationFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.twoCharacterConversationFunctionalFeature?.getSizeDy) {
        sizeDy = widget.twoCharacterConversationFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.twoCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.twoCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.twoCharacterConversationFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _twoCharacterConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: VocabularyConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
