import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/system_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/square_chess_board_management.dart';

enum ChessSquare {
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

class MoveModel {
  MoveModel({required ChessSquare origin, required ChessSquare destination}) {
    _origin = origin;
    _destination = destination;
  }

  ChessSquare? _origin;
  ChessSquare? get getOrigin => _origin;

  ChessSquare? _destination;
  ChessSquare? get getDestination => _destination;
}

class SpecifyDisplayModel {
  SpecifyDisplayModel({required ChessSquare? origin}) {
    _origin = origin;
  }

  ChessSquare? _origin;
  ChessSquare? get getOrigin => _origin;
}

class CheckmateModel {
  CheckmateModel({required ChessSquare? origin}) {
    _origin = origin;
  }

  ChessSquare? _origin;
  ChessSquare? get getOrigin => _origin;
}

class CaptureModel {
  CaptureModel({required ChessSquare origin, required ChessSquare destination}) {
    _origin = origin;
    _destination = destination;
  }

  ChessSquare? _origin;
  ChessSquare? get getOrigin => _origin;

  ChessSquare? _destination;
  ChessSquare? get getDestination => _destination;
}

class CastlingModel {
  CastlingModel({required ChessSquare king, required ChessSquare rook}) {
    _king = king;
    _rook = rook;
  }

  ChessSquare? _king;
  ChessSquare? get getKing => _king;

  ChessSquare? _rook;
  ChessSquare? get getRook => _rook;
}

class PawnPromotionModel {
  PawnPromotionModel({
    bool? isPromoteToQueen, //
    bool? isPromoteToRook, //
    bool? isPromoteToBishop, //
    bool? isPromoteToKnight, //
    required ChessSquare origin,
    required ChessSquare destination,
  }) {
    _isPromoteToQueen = isPromoteToQueen;
    _isPromoteToRook = isPromoteToRook;
    _isPromoteToBishop = isPromoteToBishop;
    _isPromoteToKnight = isPromoteToKnight;

    _origin = origin;
    _destination = destination;
  }

  bool? _isPromoteToQueen;
  bool? get getIsPromoteToQueen => _isPromoteToQueen;

  bool? _isPromoteToRook;
  bool? get getIsPromoteToRook => _isPromoteToRook;

  bool? _isPromoteToBishop;
  bool? get getIsPromoteToBishop => _isPromoteToBishop;

  bool? _isPromoteToKnight;
  bool? get getIsPromoteToKnight => _isPromoteToKnight;

  ChessSquare? _origin;
  ChessSquare? get getOrigin => _origin;

  ChessSquare? _destination;
  ChessSquare? get getDestination => _destination;
}

class LegalMoveModel {
  LegalMoveModel({required ChessSquare origin}) {
    _origin = origin;
  }

  ChessSquare? _origin;
  ChessSquare? get getOrigin => _origin;
}

/// ----- | ----- | -----
/// TODO:
/// ----- | ----- | -----
class ChessActionModel {
  ChessActionModel({required FunctionalSequentialExecutionController? functionalSequentialExecutionController, required SystemSequentialExecutionScript? systemSequentialExecutionScript}) {
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
  void onPawnPromotion({
    required ContentItemUnit? contentItemUnit, //
    required PawnPromotionModel? pawnPromotionData, //
    required int? gapTime,
  }) {
    ///
    if (pawnPromotionData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asChessFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
                ChessSquareStateItem? origin = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: pawnPromotionData.getOrigin);
                ChessSquareStateItem? destination = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: pawnPromotionData.getDestination);

                getSystemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.onPawnPromotion(
                  isPromoteToQueen: pawnPromotionData.getIsPromoteToQueen,
                  isPromoteToBishop: pawnPromotionData.getIsPromoteToBishop,
                  isPromoteToKnight: pawnPromotionData.getIsPromoteToKnight,
                  isPromoteToRook: pawnPromotionData.getIsPromoteToRook,
                  origin: origin,
                  destination: destination,
                );

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }
  }

  /// -----
  /// TODO:
  /// -----
  void onLegalMove({
    required ContentItemUnit? contentItemUnit, //
    required LegalMoveModel? legalMoveData, //
    required int? gapTime,
  }) {
    ///

    if (legalMoveData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asChessFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
                ChessSquareStateItem? origin = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: legalMoveData.getOrigin);

                getSystemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.getLegalMoves(chessSquareStateItem: origin);

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }
  }

  /// -----
  /// TODO:
  /// -----
  void onCapture({
    required ContentItemUnit? contentItemUnit, //
    required CaptureModel? captureData, //
    required int? gapTime,
  }) {
    ///
    if (captureData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asChessFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
                ChessSquareStateItem? origin = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: captureData.getOrigin);
                ChessSquareStateItem? destination = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: captureData.getDestination);

                getSystemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.onCapture(origin: origin, destination: destination);

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }
  }

  /// -----
  /// TODO:
  /// -----
  void onCastling({
    required ContentItemUnit? contentItemUnit, //
    required CaptureModel? castlingData, //
    required int? gapTime,
  }) {
    ///

    if (castlingData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asChessFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
                ChessSquareStateItem? king = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: castlingData.getOrigin);
                ChessSquareStateItem? rook = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: castlingData.getDestination);

                getSystemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.onCastling(king: king, rook: rook);

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }
  }

  /// -----
  /// TODO:
  /// -----
  void onMove({
    required ContentItemUnit? contentItemUnit, //
    required MoveModel? moveData,
    required int? gapTime,
  }) {
    ///
    if (moveData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asChessFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
                ChessSquareStateItem? origin = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: moveData.getOrigin);
                ChessSquareStateItem? destination = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: moveData.getDestination);

                getSystemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.onMove(origin: origin, destination: destination);

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }
  }

  /// -----
  /// TODO:
  /// -----
  onSpecifyDisplay({
    required ContentItemUnit? contentItemUnit, //
    required SpecifyDisplayModel? specifyDisplayData,
    required int? gapTime,
  }) {
    ///
    if (specifyDisplayData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asChessFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
                ChessSquareStateItem? origin = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: specifyDisplayData.getOrigin);

                getSystemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.onSpecifyDisplay(origin: origin);

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }
  }

  /// -----
  /// TODO:
  /// -----
  onCheckmate({
    required ContentItemUnit? contentItemUnit, //
    required CheckmateModel? checkmateData,
    required int? gapTime,
  }) {
    ///
    if (checkmateData != null) {
      contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
        ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
          FunctionalSequentialExecutionStepItemState(
            stateModel: FunctionalSequentialExecutionStepItem.asChessFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
                ChessSquareStateItem? origin = getChessSquareStateItemById(systemSequentialExecutionScript: getSystemSequentialExecutionScript, id: checkmateData.getOrigin);

                getSystemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement?.onCheckmate(origin: origin);

                ///
              },
          ),
        )
        ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);
    }
  }

  /// -----
  /// TODO:
  /// -----
  ChessSquareStateItem? getChessSquareStateItemById({required SystemSequentialExecutionScript? systemSequentialExecutionScript, required ChessSquare? id}) {
    ChessSquareStateItem? result;

    SquareChessBoardManagement? squareChessBoardManagement = systemSequentialExecutionScript?.getSystemStateManagement?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getSquareChessBoardManagement;

    // switch (id ?? ChessSquare.sqr00) {
    //   case ChessSquare.sqr00:
    //     // TODO: Handle this case.
    //     {
    //       break;
    //     }
    //   case ChessSquare.sqrA1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemA1;
    //       break;
    //     }
    //   case ChessSquare.sqrA2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemA2;
    //       break;
    //     }
    //   case ChessSquare.sqrA3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemA3;
    //       break;
    //     }
    //   case ChessSquare.sqrA4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemA4;
    //       break;
    //     }
    //   case ChessSquare.sqrA5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemA5;
    //       break;
    //     }
    //   case ChessSquare.sqrA6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemA6;
    //       break;
    //     }
    //   case ChessSquare.sqrA7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemA7;
    //       break;
    //     }
    //   case ChessSquare.sqrB1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemB1;
    //       break;
    //     }
    //   case ChessSquare.sqrB2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemB2;
    //       break;
    //     }
    //   case ChessSquare.sqrB3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemB3;
    //       break;
    //     }
    //   case ChessSquare.sqrB4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemB4;
    //       break;
    //     }
    //   case ChessSquare.sqrB5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemB5;
    //       break;
    //     }
    //   case ChessSquare.sqrB6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemB6;
    //       break;
    //     }
    //   case ChessSquare.sqrB7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemB7;
    //       break;
    //     }
    //   case ChessSquare.sqrC1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemC1;
    //       break;
    //     }
    //   case ChessSquare.sqrC2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemC2;
    //       break;
    //     }
    //   case ChessSquare.sqrC3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemC3;
    //       break;
    //     }
    //   case ChessSquare.sqrC4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemC4;
    //       break;
    //     }
    //   case ChessSquare.sqrC5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemC5;
    //       break;
    //     }
    //   case ChessSquare.sqrC6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemC6;
    //       break;
    //     }
    //   case ChessSquare.sqrC7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemC7;
    //       break;
    //     }
    //
    //   case ChessSquare.sqrD1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemD1;
    //       break;
    //     }
    //   case ChessSquare.sqrD2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemD2;
    //       break;
    //     }
    //   case ChessSquare.sqrD3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemD3;
    //       break;
    //     }
    //   case ChessSquare.sqrD4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemD4;
    //       break;
    //     }
    //   case ChessSquare.sqrD5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemD5;
    //       break;
    //     }
    //   case ChessSquare.sqrD6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemD6;
    //       break;
    //     }
    //   case ChessSquare.sqrD7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemD7;
    //       break;
    //     }
    //
    //   case ChessSquare.sqrE1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemE1;
    //       break;
    //     }
    //   case ChessSquare.sqrE2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemE2;
    //       break;
    //     }
    //   case ChessSquare.sqrE3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemE3;
    //       break;
    //     }
    //   case ChessSquare.sqrE4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemE4;
    //       break;
    //     }
    //   case ChessSquare.sqrE5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemE5;
    //       break;
    //     }
    //   case ChessSquare.sqrE6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemE6;
    //       break;
    //     }
    //   case ChessSquare.sqrE7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemE7;
    //       break;
    //     }
    //
    //   case ChessSquare.sqrF1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemF1;
    //       break;
    //     }
    //   case ChessSquare.sqrF2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemF2;
    //       break;
    //     }
    //   case ChessSquare.sqrF3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemF3;
    //       break;
    //     }
    //   case ChessSquare.sqrF4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemF4;
    //       break;
    //     }
    //   case ChessSquare.sqrF5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemF5;
    //       break;
    //     }
    //   case ChessSquare.sqrF6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemF6;
    //       break;
    //     }
    //   case ChessSquare.sqrF7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemF7;
    //       break;
    //     }
    //
    //   case ChessSquare.sqrG1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemG1;
    //       break;
    //     }
    //   case ChessSquare.sqrG2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemG2;
    //       break;
    //     }
    //   case ChessSquare.sqrG3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemG3;
    //       break;
    //     }
    //   case ChessSquare.sqrG4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemG4;
    //       break;
    //     }
    //   case ChessSquare.sqrG5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemG5;
    //       break;
    //     }
    //   case ChessSquare.sqrG6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemG6;
    //       break;
    //     }
    //   case ChessSquare.sqrG7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemG7;
    //       break;
    //     }
    //
    //   case ChessSquare.sqrH1:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemH1;
    //       break;
    //     }
    //   case ChessSquare.sqrH2:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemH2;
    //       break;
    //     }
    //   case ChessSquare.sqrH3:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemH3;
    //       break;
    //     }
    //   case ChessSquare.sqrH4:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemH4;
    //       break;
    //     }
    //   case ChessSquare.sqrH5:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemH5;
    //       break;
    //     }
    //   case ChessSquare.sqrH6:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemH6;
    //       break;
    //     }
    //   case ChessSquare.sqrH7:
    //     // TODO: Handle this case.
    //     {
    //       result = squareChessBoardManagement?.getChessSquareStateItemH7;
    //       break;
    //     }
    //
    // }

    return result;
  }
}
