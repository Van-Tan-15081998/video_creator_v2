import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/widgets/contents/from_center_start_position_as_one_character_playing_crossword_puzzle_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/widgets/contents/from_center_start_position_as_one_character_playing_crossword_puzzle_content_widget.dart';

class FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWidget extends StatefulWidget {
  const FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWidget({super.key, required this.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature});

  final FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature? fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature;

  @override
  State<FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWidget> createState() => _FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWidgetState();
}

class _FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWidgetState extends State<FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleContentWidget? _fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleContentWidget = FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleContentWidget(
      systemStateManagement: widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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

                    isActivatedWindow ? _fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
