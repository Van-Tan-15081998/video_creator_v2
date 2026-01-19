import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget_light.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_time.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square_state_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class SquareChessBoardWidget extends StatefulWidget {
  const SquareChessBoardWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<SquareChessBoardWidget> createState() => _SquareChessBoardWidgetState();
}

class _SquareChessBoardWidgetState extends State<SquareChessBoardWidget> with TickerProviderStateMixin {
  late final Ticker _ticker;

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _currentMemoryWordUnit;
  MemoryWordUnit? get getCurrentMemoryWordUnit => _currentMemoryWordUnit;
  void setCurrentMemoryWordUnit({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentMemoryWordUnit = value;
    } else {
      _currentMemoryWordUnit ??= value;
    }

    return;
  }

  String currentWord = '';

  @override
  void initState() {
    super.initState();

    setCurrentMemoryWordUnit(value: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime?.getCurrentMemoryWordUnit, isPriorityOverride: true);

    // sizeUnit = widget.sizeDx / 4;
    sizeUnit = 1200 / 8;

    _ticker = createTicker((Duration elapsed) {
      if (currentWord != getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.getId) {
        setState(() {
          currentWord = getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.getId ?? '...';
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
      children: [
        ///
        /// TODO: DANH SÁCH Ô CỜ
        ///
        Stack(
          alignment: AlignmentDirectional.center,

          children: [
            Positioned(
              right: 0,
              width: 1200.0,
              height: 1200.0,
              child: Container(
                padding: EdgeInsets.all(0),
                width: 1200.0,
                height: 1200.0,

                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withValues(alpha: 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      width: 1200.0,
                      height: 1200.0,
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA8,
                            idPiece: '[A8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 0,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB8,
                            idPiece: '[B8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 1,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC8,
                            idPiece: '[C8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 2,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD8,
                            idPiece: '[D8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 3,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE8,
                            idPiece: '[E8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 4,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF8,
                            idPiece: '[F8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 5,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG8,
                            idPiece: '[G8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 6,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH8,
                            idPiece: '[H8]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 0,
                            leftPosition: sizeUnit * 7,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA7,
                            idPiece: '[A7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 0,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB7,
                            idPiece: '[B7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 1,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC7,
                            idPiece: '[C7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 2,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD7,
                            idPiece: '[D7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 3,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE7,
                            idPiece: '[E7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 4,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF7,
                            idPiece: '[F7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 5,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG7,
                            idPiece: '[G7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 6,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH7,
                            idPiece: '[H7]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 1,
                            leftPosition: sizeUnit * 7,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA6,
                            idPiece: '[A6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 0,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB6,
                            idPiece: '[B6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 1,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC6,
                            idPiece: '[C6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 2,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD6,
                            idPiece: '[D6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 3,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE6,
                            idPiece: '[E6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 4,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF6,
                            idPiece: '[F6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 5,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG6,
                            idPiece: '[G6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 6,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH6,
                            idPiece: '[H6]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 2,
                            leftPosition: sizeUnit * 7,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA5,
                            idPiece: '[A5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 0,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB5,
                            idPiece: '[B5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 1,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC5,
                            idPiece: '[C5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 2,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD5,
                            idPiece: '[D5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 3,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE5,
                            idPiece: '[E5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 4,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF5,
                            idPiece: '[F5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 5,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG5,
                            idPiece: '[G5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 6,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH5,
                            idPiece: '[H5]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 3,
                            leftPosition: sizeUnit * 7,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA4,
                            idPiece: '[A4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 0,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB4,
                            idPiece: '[B4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 1,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC4,
                            idPiece: '[C4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 2,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD4,
                            idPiece: '[D4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 3,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE4,
                            idPiece: '[E4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 4,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF4,
                            idPiece: '[F4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 5,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG4,
                            idPiece: '[G4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 6,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH4,
                            idPiece: '[H4]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 4,
                            leftPosition: sizeUnit * 7,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA3,
                            idPiece: '[A3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 0,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB3,
                            idPiece: '[B3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 1,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC3,
                            idPiece: '[C3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 2,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD3,
                            idPiece: '[D3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 3,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE3,
                            idPiece: '[E3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 4,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF3,
                            idPiece: '[F3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 5,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG3,
                            idPiece: '[G3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 6,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH3,
                            idPiece: '[H3]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 5,
                            leftPosition: sizeUnit * 7,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA2,
                            idPiece: '[A2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 0,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB2,
                            idPiece: '[B2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 1,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC2,
                            idPiece: '[C2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 2,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD2,
                            idPiece: '[D2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 3,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE2,
                            idPiece: '[E2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 4,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF2,
                            idPiece: '[F2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 5,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG2,
                            idPiece: '[G2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 6,
                          ),
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
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH2,
                            idPiece: '[H2]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 6,
                            leftPosition: sizeUnit * 7,
                          ),
                        ),
                      ),
                    ),

                    ///
                    /// ROW 8
                    ///
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 0,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemA1,
                            idPiece: '[A1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 1,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemB1,
                            idPiece: '[B1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 2,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemC1,
                            idPiece: '[C1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 2,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 3,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemD1,
                            idPiece: '[D1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 3,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 4,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemE1,
                            idPiece: '[E1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 4,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 5,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemF1,
                            idPiece: '[F1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 5,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 6,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemG1,
                            idPiece: '[G1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 6,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: sizeUnit * 7,
                      left: sizeUnit * 7,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessSquareWidget(
                            chessSquareStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessSquareStateItemH1,
                            idPiece: '[H1]',
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            topPosition: sizeUnit * 7,
                            leftPosition: sizeUnit * 7,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        ///
        /// TODO: DANH SÁCH QUÂN CỜ
        ///
        ///
        /// TODO: DANH SÁCH QUÂN CỜ
        ///
        Stack(
          alignment: AlignmentDirectional.center,

          children: [
            Positioned(
              right: 0,
              width: 1200.0,
              height: 1200.0,
              child: Container(
                padding: EdgeInsets.all(0),
                width: 1200.0,
                height: 1200.0,

                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withValues(alpha: 0),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    /// -----
                    /// TODO: King
                    /// -----
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKingE1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKingE1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKingE1,
                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKingE8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKingE8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKingE8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    /// -----
                    /// TODO: Queen
                    /// -----
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemQueenD1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemQueenD1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemQueenD1,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemQueenD8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemQueenD8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemQueenD8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    /// -----
                    /// TODO: Rook
                    /// -----
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookA1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookA1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookA1,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookH1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookH1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookH1,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookA8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookA8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookA8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookH8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookH8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemRookH8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    /// -----
                    /// TODO: Bishop
                    /// -----
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopC1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopC1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopC1,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopF1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopF1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopF1,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopC8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopC8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopC8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopF8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopF8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemBishopF8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    /// -----
                    /// TODO: Knight
                    /// -----
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightB1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightB1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightB1,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightG1?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightG1?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightG1,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightB8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightB8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightB8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightG8?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightG8?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemKnightG8,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    /// -----
                    /// TODO: Pawn
                    /// -----
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnA2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnA2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnA2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnB2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnB2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnB2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnC2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnC2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnC2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnD2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnD2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnD2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnE2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnE2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnE2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnF2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnF2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnF2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnG2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnG2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnG2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnH2?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnH2?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnH2,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnA7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnA7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnA7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnB7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnB7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnB7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnC7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnC7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnC7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnD7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnD7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnD7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnE7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnE7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnE7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnF7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnF7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnF7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnG7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnG7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnG7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnH7?.getStateModel?.getTopPosition,
                      left: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnH7?.getStateModel?.getLeftPosition,
                      width: sizeUnit,
                      height: sizeUnit,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: sizeUnit,
                          height: sizeUnit,

                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                            border: Border.all(width: 0, color: Color(0xFF000000).withValues(alpha: 0)),
                          ),
                          child: ChessPieceWidget(
                            chessPieceStateItem: widget.systemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getChessPieceManagement?.getChessPieceStateItemPawnH7,

                            sizeDx: sizeUnit,
                            sizeDy: sizeUnit,
                            onUpdateMove: () {
                              setState(() {
                                ///
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// -----
/// TODO: Ô CỜ - Quản lý sự có mặt của quân cờ tại ô cờ
/// -----
class ChessSquareWidget extends StatefulWidget {
  const ChessSquareWidget({super.key, required this.sizeDx, required this.sizeDy, required this.topPosition, required this.leftPosition, required this.idPiece, required this.chessSquareStateItem});

  final double sizeDx;
  final double sizeDy;

  final double topPosition;
  final double leftPosition;

  final String idPiece;

  final ChessSquareStateItem? chessSquareStateItem;

  @override
  State<ChessSquareWidget> createState() => _ChessSquareWidgetState();
}

class _ChessSquareWidgetState extends State<ChessSquareWidget> with TickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;
  late AnimationController _controller;

  Color backgroundColor = Color(0xFFFFFFFF);

  /// -----
  /// TODO:
  /// -----
  ChessSquareStateItem? _chessSquareStateItem;

  ChessSquareStateItem? get getChessSquareStateItem => _chessSquareStateItem;

  void setChessSquareStateItem({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItem = value;
    } else {
      _chessSquareStateItem ??= value;
    }

    return;
  }

  bool isHasPiece = false;
  String imageSource = '';

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    setChessSquareStateItem(value: widget.chessSquareStateItem, isPriorityOverride: true);

    getChessSquareStateItem?.getStateModel?.setTopPosition(value: widget.topPosition, isPriorityOverride: true);
    getChessSquareStateItem?.getStateModel?.setLeftPosition(value: widget.leftPosition, isPriorityOverride: true);

    getChessSquareStateItem?.getStateModel?.onPositionSynchronize();

    _ticker = createTicker((Duration elapsed) {
      if (true) {
        if (getChessSquareStateItem?.getStateModel?.getChessPieceStateItem?.getStateModel?.getImageSource?.isNotEmpty == true) {
          if (isHasPiece == false) {
            setState(() {
              isHasPiece = true;
              imageSource = getChessSquareStateItem?.getStateModel?.getChessPieceStateItem?.getStateModel?.getImageSource ?? '';
            });
          }
        } else {
          setState(() {
            isHasPiece = false;
            imageSource = '';
          });
        }

        if (kDebugMode) {
          // print('a');
        }
      }
    })..start();

    onSetBackgroundColor();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        // flipBack();

        if (getChessSquareStateItem?.getStateModel?.getIsHighlightCanMoveByChessPiece == true) {
          if (getIsHighlightCanMoveByChessPiece != true) {
            setState(() {
              setIsHighlightCanMoveByChessPiece(value: true, isPriorityOverride: true);
            });
          }
        }
      });
    });
  }

  /// -----
  /// TODO:
  /// -----
  bool? isHighlightCanMoveByChessPiece;

  bool? get getIsHighlightCanMoveByChessPiece => isHighlightCanMoveByChessPiece;

  void setIsHighlightCanMoveByChessPiece({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      isHighlightCanMoveByChessPiece = value;
    } else {
      isHighlightCanMoveByChessPiece ??= value;
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
      borderRadius: BorderRadius.circular(0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(color: backgroundColor),
            ),
          ),
          getIsHighlightCanMoveByChessPiece == true
              ? AnimatedPositioned(
                  top: 5.0,
                  right: 5.0,
                  duration: const Duration(milliseconds: 500),
                  width: 20.0,
                  height: 20.0,
                  child: Container(width: 20.0, height: 20.0, decoration: BoxDecoration(color: Colors.blue)),
                )
              : Container(),
          // AnimatedPositioned(
          //   bottom: 15.0,
          //   duration: const Duration(milliseconds: 500),
          //   width: widget.sizeDx - 40.0,
          //   height: widget.sizeDy - 40.0,
          //   child: Container(
          //     width: widget.sizeDx - 40.0,
          //     height: widget.sizeDy - 40.0,
          //     decoration: BoxDecoration(
          //       image: imageSource.isNotEmpty == true ? DecorationImage(image: AssetImage(imageSource), fit: BoxFit.fitHeight) : null,
          //     ),
          //     child: Center(
          //       child: Text(widget.idPiece, style: TextStyle(color: Colors.white)),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  onSetBackgroundColor() {
    switch (getChessSquareStateItem?.getStateModel?.getId) {
      /// [FROM BOTTOM TO TOP] ROW 1
      case '[CHESS_SQUARE_A1]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_B1]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_C1]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_D1]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_E1]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_F1]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_G1]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_H1]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;

      /// [FROM BOTTOM TO TOP] ROW 2
      case '[CHESS_SQUARE_A2]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_B2]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_C2]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_D2]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_E2]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_F2]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_G2]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_H2]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;

      /// [FROM BOTTOM TO TOP] ROW 3
      case '[CHESS_SQUARE_A3]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_B3]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_C3]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_D3]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_E3]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_F3]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_G3]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_H3]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;

      /// [FROM BOTTOM TO TOP] ROW 4
      case '[CHESS_SQUARE_A4]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_B4]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_C4]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_D4]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_E4]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_F4]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_G4]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_H4]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;

      /// [FROM BOTTOM TO TOP] ROW 5
      case '[CHESS_SQUARE_A5]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_B5]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_C5]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_D5]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_E5]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_F5]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_G5]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_H5]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;

      /// [FROM BOTTOM TO TOP] ROW 6
      case '[CHESS_SQUARE_A6]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_B6]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_C6]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_D6]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_E6]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_F6]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_G6]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_H6]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;

      /// [FROM BOTTOM TO TOP] ROW 7
      case '[CHESS_SQUARE_A7]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_B7]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_C7]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_D7]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_E7]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_F7]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_G7]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_H7]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;

      /// [FROM BOTTOM TO TOP] ROW 8
      case '[CHESS_SQUARE_A8]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_B8]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_C8]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_D8]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_E8]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_F8]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
      case '[CHESS_SQUARE_G8]':
        {
          backgroundColor = Color(0xFFedecd3);
        }
        break;
      case '[CHESS_SQUARE_H8]':
        {
          backgroundColor = Color(0xFF72945a);
        }
        break;
    }
  }
}

///
///
///
///
///
///
///
///
///
class ChessPieceWidget extends StatefulWidget {
  const ChessPieceWidget({super.key, required this.sizeDx, required this.sizeDy, required this.chessPieceStateItem, required this.onUpdateMove});

  final double sizeDx;
  final double sizeDy;

  final ChessPieceStateItem? chessPieceStateItem;

  final VoidCallback? onUpdateMove;

  @override
  State<ChessPieceWidget> createState() => _ChessPieceWidgetState();
}

class _ChessPieceWidgetState extends State<ChessPieceWidget> with TickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;
  late AnimationController _controller;

  Color backgroundColor = Color(0xFFFFFFFF);

  /// -----
  /// TODO:
  /// -----
  ChessPieceStateItem? _chessPieceStateItem;
  ChessPieceStateItem? get getChessPieceStateItem => _chessPieceStateItem;
  void setChessPieceStateItem({required ChessPieceStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessPieceStateItem = value;
    } else {
      _chessPieceStateItem ??= value;
    }

    return;
  }

  bool isHasPiece = false;
  String imageSource = '';

  double topPosition = 0;
  double leftPosition = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    setChessPieceStateItem(value: widget.chessPieceStateItem, isPriorityOverride: true);
    imageSource = getChessPieceStateItem?.getStateModel?.getImageSource ?? '';

    _ticker = createTicker((Duration elapsed) {
      if (getChessPieceStateItem?.getStateModel?.getTopPosition != topPosition || getChessPieceStateItem?.getStateModel?.getLeftPosition != leftPosition) {
        widget.onUpdateMove?.call();
        topPosition = getChessPieceStateItem?.getStateModel?.getTopPosition ?? 0;
        leftPosition = getChessPieceStateItem?.getStateModel?.getLeftPosition ?? 0;
      }
    })..start();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        ///
      });
    });
  }

  /// -----
  /// TODO:
  /// -----
  bool? isHighlightCanMoveByChessPiece;
  bool? get getIsHighlightCanMoveByChessPiece => isHighlightCanMoveByChessPiece;
  void setIsHighlightCanMoveByChessPiece({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      isHighlightCanMoveByChessPiece = value;
    } else {
      isHighlightCanMoveByChessPiece ??= value;
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
      borderRadius: BorderRadius.circular(0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedPositioned(
            bottom: 15.0,
            duration: const Duration(milliseconds: 500),
            width: widget.sizeDx - 40.0,
            height: widget.sizeDy - 40.0,
            child: Container(
              width: widget.sizeDx - 40.0,
              height: widget.sizeDy - 40.0,
              decoration: BoxDecoration(
                image: imageSource.isNotEmpty == true ? DecorationImage(image: AssetImage(imageSource), fit: BoxFit.fitHeight) : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
