import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/system_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_square_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/square_crossword_puzzle_board_management.dart';

enum CrosswordPuzzleSquareEnum {
  sqr00,

  sqrA1,
  sqrA2,
  sqrA3,
  sqrA4,
  sqrA5,
  sqrA6,
  sqrA7,
  //
  sqrB1,
  sqrB2,
  sqrB3,
  sqrB4,
  sqrB5,
  sqrB6,
  sqrB7,
  //
  sqrC1,
  sqrC2,
  sqrC3,
  sqrC4,
  sqrC5,
  sqrC6,
  sqrC7,
  //
  sqrD1,
  sqrD2,
  sqrD3,
  sqrD4,
  sqrD5,
  sqrD6,
  sqrD7,
  //
  sqrE1,
  sqrE2,
  sqrE3,
  sqrE4,
  sqrE5,
  sqrE6,
  sqrE7,
  //
  sqrF1,
  sqrF2,
  sqrF3,
  sqrF4,
  sqrF5,
  sqrF6,
  sqrF7,
  //
  sqrG1,
  sqrG2,
  sqrG3,
  sqrG4,
  sqrG5,
  sqrG6,
  sqrG7,
  //
  sqrH1,
  sqrH2,
  sqrH3,
  sqrH4,
  sqrH5,
  sqrH6,
  sqrH7,
  //
  sqrI1,
  sqrI2,
  sqrI3,
  sqrI4,
  sqrI5,
  sqrI6,
  sqrI7,
  //
  sqrJ1,
  sqrJ2,
  sqrJ3,
  sqrJ4,
  sqrJ5,
  sqrJ6,
  sqrJ7,
}

class OpenSolvingModel {
  OpenSolvingModel({required CrosswordPuzzleSquareEnum square}) {
    _square = square;
  }

  CrosswordPuzzleSquareEnum? _square;
  CrosswordPuzzleSquareEnum? get getSquare => _square;
}

class OpenSolvedModel {
  OpenSolvedModel({required CrosswordPuzzleSquareEnum square}) {
    _square = square;
  }

  CrosswordPuzzleSquareEnum? _square;
  CrosswordPuzzleSquareEnum? get getSquare => _square;
}

/// ----- | ----- | -----
/// TODO:
/// ----- | ----- | -----
class CrosswordPuzzleActionModel {
  CrosswordPuzzleActionModel({required FunctionalSequentialExecutionController? functionalSequentialExecutionController, required SystemSequentialExecutionScript? systemSequentialExecutionScript}) {
    setFunctionalSequentialExecutionController(value: functionalSequentialExecutionController, isPriorityOverride: true);
    setSystemSequentialExecutionScript(value: systemSequentialExecutionScript, isPriorityOverride: true);
  }

  ///
  /// TODO:
  ///
  FunctionalSequentialExecutionController? _functionalSequentialExecutionController;
  FunctionalSequentialExecutionController? get getFunctionalSequentialExecutionController => _functionalSequentialExecutionController;
  void setFunctionalSequentialExecutionController({required FunctionalSequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionController = value;
    } else {
      _functionalSequentialExecutionController ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  SystemSequentialExecutionScript? _systemSequentialExecutionScript;
  SystemSequentialExecutionScript? get getSystemSequentialExecutionScript => _systemSequentialExecutionScript;
  void setSystemSequentialExecutionScript({required SystemSequentialExecutionScript? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _systemSequentialExecutionScript = value;
    } else {
      _systemSequentialExecutionScript ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onOpenSolvingSquare({
    required ContentItemUnit? contentItemUnit, //
    required OpenSolvingModel? openSolvingData, //
    required int? gapTime,
  }) {
    ///
    if (openSolvingData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
              ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
              ..onSetupRoot()
              ..onInitRoot()
              ..onStart = () {
                if (kDebugMode) {
                  print('[ON_START]_____[_]');
                }

                ///
              }
              ..onPerform = () {
                if (kDebugMode) {
                  print('[ON_PERFORM]_____[_]');
                }
                //
                CrosswordPuzzleSquareStateItem? square = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: openSolvingData.getSquare);

                Future.delayed(Duration(milliseconds: 100), () {
                  square?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square);
                });

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onOpenSolvedSquare({
    required ContentItemUnit? contentItemUnit, //
    required OpenSolvedModel? openSolvedData, //
    required int? gapTime,
  }) {
    ///
    if (openSolvedData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
              ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
              ..onSetupRoot()
              ..onInitRoot()
              ..onStart = () {
                if (kDebugMode) {
                  print('[ON_START]_____[_]');
                }

                ///
              }
              ..onPerform = () {
                if (kDebugMode) {
                  print('[ON_PERFORM]_____[_]');
                }
                //
                CrosswordPuzzleSquareStateItem? square = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: openSolvedData.getSquare);

                Future.delayed(Duration(milliseconds: 100), () {
                  square?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square);
                });

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleSquareStateItem? getCrosswordPuzzleSquareStateItemById({required SystemSequentialExecutionScript? systemSequentialExecutionScript, required CrosswordPuzzleSquareEnum? id}) {
    CrosswordPuzzleSquareStateItem? result;

    SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement = systemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getSquareCrosswordPuzzleBoardManagement;

    switch (id) {
      case null:
        // TODO: Handle this case.
        {
          break;
        }
      case CrosswordPuzzleSquareEnum.sqr00:
        // TODO: Handle this case.
        {
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrA1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrA2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrA3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrA4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrA5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrA6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrA7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemA7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrB1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrB2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrB3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrB4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrB5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrB6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrB7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemB7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrC1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrC2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrC3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrC4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrC5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrC6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrC7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemC7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrD1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrD2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrD3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrD4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrD5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrD6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrD7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemD7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrE1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrE2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrE3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrE4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrE5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrE6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrE7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemE7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrF1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrF2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrF3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrF4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrF5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrF6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrF7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemF7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrG1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrG2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrG3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrG4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrG5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrG6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrG7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemG7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrH1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrH2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrH3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrH4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrH5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrH6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrH7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemH7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrI1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrI2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrI3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrI4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrI5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrI6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrI7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemI7;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrJ1:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ1;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrJ2:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ2;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrJ3:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ3;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrJ4:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ4;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrJ5:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ5;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrJ6:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ6;
          break;
        }
      case CrosswordPuzzleSquareEnum.sqrJ7:
        // TODO: Handle this case.
        {
          result = squareCrosswordPuzzleBoardManagement?.getCrosswordPuzzleSquareStateItemJ7;
          break;
        }
    }

    return result;
  }

  /// -----
  /// TODO: Solving Row 1 (A1-J1)
  /// -----
  void onOpenSolvingRowA1J1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA1);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB1);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC1);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD1);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE1);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF1);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG1);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH1);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI1);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ1);

              Future.delayed(Duration(milliseconds: 100), () {
                squareA?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 100), () {
                  squareB?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 100), () {
                    squareC?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 100), () {
                      squareD?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 100), () {
                        squareE?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 100), () {
                          squareF?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 100), () {
                            squareG?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 100), () {
                              squareH?.getStateModel?.onSolving();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 100), () {
                                squareI?.getStateModel?.onSolving();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 100), () {
                                  squareJ?.getStateModel?.onSolving();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Row 2 (A2-J2)
  /// -----
  void onOpenSolvingRowA2J2({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA2);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB2);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC2);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD2);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE2);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF2);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG2);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH2);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI2);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ2);

              Future.delayed(Duration(milliseconds: 100), () {
                squareA?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 100), () {
                  squareB?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 100), () {
                    squareC?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 100), () {
                      squareD?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 100), () {
                        squareE?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 100), () {
                          squareF?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 100), () {
                            squareG?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 100), () {
                              squareH?.getStateModel?.onSolving();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 100), () {
                                squareI?.getStateModel?.onSolving();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 100), () {
                                  squareJ?.getStateModel?.onSolving();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Row 3 (A3-J3)
  /// -----
  void onOpenSolvingRowA3J3({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA3);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB3);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC3);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD3);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE3);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF3);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG3);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH3);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI3);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ3);

              Future.delayed(Duration(milliseconds: 100), () {
                squareA?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 100), () {
                  squareB?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 100), () {
                    squareC?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 100), () {
                      squareD?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 100), () {
                        squareE?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 100), () {
                          squareF?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 100), () {
                            squareG?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 100), () {
                              squareH?.getStateModel?.onSolving();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 100), () {
                                squareI?.getStateModel?.onSolving();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 100), () {
                                  squareJ?.getStateModel?.onSolving();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Row 4 (A4-J4)
  /// -----
  void onOpenSolvingRowA4J4({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA4);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB4);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC4);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD4);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE4);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF4);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG4);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH4);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI4);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ4);

              Future.delayed(Duration(milliseconds: 100), () {
                squareA?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 100), () {
                  squareB?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 100), () {
                    squareC?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 100), () {
                      squareD?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 100), () {
                        squareE?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 100), () {
                          squareF?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 100), () {
                            squareG?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 100), () {
                              squareH?.getStateModel?.onSolving();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 100), () {
                                squareI?.getStateModel?.onSolving();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 100), () {
                                  squareJ?.getStateModel?.onSolving();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Row 5 (A5-J5)
  /// -----
  void onOpenSolvingRowA5J5({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA5);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB5);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC5);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD5);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE5);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF5);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG5);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH5);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI5);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ5);

              Future.delayed(Duration(milliseconds: 100), () {
                squareA?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 100), () {
                  squareB?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 100), () {
                    squareC?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 100), () {
                      squareD?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 100), () {
                        squareE?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 100), () {
                          squareF?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 100), () {
                            squareG?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 100), () {
                              squareH?.getStateModel?.onSolving();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 100), () {
                                squareI?.getStateModel?.onSolving();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 100), () {
                                  squareJ?.getStateModel?.onSolving();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Row 6 (A6-J6)
  /// -----
  void onOpenSolvingRowA6J6({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA6);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB6);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC6);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD6);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE6);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF6);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG6);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH6);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI6);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ6);

              Future.delayed(Duration(milliseconds: 100), () {
                squareA?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 100), () {
                  squareB?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 100), () {
                    squareC?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 100), () {
                      squareD?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 100), () {
                        squareE?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 100), () {
                          squareF?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 100), () {
                            squareG?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 100), () {
                              squareH?.getStateModel?.onSolving();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 100), () {
                                squareI?.getStateModel?.onSolving();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 100), () {
                                  squareJ?.getStateModel?.onSolving();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Row 7 (A7-J7)
  /// -----
  void onOpenSolvingRowA7J7({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA7);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB7);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC7);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD7);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE7);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF7);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG7);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH7);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI7);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ7);

              Future.delayed(Duration(milliseconds: 100), () {
                squareA?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 100), () {
                  squareB?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 100), () {
                    squareC?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 100), () {
                      squareD?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 100), () {
                        squareE?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 100), () {
                          squareF?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 100), () {
                            squareG?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 100), () {
                              squareH?.getStateModel?.onSolving();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 100), () {
                                squareI?.getStateModel?.onSolving();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 100), () {
                                  squareJ?.getStateModel?.onSolving();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 1 (A7-A1)
  /// -----
  void onOpenSolvingColumnA7A1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 2 (B7-B1)
  /// -----
  void onOpenSolvingColumnB7B1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 3 (C7-C1)
  /// -----
  void onOpenSolvingColumnC7C1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 4 (D7-D1)
  /// -----
  void onOpenSolvingColumnD7D1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 5 (E7-E1)
  /// -----
  void onOpenSolvingColumnE7E1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 6 (F7-F1)
  /// -----
  void onOpenSolvingColumnF7F1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 7 (G7-G1)
  /// -----
  void onOpenSolvingColumnG7G1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 8 (H7-H1)
  /// -----
  void onOpenSolvingColumnH7H1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 9 (I7-I1)
  /// -----
  void onOpenSolvingColumnI7I1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solving Column 10 (J7-J1)
  /// -----
  void onOpenSolvingColumnJ7J1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ7);

              Future.delayed(Duration(milliseconds: 100), () {
                square7?.getStateModel?.onSolving();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 100), () {
                  square6?.getStateModel?.onSolving();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 100), () {
                    square5?.getStateModel?.onSolving();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 100), () {
                      square4?.getStateModel?.onSolving();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 100), () {
                        square3?.getStateModel?.onSolving();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 100), () {
                          square2?.getStateModel?.onSolving();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 100), () {
                            square1?.getStateModel?.onSolving();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvingCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Solved Row 1 (A1-J1)
  /// -----
  void onOpenSolvedRowA1J1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA1);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB1);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC1);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD1);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE1);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF1);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG1);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH1);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI1);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ1);

              Future.delayed(Duration(milliseconds: 200), () {
                squareA?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 200), () {
                  squareB?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 200), () {
                    squareC?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 200), () {
                      squareD?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 200), () {
                        squareE?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 200), () {
                          squareF?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 200), () {
                            squareG?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 200), () {
                              squareH?.getStateModel?.onSolved();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 200), () {
                                squareI?.getStateModel?.onSolved();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 200), () {
                                  squareJ?.getStateModel?.onSolved();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Row 2 (A2-J2)
  /// -----
  void onOpenSolvedRowA2J2({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA2);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB2);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC2);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD2);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE2);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF2);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG2);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH2);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI2);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ2);

              Future.delayed(Duration(milliseconds: 200), () {
                squareA?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 200), () {
                  squareB?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 200), () {
                    squareC?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 200), () {
                      squareD?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 200), () {
                        squareE?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 200), () {
                          squareF?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 200), () {
                            squareG?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 200), () {
                              squareH?.getStateModel?.onSolved();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 200), () {
                                squareI?.getStateModel?.onSolved();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 200), () {
                                  squareJ?.getStateModel?.onSolved();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Row 3 (A3-J3)
  /// -----
  void onOpenSolvedRowA3J3({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA3);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB3);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC3);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD3);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE3);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF3);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG3);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH3);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI3);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ3);

              Future.delayed(Duration(milliseconds: 200), () {
                squareA?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 200), () {
                  squareB?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 200), () {
                    squareC?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 200), () {
                      squareD?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 200), () {
                        squareE?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 200), () {
                          squareF?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 200), () {
                            squareG?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 200), () {
                              squareH?.getStateModel?.onSolved();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 200), () {
                                squareI?.getStateModel?.onSolved();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 200), () {
                                  squareJ?.getStateModel?.onSolved();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Row 4 (A4-J4)
  /// -----
  void onOpenSolvedRowA4J4({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA4);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB4);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC4);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD4);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE4);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF4);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG4);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH4);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI4);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ4);

              Future.delayed(Duration(milliseconds: 200), () {
                squareA?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 200), () {
                  squareB?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 200), () {
                    squareC?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 200), () {
                      squareD?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 200), () {
                        squareE?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 200), () {
                          squareF?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 200), () {
                            squareG?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 200), () {
                              squareH?.getStateModel?.onSolved();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 200), () {
                                squareI?.getStateModel?.onSolved();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 200), () {
                                  squareJ?.getStateModel?.onSolved();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Row 5 (A5-J5)
  /// -----
  void onOpenSolvedRowA5J5({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA5);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB5);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC5);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD5);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE5);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF5);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG5);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH5);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI5);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ5);

              Future.delayed(Duration(milliseconds: 200), () {
                squareA?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 200), () {
                  squareB?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 200), () {
                    squareC?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 200), () {
                      squareD?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 200), () {
                        squareE?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 200), () {
                          squareF?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 200), () {
                            squareG?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 200), () {
                              squareH?.getStateModel?.onSolved();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 200), () {
                                squareI?.getStateModel?.onSolved();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 200), () {
                                  squareJ?.getStateModel?.onSolved();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Row 6 (A6-J6)
  /// -----
  void onOpenSolvedRowA6J6({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA6);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB6);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC6);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD6);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE6);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF6);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG6);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH6);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI6);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ6);

              Future.delayed(Duration(milliseconds: 200), () {
                squareA?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 200), () {
                  squareB?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 200), () {
                    squareC?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 200), () {
                      squareD?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 200), () {
                        squareE?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 200), () {
                          squareF?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 200), () {
                            squareG?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 200), () {
                              squareH?.getStateModel?.onSolved();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 200), () {
                                squareI?.getStateModel?.onSolved();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 200), () {
                                  squareJ?.getStateModel?.onSolved();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Row 7 (A7-J7)
  /// -----
  void onOpenSolvedRowA7J7({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? squareA = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA7);
              CrosswordPuzzleSquareStateItem? squareB = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB7);
              CrosswordPuzzleSquareStateItem? squareC = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC7);
              CrosswordPuzzleSquareStateItem? squareD = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD7);
              CrosswordPuzzleSquareStateItem? squareE = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE7);
              CrosswordPuzzleSquareStateItem? squareF = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF7);
              CrosswordPuzzleSquareStateItem? squareG = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG7);
              CrosswordPuzzleSquareStateItem? squareH = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH7);
              CrosswordPuzzleSquareStateItem? squareI = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI7);
              CrosswordPuzzleSquareStateItem? squareJ = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ7);

              Future.delayed(Duration(milliseconds: 200), () {
                squareA?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareA);
                Future.delayed(Duration(milliseconds: 200), () {
                  squareB?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareB);
                  Future.delayed(Duration(milliseconds: 200), () {
                    squareC?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareC);
                    Future.delayed(Duration(milliseconds: 200), () {
                      squareD?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareD);
                      Future.delayed(Duration(milliseconds: 200), () {
                        squareE?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareE);
                        Future.delayed(Duration(milliseconds: 200), () {
                          squareF?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareF);
                          Future.delayed(Duration(milliseconds: 200), () {
                            squareG?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareG);
                            Future.delayed(Duration(milliseconds: 200), () {
                              squareH?.getStateModel?.onSolved();
                              getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareH);
                              Future.delayed(Duration(milliseconds: 200), () {
                                squareI?.getStateModel?.onSolved();
                                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareI);
                                Future.delayed(Duration(milliseconds: 200), () {
                                  squareJ?.getStateModel?.onSolved();
                                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(squareJ);
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 1 (A7-A1)
  /// -----
  void onOpenSolvedColumnA7A1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrA7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 2 (B7-B1)
  /// -----
  void onOpenSolvedColumnB7B1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrB7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 3 (C7-C1)
  /// -----
  void onOpenSolvedColumnC7C1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrC7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 4 (D7-D1)
  /// -----
  void onOpenSolvedColumnD7D1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrD7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 5 (E7-E1)
  /// -----
  void onOpenSolvedColumnE7E1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrE7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 6 (F7-F1)
  /// -----
  void onOpenSolvedColumnF7F1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrF7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 7 (G7-G1)
  /// -----
  void onOpenSolvedColumnG7G1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrG7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 8 (H7-H1)
  /// -----
  void onOpenSolvedColumnH7H1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrH7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 9 (I7-I1)
  /// -----
  void onOpenSolvedColumnI7I1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrI7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO: Solved Column 10 (J7-J1)
  /// -----
  void onOpenSolvedColumnJ7J1({
    required ContentItemUnit? contentItemUnit, //
    required int? gapTime,
  }) {
    ///
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asCrosswordPuzzleFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
              //
              CrosswordPuzzleSquareStateItem? square1 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ1);
              CrosswordPuzzleSquareStateItem? square2 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ2);
              CrosswordPuzzleSquareStateItem? square3 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ3);
              CrosswordPuzzleSquareStateItem? square4 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ4);
              CrosswordPuzzleSquareStateItem? square5 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ5);
              CrosswordPuzzleSquareStateItem? square6 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ6);
              CrosswordPuzzleSquareStateItem? square7 = getCrosswordPuzzleSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: CrosswordPuzzleSquareEnum.sqrJ7);

              Future.delayed(Duration(milliseconds: 200), () {
                square7?.getStateModel?.onSolved();
                getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square7);
                Future.delayed(Duration(milliseconds: 200), () {
                  square6?.getStateModel?.onSolved();
                  getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square6);
                  Future.delayed(Duration(milliseconds: 200), () {
                    square5?.getStateModel?.onSolved();
                    getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square5);
                    Future.delayed(Duration(milliseconds: 200), () {
                      square4?.getStateModel?.onSolved();
                      getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square4);
                      Future.delayed(Duration(milliseconds: 200), () {
                        square3?.getStateModel?.onSolved();
                        getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square3);
                        Future.delayed(Duration(milliseconds: 200), () {
                          square2?.getStateModel?.onSolved();
                          getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square2);
                          Future.delayed(Duration(milliseconds: 200), () {
                            square1?.getStateModel?.onSolved();
                            getSystemSequentialExecutionScript?.getSystemStateManagement?.getMusicAndSound?.onPlaySFXSolvedCrosswordPuzzle(square1);
                          });
                        });
                      });
                    });
                  });
                });
              });

              ///
            },
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }
}
