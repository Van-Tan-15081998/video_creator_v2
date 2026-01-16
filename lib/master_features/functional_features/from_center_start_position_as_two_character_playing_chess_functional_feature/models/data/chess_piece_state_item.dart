import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece.dart';

class ChessPieceStateItem {
  /// -----
  /// TODO:
  /// -----
  ChessPiece? _stateModel;
  ChessPiece? get getStateModel => _stateModel;
  void setStateModel({required ChessPiece? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stateModel = value;
    } else {
      _stateModel ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ChessPieceStateItem({required ChessPiece? stateModel}) {
    setStateModel(value: stateModel, isPriorityOverride: true);
  }
}
