import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board_scene_transition/models/crossword_puzzle_game_board_scene_transition_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board_scene_transition/widgets/contents/cp_game_board_scene_transition_content_widget.dart';

class CrosswordPuzzleGameBoardSceneTransitionWidget extends StatefulWidget {
  const CrosswordPuzzleGameBoardSceneTransitionWidget({super.key, required this.crosswordPuzzleGameBoardSceneTransitionFeature});

  final CrosswordPuzzleGameBoardSceneTransitionFeature? crosswordPuzzleGameBoardSceneTransitionFeature;

  @override
  State<CrosswordPuzzleGameBoardSceneTransitionWidget> createState() => _CrosswordPuzzleGameBoardSceneTransitionWidgetState();
}

class _CrosswordPuzzleGameBoardSceneTransitionWidgetState extends State<CrosswordPuzzleGameBoardSceneTransitionWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  CrosswordPuzzleGameBoardSceneTransitionContentWidget? _crosswordPuzzleGameBoardSceneTransitionContentWidget;

  @override
  void initState() {
    super.initState();

    _crosswordPuzzleGameBoardSceneTransitionContentWidget = CrosswordPuzzleGameBoardSceneTransitionContentWidget(
      systemStateManagement: widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSystemStateManagement,
      sizeDx: widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDx ?? 0,
      sizeDy: widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getTopPosition;
    rightPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getRightPosition;
    bottomPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getBottomPosition;
    leftPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getLeftPosition;
    sizeDx = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDx ?? 0;
    sizeDy = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.crosswordPuzzleGameBoardSceneTransitionFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getTopPosition) {
        topPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.crosswordPuzzleGameBoardSceneTransitionFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getRightPosition) {
        rightPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.crosswordPuzzleGameBoardSceneTransitionFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getBottomPosition) {
        bottomPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.crosswordPuzzleGameBoardSceneTransitionFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getLeftPosition) {
        leftPosition = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDx) {
        sizeDx = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDy) {
        sizeDy = widget.crosswordPuzzleGameBoardSceneTransitionFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.crosswordPuzzleGameBoardSceneTransitionFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.crosswordPuzzleGameBoardSceneTransitionFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.crosswordPuzzleGameBoardSceneTransitionFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
          ? FadeInLeft(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [isActivatedWindow ? _crosswordPuzzleGameBoardSceneTransitionContentWidget ?? Container() : Container()]),
              ),
            )
          : Container(),
    );
  }
}
