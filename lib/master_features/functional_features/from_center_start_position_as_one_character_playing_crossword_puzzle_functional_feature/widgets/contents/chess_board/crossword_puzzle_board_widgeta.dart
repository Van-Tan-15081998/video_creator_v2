import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget_light.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_data_model.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

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
          height: widget.sizeDx,
          child: Container(
            padding: EdgeInsets.all(0),
            width: widget.sizeDx,
            height: widget.sizeDx,

            decoration: BoxDecoration(
              color: Color(0xFF002200).withValues(alpha: 0.5),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            ),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  width: widget.sizeDx,
                  height: widget.sizeDx,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        child: TransparentEffectWallWidgetLight(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
                      ),
                    ],
                  ),
                ),

                ///
                /// ROW 1
                ///
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA06, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA07, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA08, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA09, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 2
                ///
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB02, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB03, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB04, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 3
                ///
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC07, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC08, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC09, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 4
                ///
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD08, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD09, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 5
                ///
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE02, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE03, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE04, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE05, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 4,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 6
                ///
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF02, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF03, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF09, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 5,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 7
                ///
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG01, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG02, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG03, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG04, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG05, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG06, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG07, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG08, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG09, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 6,
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
                      child: FlipCard(crosswordPuzzleWordUnit: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
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
