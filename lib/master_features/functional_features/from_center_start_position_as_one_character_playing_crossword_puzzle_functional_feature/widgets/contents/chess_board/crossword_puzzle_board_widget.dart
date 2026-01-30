import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget_light.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_data_model.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_square_state_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class CrosswordPuzzleBoardWidget extends StatefulWidget {
  const CrosswordPuzzleBoardWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<CrosswordPuzzleBoardWidget> createState() => _CrosswordPuzzleBoardWidgetState();
}

class _CrosswordPuzzleBoardWidgetState extends State<CrosswordPuzzleBoardWidget> with TickerProviderStateMixin {
  late final Ticker _ticker;

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _currentCrosswordPuzzleWordUnit;
  CrosswordPuzzleWordUnit? get getCurrentCrosswordPuzzleWordUnit => _currentCrosswordPuzzleWordUnit;
  void setCurrentCrosswordPuzzleWordUnit({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleWordUnit = value;
    } else {
      _currentCrosswordPuzzleWordUnit ??= value;
    }

    return;
  }

  String currentWord = '';

  @override
  void initState() {
    super.initState();

    setCurrentCrosswordPuzzleWordUnit(value: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleWordUnit, isPriorityOverride: true);

    // sizeUnit = widget.sizeDx / 4;
    sizeUnit = widget.sizeDx / 10;

    _ticker = createTicker((Duration elapsed) {
      if (currentWord != getCurrentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getId) {
        setState(() {
          currentWord = getCurrentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getId ?? '...';
        });
      }

      ///
    })..start();
  }

  double sizeUnit = 0;

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,

      children: [
        Positioned(
          top: 0,
          width: widget.sizeDx,
          height: widget.sizeDx - 350.0,
          child: Container(
            padding: EdgeInsets.all(0),
            width: widget.sizeDx,
            height: widget.sizeDx,

            decoration: BoxDecoration(
              color: Color(0xFF002200).withValues(alpha: 0),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            ),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  width: sizeUnit * 10,
                  height: sizeUnit * 7,
                  child: Container(
                    color: Colors.transparent,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Positioned(
                          child: TransparentEffectWallWidgetLight(sizeDx: sizeUnit * 10, sizeDy: sizeUnit * 7),
                        ),
                      ],
                    ),
                  ),
                ),

                ///
                /// ROW 1
                ///
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      // child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 4,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 5,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 6,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 7,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 8,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 0,
                  left: sizeUnit * 9,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ1,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),

                ///
                /// ROW 2
                ///
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 4,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 5,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 6,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 7,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 8,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 1,
                  left: sizeUnit * 9,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ2,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),

                ///
                /// ROW 3
                ///
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 4,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 5,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 6,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 7,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 8,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 2,
                  left: sizeUnit * 9,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ3,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),

                ///
                /// ROW 4
                ///
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 4,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 5,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 6,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 7,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 8,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 3,
                  left: sizeUnit * 9,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ4,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),

                ///
                /// ROW 5
                ///
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 4,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 5,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 6,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 7,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 8,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 4,
                  left: sizeUnit * 9,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ5,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),

                ///
                /// ROW 6
                ///
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 4,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 5,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 6,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 7,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 8,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 5,
                  left: sizeUnit * 9,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ6,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),

                ///
                /// ROW 7
                ///
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 4,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 5,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 6,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 7,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 8,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeUnit * 6,
                  left: sizeUnit * 9,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.65),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: CrosswordPuzzleSquareWidget(
                        crosswordPuzzleSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ7,
                        sizeDx: sizeUnit - 2.0,
                        sizeDy: sizeUnit - 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// -----
/// TODO: Ô CỜ - Quản lý sự có mặt của quân cờ tại ô cờ
/// -----
class CrosswordPuzzleSquareWidget extends StatefulWidget {
  const CrosswordPuzzleSquareWidget({super.key, required this.sizeDx, required this.sizeDy, required this.crosswordPuzzleSquareStateItem});

  final double sizeDx;
  final double sizeDy;

  // final double topPosition;
  // final double leftPosition;

  // final String idPiece;

  final CrosswordPuzzleSquareStateItem? crosswordPuzzleSquareStateItem;

  @override
  State<CrosswordPuzzleSquareWidget> createState() => _CrosswordPuzzleSquareWidgetState();
}

class _CrosswordPuzzleSquareWidgetState extends State<CrosswordPuzzleSquareWidget> with TickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;
  late AnimationController _controller;

  Color backgroundColor = Color(0xFFFFFFFF);

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItem;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItem => _crosswordPuzzleSquareStateItem;
  void setCrosswordPuzzleSquareStateItem({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItem = value;
    } else {
      _crosswordPuzzleSquareStateItem ??= value;
    }

    return;
  }

  bool isHasPiece = false;
  String imageSource = '';

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    setCrosswordPuzzleSquareStateItem(value: widget.crosswordPuzzleSquareStateItem, isPriorityOverride: true);

    _ticker = createTicker((Duration elapsed) {
      if (getCrosswordPuzzleSquareStateItem?.getStateModel?.getIsHighlightBelongToAWord == true) {
        if (getIsHighlightBelongToAWord != true) {
          setState(() {
            setIsHighlightBelongToAWord(value: true, isPriorityOverride: true);
          });
        }
      } else {
        if (getIsHighlightBelongToAWord == true) {
          setState(() {
            setIsHighlightBelongToAWord(value: false, isPriorityOverride: true);
          });
        }
      }

      if (getCrosswordPuzzleSquareStateItem?.getStateModel?.getIsHighlightSolving == true) {
        if (getIsHighlightSolving != true) {
          setState(() {
            setIsHighlightSolving(value: true, isPriorityOverride: true);
          });
        }
      } else {
        if (getIsHighlightSolving == true) {
          setState(() {
            setIsHighlightSolving(value: false, isPriorityOverride: true);
          });
        }
      }

      if (getCrosswordPuzzleSquareStateItem?.getStateModel?.getIsHighlightSolved == true) {
        if (getIsHighlightSolved != true) {
          setState(() {
            setIsHighlightSolved(value: true, isPriorityOverride: true);
          });
        }
      } else {
        if (getIsHighlightSolved == true) {
          setState(() {
            setIsHighlightSolved(value: false, isPriorityOverride: true);
          });
        }
      }
    })..start();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        // flipBack();
      });
    });
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isHighlightBelongToAWord;
  bool? get getIsHighlightBelongToAWord => _isHighlightBelongToAWord;
  void setIsHighlightBelongToAWord({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isHighlightBelongToAWord = value;
    } else {
      _isHighlightBelongToAWord ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isHighlightSolving;
  bool? get getIsHighlightSolving => _isHighlightSolving;
  void setIsHighlightSolving({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isHighlightSolving = value;
    } else {
      _isHighlightSolving ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isHighlightSolved;
  bool? get getIsHighlightSolved => _isHighlightSolved;
  void setIsHighlightSolved({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isHighlightSolved = value;
    } else {
      _isHighlightSolved ??= value;
    }

    return;
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          getIsHighlightBelongToAWord == true
              ? Positioned(
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: widget.sizeDx,
                    height: widget.sizeDy,
                    decoration: BoxDecoration(color: Color(0xFF4F4F4F).withValues(alpha: 1)),
                  ),
                )
              : Container(),

          getIsHighlightSolved == true
              ? Positioned(
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: widget.sizeDx,
                    height: widget.sizeDy,
                    decoration: BoxDecoration(color: Color(0xFF54FF9F).withValues(alpha: 1)),
                  ),
                )
              : Container(),

          getIsHighlightSolved == true
              ? Positioned(
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: BackInRight(
                    duration: const Duration(milliseconds: 600),
                    child: Container(
                      width: widget.sizeDx,
                      height: widget.sizeDy,
                      color: Color(0xFFFF4040).withValues(alpha: 0),
                      child: Center(
                        child: Text(
                          getCrosswordPuzzleSquareStateItem?.getStateModel?.getCrosswordPuzzlePieceStateItem?.getStateModel?.getTextValue ?? '...',
                          style: GoogleFonts.concertOne(
                            textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFF1C1C1C), letterSpacing: 1.0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: (getIsHighlightSolving == true && getIsHighlightSolved != true) ? 0 : (-widget.sizeDy),
            left: (getIsHighlightSolving == true && getIsHighlightSolved != true) ? 0 : (-widget.sizeDx),
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withValues(alpha: 1),
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), blurRadius: 2, spreadRadius: 1, offset: Offset(1, 1))],
              ),
            ),
          ),

          Positioned(
            bottom: 15.0,
            width: widget.sizeDx - 40.0,
            height: widget.sizeDy - 40.0,
            child: Opacity(
              opacity: 0.45,
              child: Container(
                width: widget.sizeDx - 40.0,
                height: widget.sizeDy - 40.0,
                decoration: BoxDecoration(
                  image: imageSource.isNotEmpty == true ? DecorationImage(image: AssetImage(imageSource), fit: BoxFit.fitHeight) : null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlipCard extends StatefulWidget {
  const FlipCard({super.key, required this.crosswordPuzzleWordUnit, required this.sizeDx, required this.sizeDy});

  // final CrosswordPuzzleTime? crosswordPuzzleTime;
  final CrosswordPuzzleWordUnit? crosswordPuzzleWordUnit;

  final double sizeDx;
  final double sizeDy;

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with TickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;
  late AnimationController _controller;
  bool isFront = true;

  bool isBelongToAWord = false;
  bool isExploring = false;
  bool isExploratoryStatusAsPreparing = false;

  CrosswordPuzzleWordUnit? crosswordPuzzleWordUnit;

  CrosswordPuzzleWordUnit? currentCrosswordPuzzleWordUnit;

  @override
  void initState() {
    super.initState();

    crosswordPuzzleWordUnit = CrosswordPuzzleWordUnit(id: '');
    crosswordPuzzleWordUnit?.onSetupRoot();
    crosswordPuzzleWordUnit?.onInitRoot();

    currentCrosswordPuzzleWordUnit = widget.crosswordPuzzleWordUnit;

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    _ticker = createTicker((Duration elapsed) {
      if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getId != currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getId) {
        setState(() {
          crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.setId(value: currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getId, isPriorityOverride: true);
        });
      }
      if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getShowStatus != currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getShowStatus) {
        crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.setShowStatus(value: currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getShowStatus, isPriorityOverride: true);

        // if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isShow() == true) {
        //   if (isFront == true) {
        //     flipBack();
        //   }
        // }
        //
        // if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isHide() == true) {
        //   if (isFront == false) {
        //     flipFront();
        //   }
        // }

        if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isHiddenUnderneath() == true) {
          hiddenUnderneath();
        }

        // if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isShowComplete() == true) {
        //   unHiddenUnderneath();
        //   Future.delayed(Duration(milliseconds: 100), () {
        //     flipBack();
        //   });
        // }

        if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isUnHiddenUnderneath() == true) {
          unHiddenUnderneath();
        }
      }

      if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getIsBelongToAWord != currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getIsBelongToAWord) {
        crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.setIsBelongToAWord(value: currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getIsBelongToAWord, isPriorityOverride: true);

        if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isBelongToAWord() == true) {
          activateBelongToAWord();
        }
      }

      if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getExploratoryStatus != currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getExploratoryStatus) {
        crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.setExploratoryStatus(value: currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getExploratoryStatus, isPriorityOverride: true);

        if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isExploratoryStatusAsPreparing() == true) {
          activateExploratoryStatusAsPreparing();
        }

        if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.isExploratoryStatusAsExploring() == true) {
          activateExploratoryStatusAsExploring();
        }
      }

      if (crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getIsCompleteTotally != currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getIsCompleteTotally) {
        crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.setIsCompleteTotally(value: currentCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getIsCompleteTotally, isPriorityOverride: true);

        if (isFront) {
          Future.delayed(Duration(milliseconds: 100), () {
            flipBack();
          });
        }
      }

      if (true) {
        if (kDebugMode) {
          // print('a');
        }
      }
    })..start();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        // flipBack();
      });
    });
  }

  void flipFront() {
    if (!isFront) {
      _controller.reverse();
      isFront = true;

      crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.hiding();
    }
  }

  void flipBack() {
    if (isFront) {
      _controller.forward();
      isFront = false;

      crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.showing();
    }
  }

  void activateBelongToAWord() {
    if (isBelongToAWord == false) {
      setState(() {
        isBelongToAWord = true;
      });
    }
  }

  void activateExploratoryStatusAsPreparing() {
    if (isExploratoryStatusAsPreparing == false) {
      setState(() {
        isExploratoryStatusAsPreparing = true;
      });
    }
  }

  void activateExploratoryStatusAsExploring() {
    if (isExploratoryStatusAsPreparing == true) {
      setState(() {
        isExploratoryStatusAsPreparing = false;
      });
    }
  }

  void hiddenUnderneath() {
    if (isHiddenUnderneath == false) {
      setState(() {
        isHiddenUnderneath = true;
      });
    }
  }

  void unHiddenUnderneath() {
    if (isHiddenUnderneath == true) {
      setState(() {
        isHiddenUnderneath = false;
      });
    }
  }

  bool isHiddenUnderneath = false;

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          isBelongToAWord
              ? AnimatedPositioned(
                  top: 0,
                  left: 0,
                  duration: const Duration(milliseconds: 300),
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: Container(
                    width: widget.sizeDx,
                    height: widget.sizeDy,
                    decoration: BoxDecoration(
                      color: Color(0xFF00BFFF).withValues(alpha: 1),
                      // border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
                    ),
                  ),
                )
              : AnimatedPositioned(
                  top: 0,
                  left: 0,
                  duration: const Duration(milliseconds: 300),
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: Container(
                    width: widget.sizeDx,
                    height: widget.sizeDy,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF).withValues(alpha: 1),
                      // border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
                    ),
                  ),
                ),

          isBelongToAWord
              ? AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    final angle = _controller.value * pi;

                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001) // tạo hiệu ứng 3D
                        ..rotateY(angle),
                      child: angle <= pi / 2 ? front() : Transform(alignment: Alignment.center, transform: Matrix4.rotationY(pi), child: back()),
                    );
                  },
                )
              : Container(),

          !isBelongToAWord
              ? AnimatedPositioned(
                  top: isHiddenUnderneath ? 0 : -widget.sizeDy,
                  left: isHiddenUnderneath ? 0 : -widget.sizeDx,
                  duration: const Duration(milliseconds: 300),
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: Container(
                    width: widget.sizeDx,
                    height: widget.sizeDy,
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                      // border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
                    ),
                  ),
                )
              : Container(),

          isBelongToAWord
              ? AnimatedPositioned(
                  top: isExploratoryStatusAsPreparing ? 0 : -widget.sizeDy,
                  right: isExploratoryStatusAsPreparing ? 0 : -widget.sizeDx,
                  duration: const Duration(milliseconds: 300),
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: Container(
                    width: widget.sizeDx,
                    height: widget.sizeDy,
                    decoration: BoxDecoration(
                      color: Color(0xFF1C1C1C).withValues(alpha: 0.65),
                      // border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget front() {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withValues(alpha: 0.55),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
      ),
      alignment: Alignment.center,
      child: Text('FRONT ${crosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.getId ?? '...'}', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }

  Widget back() {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withValues(alpha: 0.55),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
      ),
      alignment: Alignment.center,
      child: const Text('BACK', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}
