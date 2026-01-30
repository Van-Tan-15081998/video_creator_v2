import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_piece_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/square_crossword_puzzle_board_management.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class CrosswordPuzzleSquare with ExecutionCore {
  CrosswordPuzzleSquare({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  SquareCrosswordPuzzleBoardManagement? _squareCrosswordPuzzleBoardManagement;
  SquareCrosswordPuzzleBoardManagement? get getSquareCrosswordPuzzleBoardManagement => _squareCrosswordPuzzleBoardManagement;
  void setSquareCrosswordPuzzleBoardManagement({required SquareCrosswordPuzzleBoardManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _squareCrosswordPuzzleBoardManagement = value;
    } else {
      _squareCrosswordPuzzleBoardManagement ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A1-H1
  /// -----
  CrosswordPuzzleSquare.a1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_A1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.b1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_B1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.c1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_C1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.d1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_D1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.e1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_E1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.f1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_F1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.g1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_G1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.h1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_H1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.i1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_I1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.j1({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_J1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }

  /// -----
  /// TODO: ROW A2-H2
  /// -----
  CrosswordPuzzleSquare.a2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_A2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.b2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_B2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.c2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_C2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.d2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_D2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.e2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_E2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.f2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_F2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.g2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_G2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.h2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_H2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.i2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_I2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.j2({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_J2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }

  /// -----
  /// TODO: ROW A3-H3
  /// -----
  CrosswordPuzzleSquare.a3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_A3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.b3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_B3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.c3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_C3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.d3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_D3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.e3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_E3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.f3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_F3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.g3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_G3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.h3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_H3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.i3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_I3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.j3({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_J3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }

  /// -----
  /// TODO: ROW A4-H4
  /// -----
  CrosswordPuzzleSquare.a4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_A4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.b4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_B4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.c4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_C4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.d4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_D4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.e4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_E4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.f4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_F4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.g4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_G4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.h4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_H4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.i4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_I4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.j4({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_J4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }

  /// -----
  /// TODO: ROW A5-H5
  /// -----
  CrosswordPuzzleSquare.a5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_A5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.b5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_B5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.c5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_C5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.d5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_D5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.e5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_E5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.f5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_F5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.g5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_G5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.h5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_H5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.i5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_I5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.j5({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_J5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }

  /// -----
  /// TODO: ROW A6-H6
  /// -----
  CrosswordPuzzleSquare.a6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_A6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.b6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_B6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.c6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_C6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.d6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_D6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.e6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_E6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.f6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_F6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.g6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_G6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.h6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_H6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.i6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_I6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.j6({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_J6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }

  /// -----
  /// TODO: ROW A7-H7
  /// -----
  CrosswordPuzzleSquare.a7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_A7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.b7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_B7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.c7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_C7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.d7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_D7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.e7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_E7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.f7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_F7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.g7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_G7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.h7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_H7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.i7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_I7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    ///
  }
  CrosswordPuzzleSquare.j7({required SystemStateManagement? systemStateManagement, required SquareCrosswordPuzzleBoardManagement? squareCrosswordPuzzleBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareCrosswordPuzzleBoardManagement(value: squareCrosswordPuzzleBoardManagement, isPriorityOverride: true);

    setId(value: '[CROSSWORD_PUZZLE_SQUARE_J7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

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
  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItem;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItem => _crosswordPuzzlePieceStateItem;
  void setCrosswordPuzzlePieceStateItem({required CrosswordPuzzlePieceStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzlePieceStateItem = value;
    } else {
      _crosswordPuzzlePieceStateItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool isEmptyChessPiece() {
    if (getCrosswordPuzzlePieceStateItem == null) {
      return true;
    }
    return false;
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

  /// -----
  /// TODO:
  /// -----
  void onSolving() {
    if (getCrosswordPuzzlePieceStateItem?.getStateModel?.getTextValue?.isNotEmpty == true) {
      setIsHighlightSolving(value: true, isPriorityOverride: true);
    }
  }

  /// -----
  /// TODO:
  /// -----
  void onSolved() {
    if (getCrosswordPuzzlePieceStateItem?.getStateModel?.getTextValue?.isNotEmpty == true) {
      setIsHighlightSolved(value: true, isPriorityOverride: true);
    }
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
      await onReportRootIssue(nameFunction: '[onAttachRoot');
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

      setChessSquareStateItemAsList();
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRoot');
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  void initChessSquareStateItemAsList() {
    ///
  }

  void setChessSquareStateItemAsList() {
    ///
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
      setCrosswordPuzzlePieceStateItem(value: CrosswordPuzzlePieceStateItem(stateModel: null), isPriorityOverride: true);

      /// -----
      /// TODO: Setup Root For SubCom
      /// -----
      if (isIgnoreSetupRootForSubCom == null || isIgnoreSetupRootForSubCom == false) {
        await onSetupRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRoot');
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
      await onReportRootIssue(nameFunction: '[onResetRoot');
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
      await onReportRootIssue(nameFunction: '[onAttachRootForSubCom');
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
      await onReportRootIssue(nameFunction: '[onSetupRootForSubCom');
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
      await onReportRootIssue(nameFunction: '[onInitRootForSubCom');
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
      await onReportRootIssue(nameFunction: '[onResetRootForSubCom');
    }

    ///
    return;
  }
}
