import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/crossword_puzzle_game_board_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/widgets/contents/crossword_puzzle_game_board_character_widget.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/widgets/contents/crossword_puzzle_game_board_content_widget.dart';

class CrosswordPuzzleGameBoardWidget extends StatefulWidget {
  const CrosswordPuzzleGameBoardWidget({super.key, required this.crosswordPuzzleGameBoardFeature});

  final CrosswordPuzzleGameBoardFeature? crosswordPuzzleGameBoardFeature;

  @override
  State<CrosswordPuzzleGameBoardWidget> createState() => _CrosswordPuzzleGameBoardWidgetState();
}

class _CrosswordPuzzleGameBoardWidgetState extends State<CrosswordPuzzleGameBoardWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  CrosswordPuzzleGameBoardContentWidget? _crosswordPuzzleGameBoardContentWidget;

  @override
  void initState() {
    super.initState();

    _crosswordPuzzleGameBoardContentWidget = CrosswordPuzzleGameBoardContentWidget(
      systemStateManagement: widget.crosswordPuzzleGameBoardFeature?.getSystemStateManagement,
      sizeDx: widget.crosswordPuzzleGameBoardFeature?.getSizeDx ?? 0,
      sizeDy: widget.crosswordPuzzleGameBoardFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.crosswordPuzzleGameBoardFeature?.getTopPosition;
    rightPosition = widget.crosswordPuzzleGameBoardFeature?.getRightPosition;
    bottomPosition = widget.crosswordPuzzleGameBoardFeature?.getBottomPosition;
    leftPosition = widget.crosswordPuzzleGameBoardFeature?.getLeftPosition;
    sizeDx = widget.crosswordPuzzleGameBoardFeature?.getSizeDx ?? 0;
    sizeDy = widget.crosswordPuzzleGameBoardFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.crosswordPuzzleGameBoardFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.crosswordPuzzleGameBoardFeature?.getTopPosition) {
        topPosition = widget.crosswordPuzzleGameBoardFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.crosswordPuzzleGameBoardFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.crosswordPuzzleGameBoardFeature?.getRightPosition) {
        rightPosition = widget.crosswordPuzzleGameBoardFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.crosswordPuzzleGameBoardFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.crosswordPuzzleGameBoardFeature?.getBottomPosition) {
        bottomPosition = widget.crosswordPuzzleGameBoardFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.crosswordPuzzleGameBoardFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.crosswordPuzzleGameBoardFeature?.getLeftPosition) {
        leftPosition = widget.crosswordPuzzleGameBoardFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.crosswordPuzzleGameBoardFeature?.getSizeDx) {
        sizeDx = widget.crosswordPuzzleGameBoardFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.crosswordPuzzleGameBoardFeature?.getSizeDy) {
        sizeDy = widget.crosswordPuzzleGameBoardFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.crosswordPuzzleGameBoardFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.crosswordPuzzleGameBoardFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.crosswordPuzzleGameBoardFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                child: Stack(
                  children: [
                    isActivatedWindow ? _crosswordPuzzleGameBoardContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: CrosswordPuzzleGameBoardCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
