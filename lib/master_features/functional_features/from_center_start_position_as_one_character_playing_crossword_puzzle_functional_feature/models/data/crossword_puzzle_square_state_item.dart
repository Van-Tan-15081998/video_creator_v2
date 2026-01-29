import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_square.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square.dart';

class CrosswordPuzzleSquareStateItem {
  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleSquare? _stateModel;
  CrosswordPuzzleSquare? get getStateModel => _stateModel;
  void setStateModel({required CrosswordPuzzleSquare? value, bool? isPriorityOverride}) {
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
  CrosswordPuzzleSquareStateItem({required CrosswordPuzzleSquare? stateModel}) {
    setStateModel(value: stateModel, isPriorityOverride: true);
  }
}
