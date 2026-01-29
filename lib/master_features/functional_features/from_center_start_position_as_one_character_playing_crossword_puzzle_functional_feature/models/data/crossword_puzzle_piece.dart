import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_piece_management.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_management.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square_state_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class CrosswordPuzzlePiece with ExecutionCore {
  CrosswordPuzzlePiece({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePieceManagement? _crosswordPuzzlePieceManagement;
  CrosswordPuzzlePieceManagement? get getCrosswordPuzzlePieceManagement => _crosswordPuzzlePieceManagement;
  void setCrosswordPuzzlePieceManagement({required CrosswordPuzzlePieceManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzlePieceManagement = value;
    } else {
      _crosswordPuzzlePieceManagement ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 1
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrA1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrB1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrC1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrD1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrE1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrF1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrG1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrH1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrI1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrJ1({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 2
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrA2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrB2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrC2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrD2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrE2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrF2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrG2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrH2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrI2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrJ2({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 3
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrA3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrB3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrC3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrD3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrE3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrF3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrG3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrH3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrI3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrJ3({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 4
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrA4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrB4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrC4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrD4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrE4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrF4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrG4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrH4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrI4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrJ4({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 5
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrA5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrB5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrC5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrD5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrE5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrF5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrG5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrH5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrI5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrJ5({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 6
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrA6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrB6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrC6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrD6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrE6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrF6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrG6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrH6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrI6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrJ6({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 7
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrA7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrB7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrC7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrD7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrE7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrF7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrG7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrH7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrI7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzlePiece.sqrJ7({required CrosswordPuzzlePieceManagement? crosswordPuzzlePieceManagement}) {
    setCrosswordPuzzlePieceManagement(value: crosswordPuzzlePieceManagement, isPriorityOverride: true);

    setId(value: '[]', isPriorityOverride: true);
    setTypeColor(value: '[]', isPriorityOverride: true);
    setImageSource(value: '', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO:
  /// -----
  String? _id;
  String? get getId => _id;
  void setId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _id = value;
    } else {
      _id ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _imageSource;
  String? get getImageSource => _imageSource;
  void setImageSource({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _imageSource = value;
    } else {
      _imageSource ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _typeColor;
  String? get getTypeColor => _typeColor;
  void setTypeColor({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _typeColor = value;
    } else {
      _typeColor ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? isEnemy({required String? type}) {
    if (type != getTypeColor && getTypeColor?.isNotEmpty == true) {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: King
  /// -----
  bool isKing() {
    if (getId == '[KING_E1]' || getId == '[KING_E8]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Queen
  /// -----
  bool isQueen() {
    if (getId == '[QUEEN_D1]' || getId == '[QUEEN_D8]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Rook
  /// -----
  bool isRook() {
    if (getId == '[ROOK_A1]' || getId == '[ROOK_H1]' || getId == '[ROOK_A8]' || getId == '[ROOK_H8]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Bishop
  /// -----
  bool isBishop() {
    if (getId == '[BISHOP_C1]' || getId == '[BISHOP_F1]' || getId == '[BISHOP_C8]' || getId == '[BISHOP_F8]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Knight
  /// -----
  bool isKnight() {
    if (getId == '[KNIGHT_B1]' || getId == '[KNIGHT_G1]' || getId == '[KNIGHT_B8]' || getId == '[KNIGHT_G8]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Pawn
  /// -----
  bool isPawn() {
    if (getId == '[PAWN_A2]' ||
        getId == '[PAWN_B2]' ||
        getId == '[PAWN_C2]' ||
        getId == '[PAWN_D2]' ||
        getId == '[PAWN_E2]' ||
        getId == '[PAWN_F2]' ||
        getId == '[PAWN_G2]' ||
        ///
        getId == '[PAWN_H2]' ||
        getId == '[PAWN_A7]' ||
        getId == '[PAWN_B7]' ||
        getId == '[PAWN_C7]' ||
        getId == '[PAWN_D7]' ||
        getId == '[PAWN_E7]' ||
        getId == '[PAWN_F7]' ||
        getId == '[PAWN_G7]' ||
        getId == '[PAWN_H7]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO:
  /// -----
  double? _topPosition;
  double get getTopPosition => _topPosition ?? 0;
  void setTopPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topPosition = value;
    } else {
      _topPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _leftPosition;
  double get getLeftPosition => _leftPosition ?? 0;
  void setLeftPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _leftPosition = value;
    } else {
      _leftPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _wasCaptured;
  bool? get getWasCaptured => _wasCaptured;
  void setWasCaptured({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _wasCaptured = value;
    } else {
      _wasCaptured ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ChessSquareStateItem? _currentChessSquareStateItem;
  ChessSquareStateItem? get getCurrentChessSquareStateItem => _currentChessSquareStateItem;
  void setCurrentChessSquareStateItem({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentChessSquareStateItem = value;
    } else {
      _currentChessSquareStateItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Attach Root
  /// -----
  @override
  Future<void> onAttachRoot({required dynamic attachValue, bool? isIgnoreAttachRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Attach Root For SubCom
      /// -----
      if (isIgnoreAttachRootForSubCom == null || isIgnoreAttachRootForSubCom == false) {
        await onAttachRootForSubCom(attachValue: attachValue);
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onAttachRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root
  /// -----
  @override
  Future<void> onInitRoot({bool? isIgnoreInitRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (isIgnoreInitRootForSubCom == null || isIgnoreInitRootForSubCom == false) {
        await onInitRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root
  /// -----
  @override
  Future<void> onSetupRoot({bool? isIgnoreSetupRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Setup Root For SubCom
      /// -----
      if (isIgnoreSetupRootForSubCom == null || isIgnoreSetupRootForSubCom == false) {
        await onSetupRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root
  /// -----
  @override
  Future<void> onResetRoot({bool? isIgnoreResetRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (isIgnoreResetRootForSubCom == null || isIgnoreResetRootForSubCom == false) {
        await onResetRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Attach Root For SubCom
  /// -----
  @override
  Future<void> onAttachRootForSubCom({required dynamic attachValue}) async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onAttachRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root For SubCom
  /// -----
  @override
  Future<void> onSetupRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root For SubCom
  /// -----
  @override
  Future<void> onInitRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root For SubCom
  /// -----
  @override
  Future<void> onResetRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRootForSubCom]');
    }

    ///
    return;
  }
}
