import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/from_center_start_position_as_two_character_playing_chess_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/widgets/contents/from_center_start_position_as_two_character_playing_chess_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/widgets/contents/from_center_start_position_as_two_character_playing_chess_content_widget.dart';

class FromCenterStartPositionAsTwoCharacterPlayingChessWidget extends StatefulWidget {
  const FromCenterStartPositionAsTwoCharacterPlayingChessWidget({super.key, required this.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature});

  final FromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature? fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature;

  @override
  State<FromCenterStartPositionAsTwoCharacterPlayingChessWidget> createState() => _FromCenterStartPositionAsTwoCharacterPlayingChessWidgetState();
}

class _FromCenterStartPositionAsTwoCharacterPlayingChessWidgetState extends State<FromCenterStartPositionAsTwoCharacterPlayingChessWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterStartPositionAsTwoCharacterPlayingChessContentWidget? _fromCenterStartPositionAsTwoCharacterPlayingChessContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterStartPositionAsTwoCharacterPlayingChessContentWidget = FromCenterStartPositionAsTwoCharacterPlayingChessContentWidget(
      systemStateManagement: widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterStartPositionAsTwoCharacterPlayingChessContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterStartPositionAsTwoCharacterPlayingChessCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature),
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
