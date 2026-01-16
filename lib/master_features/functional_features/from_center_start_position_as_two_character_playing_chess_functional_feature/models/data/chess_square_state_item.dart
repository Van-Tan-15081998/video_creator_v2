import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square.dart';

class ChessSquareStateItem {
  /// -----
  /// TODO:
  /// -----
  ChessSquare? _stateModel;
  ChessSquare? get getStateModel => _stateModel;
  void setStateModel({required ChessSquare? value, bool? isPriorityOverride}) {
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
  ChessSquareStateItem({required ChessSquare? stateModel}) {
    setStateModel(value: stateModel, isPriorityOverride: true);
  }
}
