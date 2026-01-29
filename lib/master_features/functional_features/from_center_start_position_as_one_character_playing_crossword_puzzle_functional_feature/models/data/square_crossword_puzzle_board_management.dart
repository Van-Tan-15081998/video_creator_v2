import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_square.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_square_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_management.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square_state_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class SquareCrosswordPuzzleBoardManagement with ExecutionCore {
  SquareCrosswordPuzzleBoardManagement({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
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
  ChessPieceManagement? _chessPieceManagement;
  ChessPieceManagement? get getChessPieceManagement => _chessPieceManagement;
  void setChessPieceManagement({required ChessPieceManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessPieceManagement = value;
    } else {
      _chessPieceManagement ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A1-J1
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemA1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemA1 => _crosswordPuzzleSquareStateItemA1;
  void setCrosswordPuzzleSquareStateItemA1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemA1 = value;
    } else {
      _crosswordPuzzleSquareStateItemA1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemB1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemB1 => _crosswordPuzzleSquareStateItemB1;
  void setCrosswordPuzzleSquareStateItemB1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemB1 = value;
    } else {
      _crosswordPuzzleSquareStateItemB1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemC1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemC1 => _crosswordPuzzleSquareStateItemC1;
  void setCrosswordPuzzleSquareStateItemC1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemC1 = value;
    } else {
      _crosswordPuzzleSquareStateItemC1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemD1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemD1 => _crosswordPuzzleSquareStateItemD1;
  void setCrosswordPuzzleSquareStateItemD1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemD1 = value;
    } else {
      _crosswordPuzzleSquareStateItemD1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemE1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemE1 => _crosswordPuzzleSquareStateItemE1;
  void setCrosswordPuzzleSquareStateItemE1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemE1 = value;
    } else {
      _crosswordPuzzleSquareStateItemE1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemF1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemF1 => _crosswordPuzzleSquareStateItemF1;
  void setCrosswordPuzzleSquareStateItemF1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemF1 = value;
    } else {
      _crosswordPuzzleSquareStateItemF1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemG1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemG1 => _crosswordPuzzleSquareStateItemG1;
  void setCrosswordPuzzleSquareStateItemG1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemG1 = value;
    } else {
      _crosswordPuzzleSquareStateItemG1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemH1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemH1 => _crosswordPuzzleSquareStateItemH1;
  void setCrosswordPuzzleSquareStateItemH1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemH1 = value;
    } else {
      _crosswordPuzzleSquareStateItemH1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemI1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemI1 => _crosswordPuzzleSquareStateItemI1;
  void setCrosswordPuzzleSquareStateItemI1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemI1 = value;
    } else {
      _crosswordPuzzleSquareStateItemI1 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemJ1;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemJ1 => _crosswordPuzzleSquareStateItemJ1;
  void setCrosswordPuzzleSquareStateItemJ1({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemJ1 = value;
    } else {
      _crosswordPuzzleSquareStateItemJ1 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A2-J2
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemA2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemA2 => _crosswordPuzzleSquareStateItemA2;
  void setCrosswordPuzzleSquareStateItemA2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemA2 = value;
    } else {
      _crosswordPuzzleSquareStateItemA2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemB2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemB2 => _crosswordPuzzleSquareStateItemB2;
  void setCrosswordPuzzleSquareStateItemB2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemB2 = value;
    } else {
      _crosswordPuzzleSquareStateItemB2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemC2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemC2 => _crosswordPuzzleSquareStateItemC2;
  void setCrosswordPuzzleSquareStateItemC2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemC2 = value;
    } else {
      _crosswordPuzzleSquareStateItemC2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemD2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemD2 => _crosswordPuzzleSquareStateItemD2;
  void setCrosswordPuzzleSquareStateItemD2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemD2 = value;
    } else {
      _crosswordPuzzleSquareStateItemD2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemE2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemE2 => _crosswordPuzzleSquareStateItemE2;
  void setCrosswordPuzzleSquareStateItemE2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemE2 = value;
    } else {
      _crosswordPuzzleSquareStateItemE2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemF2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemF2 => _crosswordPuzzleSquareStateItemF2;
  void setCrosswordPuzzleSquareStateItemF2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemF2 = value;
    } else {
      _crosswordPuzzleSquareStateItemF2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemG2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemG2 => _crosswordPuzzleSquareStateItemG2;
  void setCrosswordPuzzleSquareStateItemG2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemG2 = value;
    } else {
      _crosswordPuzzleSquareStateItemG2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemH2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemH2 => _crosswordPuzzleSquareStateItemH2;
  void setCrosswordPuzzleSquareStateItemH2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemH2 = value;
    } else {
      _crosswordPuzzleSquareStateItemH2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemI2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemI2 => _crosswordPuzzleSquareStateItemI2;
  void setCrosswordPuzzleSquareStateItemI2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemI2 = value;
    } else {
      _crosswordPuzzleSquareStateItemI2 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemJ2;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemJ2 => _crosswordPuzzleSquareStateItemJ2;
  void setCrosswordPuzzleSquareStateItemJ2({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemJ2 = value;
    } else {
      _crosswordPuzzleSquareStateItemJ2 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A3-J3
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemA3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemA3 => _crosswordPuzzleSquareStateItemA3;
  void setCrosswordPuzzleSquareStateItemA3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemA3 = value;
    } else {
      _crosswordPuzzleSquareStateItemA3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemB3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemB3 => _crosswordPuzzleSquareStateItemB3;
  void setCrosswordPuzzleSquareStateItemB3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemB3 = value;
    } else {
      _crosswordPuzzleSquareStateItemB3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemC3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemC3 => _crosswordPuzzleSquareStateItemC3;
  void setCrosswordPuzzleSquareStateItemC3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemC3 = value;
    } else {
      _crosswordPuzzleSquareStateItemC3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemD3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemD3 => _crosswordPuzzleSquareStateItemD3;
  void setCrosswordPuzzleSquareStateItemD3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemD3 = value;
    } else {
      _crosswordPuzzleSquareStateItemD3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemE3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemE3 => _crosswordPuzzleSquareStateItemE3;
  void setCrosswordPuzzleSquareStateItemE3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemE3 = value;
    } else {
      _crosswordPuzzleSquareStateItemE3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemF3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemF3 => _crosswordPuzzleSquareStateItemF3;
  void setCrosswordPuzzleSquareStateItemF3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemF3 = value;
    } else {
      _crosswordPuzzleSquareStateItemF3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemG3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemG3 => _crosswordPuzzleSquareStateItemG3;
  void setCrosswordPuzzleSquareStateItemG3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemG3 = value;
    } else {
      _crosswordPuzzleSquareStateItemG3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemH3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemH3 => _crosswordPuzzleSquareStateItemH3;
  void setCrosswordPuzzleSquareStateItemH3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemH3 = value;
    } else {
      _crosswordPuzzleSquareStateItemH3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemI3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemI3 => _crosswordPuzzleSquareStateItemI3;
  void setCrosswordPuzzleSquareStateItemI3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemI3 = value;
    } else {
      _crosswordPuzzleSquareStateItemI3 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemJ3;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemJ3 => _crosswordPuzzleSquareStateItemJ3;
  void setCrosswordPuzzleSquareStateItemJ3({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemJ3 = value;
    } else {
      _crosswordPuzzleSquareStateItemJ3 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A4-J4
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemA4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemA4 => _crosswordPuzzleSquareStateItemA4;
  void setCrosswordPuzzleSquareStateItemA4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemA4 = value;
    } else {
      _crosswordPuzzleSquareStateItemA4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemB4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemB4 => _crosswordPuzzleSquareStateItemB4;
  void setCrosswordPuzzleSquareStateItemB4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemB4 = value;
    } else {
      _crosswordPuzzleSquareStateItemB4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemC4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemC4 => _crosswordPuzzleSquareStateItemC4;
  void setCrosswordPuzzleSquareStateItemC4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemC4 = value;
    } else {
      _crosswordPuzzleSquareStateItemC4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemD4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemD4 => _crosswordPuzzleSquareStateItemD4;
  void setCrosswordPuzzleSquareStateItemD4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemD4 = value;
    } else {
      _crosswordPuzzleSquareStateItemD4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemE4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemE4 => _crosswordPuzzleSquareStateItemE4;
  void setCrosswordPuzzleSquareStateItemE4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemE4 = value;
    } else {
      _crosswordPuzzleSquareStateItemE4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemF4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemF4 => _crosswordPuzzleSquareStateItemF4;
  void setCrosswordPuzzleSquareStateItemF4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemF4 = value;
    } else {
      _crosswordPuzzleSquareStateItemF4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemG4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemG4 => _crosswordPuzzleSquareStateItemG4;
  void setCrosswordPuzzleSquareStateItemG4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemG4 = value;
    } else {
      _crosswordPuzzleSquareStateItemG4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemH4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemH4 => _crosswordPuzzleSquareStateItemH4;
  void setCrosswordPuzzleSquareStateItemH4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemH4 = value;
    } else {
      _crosswordPuzzleSquareStateItemH4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemI4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemI4 => _crosswordPuzzleSquareStateItemI4;
  void setCrosswordPuzzleSquareStateItemI4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemI4 = value;
    } else {
      _crosswordPuzzleSquareStateItemI4 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemJ4;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemJ4 => _crosswordPuzzleSquareStateItemJ4;
  void setCrosswordPuzzleSquareStateItemJ4({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemJ4 = value;
    } else {
      _crosswordPuzzleSquareStateItemJ4 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A5-J5
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemA5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemA5 => _crosswordPuzzleSquareStateItemA5;
  void setCrosswordPuzzleSquareStateItemA5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemA5 = value;
    } else {
      _crosswordPuzzleSquareStateItemA5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemB5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemB5 => _crosswordPuzzleSquareStateItemB5;
  void setCrosswordPuzzleSquareStateItemB5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemB5 = value;
    } else {
      _crosswordPuzzleSquareStateItemB5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemC5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemC5 => _crosswordPuzzleSquareStateItemC5;
  void setCrosswordPuzzleSquareStateItemC5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemC5 = value;
    } else {
      _crosswordPuzzleSquareStateItemC5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemD5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemD5 => _crosswordPuzzleSquareStateItemD5;
  void setCrosswordPuzzleSquareStateItemD5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemD5 = value;
    } else {
      _crosswordPuzzleSquareStateItemD5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemE5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemE5 => _crosswordPuzzleSquareStateItemE5;
  void setCrosswordPuzzleSquareStateItemE5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemE5 = value;
    } else {
      _crosswordPuzzleSquareStateItemE5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemF5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemF5 => _crosswordPuzzleSquareStateItemF5;
  void setCrosswordPuzzleSquareStateItemF5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemF5 = value;
    } else {
      _crosswordPuzzleSquareStateItemF5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemG5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemG5 => _crosswordPuzzleSquareStateItemG5;
  void setCrosswordPuzzleSquareStateItemG5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemG5 = value;
    } else {
      _crosswordPuzzleSquareStateItemG5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemH5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemH5 => _crosswordPuzzleSquareStateItemH5;
  void setCrosswordPuzzleSquareStateItemH5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemH5 = value;
    } else {
      _crosswordPuzzleSquareStateItemH5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemI5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemI5 => _crosswordPuzzleSquareStateItemI5;
  void setCrosswordPuzzleSquareStateItemI5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemI5 = value;
    } else {
      _crosswordPuzzleSquareStateItemI5 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemJ5;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemJ5 => _crosswordPuzzleSquareStateItemJ5;
  void setCrosswordPuzzleSquareStateItemJ5({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemJ5 = value;
    } else {
      _crosswordPuzzleSquareStateItemJ5 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A6-J6
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemA6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemA6 => _crosswordPuzzleSquareStateItemA6;
  void setCrosswordPuzzleSquareStateItemA6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemA6 = value;
    } else {
      _crosswordPuzzleSquareStateItemA6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemB6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemB6 => _crosswordPuzzleSquareStateItemB6;
  void setCrosswordPuzzleSquareStateItemB6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemB6 = value;
    } else {
      _crosswordPuzzleSquareStateItemB6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemC6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemC6 => _crosswordPuzzleSquareStateItemC6;
  void setCrosswordPuzzleSquareStateItemC6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemC6 = value;
    } else {
      _crosswordPuzzleSquareStateItemC6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemD6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemD6 => _crosswordPuzzleSquareStateItemD6;
  void setCrosswordPuzzleSquareStateItemD6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemD6 = value;
    } else {
      _crosswordPuzzleSquareStateItemD6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemE6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemE6 => _crosswordPuzzleSquareStateItemE6;
  void setCrosswordPuzzleSquareStateItemE6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemE6 = value;
    } else {
      _crosswordPuzzleSquareStateItemE6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemF6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemF6 => _crosswordPuzzleSquareStateItemF6;
  void setCrosswordPuzzleSquareStateItemF6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemF6 = value;
    } else {
      _crosswordPuzzleSquareStateItemF6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemG6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemG6 => _crosswordPuzzleSquareStateItemG6;
  void setCrosswordPuzzleSquareStateItemG6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemG6 = value;
    } else {
      _crosswordPuzzleSquareStateItemG6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemH6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemH6 => _crosswordPuzzleSquareStateItemH6;
  void setCrosswordPuzzleSquareStateItemH6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemH6 = value;
    } else {
      _crosswordPuzzleSquareStateItemH6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemI6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemI6 => _crosswordPuzzleSquareStateItemI6;
  void setCrosswordPuzzleSquareStateItemI6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemI6 = value;
    } else {
      _crosswordPuzzleSquareStateItemI6 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemJ6;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemJ6 => _crosswordPuzzleSquareStateItemJ6;
  void setCrosswordPuzzleSquareStateItemJ6({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemJ6 = value;
    } else {
      _crosswordPuzzleSquareStateItemJ6 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A7-J7
  /// -----
  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemA7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemA7 => _crosswordPuzzleSquareStateItemA7;
  void setCrosswordPuzzleSquareStateItemA7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemA7 = value;
    } else {
      _crosswordPuzzleSquareStateItemA7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemB7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemB7 => _crosswordPuzzleSquareStateItemB7;
  void setCrosswordPuzzleSquareStateItemB7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemB7 = value;
    } else {
      _crosswordPuzzleSquareStateItemB7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemC7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemC7 => _crosswordPuzzleSquareStateItemC7;
  void setCrosswordPuzzleSquareStateItemC7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemC7 = value;
    } else {
      _crosswordPuzzleSquareStateItemC7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemD7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemD7 => _crosswordPuzzleSquareStateItemD7;
  void setCrosswordPuzzleSquareStateItemD7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemD7 = value;
    } else {
      _crosswordPuzzleSquareStateItemD7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemE7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemE7 => _crosswordPuzzleSquareStateItemE7;
  void setCrosswordPuzzleSquareStateItemE7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemE7 = value;
    } else {
      _crosswordPuzzleSquareStateItemE7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemF7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemF7 => _crosswordPuzzleSquareStateItemF7;
  void setCrosswordPuzzleSquareStateItemF7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemF7 = value;
    } else {
      _crosswordPuzzleSquareStateItemF7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemG7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemG7 => _crosswordPuzzleSquareStateItemG7;
  void setCrosswordPuzzleSquareStateItemG7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemG7 = value;
    } else {
      _crosswordPuzzleSquareStateItemG7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemH7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemH7 => _crosswordPuzzleSquareStateItemH7;
  void setCrosswordPuzzleSquareStateItemH7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemH7 = value;
    } else {
      _crosswordPuzzleSquareStateItemH7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemI7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemI7 => _crosswordPuzzleSquareStateItemI7;
  void setCrosswordPuzzleSquareStateItemI7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemI7 = value;
    } else {
      _crosswordPuzzleSquareStateItemI7 ??= value;
    }

    return;
  }

  CrosswordPuzzleSquareStateItem? _crosswordPuzzleSquareStateItemJ7;
  CrosswordPuzzleSquareStateItem? get getCrosswordPuzzleSquareStateItemJ7 => _crosswordPuzzleSquareStateItemJ7;
  void setCrosswordPuzzleSquareStateItemJ7({required CrosswordPuzzleSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemJ7 = value;
    } else {
      _crosswordPuzzleSquareStateItemJ7 ??= value;
    }

    return;
  }

  List<CrosswordPuzzleSquareStateItem?>? _crosswordPuzzleSquareStateItemAsList;
  List<CrosswordPuzzleSquareStateItem?>? get getCrosswordPuzzleSquareStateItemAsList => _crosswordPuzzleSquareStateItemAsList;
  void setCrosswordPuzzleSquareStateItemAsList({required List<CrosswordPuzzleSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleSquareStateItemAsList = value;
    } else {
      _crosswordPuzzleSquareStateItemAsList ??= value;
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

      /// -----
      /// TODO:
      /// -----
      onSetDefaultChessBoard();
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
      setChessPieceManagement(value: ChessPieceManagement(systemStateManagement: getSystemStateManagement), isPriorityOverride: true);

      /// -----
      /// TODO: ROW A1-J1
      /// -----
      setCrosswordPuzzleSquareStateItemA1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.a1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemB1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.b1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemC1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.c1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemD1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.d1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemE1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.e1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemF1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.f1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemG1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.g1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemH1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.h1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemI1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.i1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemJ1(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.j1(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: ROW A2-J2
      /// -----
      setCrosswordPuzzleSquareStateItemA2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.a2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemB2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.b2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemC2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.c2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemD2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.d2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemE2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.e2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemF2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.f2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemG2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.g2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemH2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.h2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemI2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.i2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemJ2(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.j2(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: ROW A3-J3
      /// -----
      setCrosswordPuzzleSquareStateItemA3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.a3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemB3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.b3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemC3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.c3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemD3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.d3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemE3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.e3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemF3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.f3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemG3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.g3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemH3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.h3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemI3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.i3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemJ3(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.j3(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: ROW A4-J4
      /// -----
      setCrosswordPuzzleSquareStateItemA4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.a4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemB4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.b4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemC4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.c4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemD4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.d4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemE4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.e4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemF4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.f4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemG4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.g4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemH4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.h4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemI4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.i4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemJ4(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.j4(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: ROW A5-J5
      /// -----
      setCrosswordPuzzleSquareStateItemA5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.a5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemB5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.b5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemC5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.c5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemD5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.d5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemE5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.e5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemF5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.f5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemG5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.g5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemH5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.h5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemI5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.i5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemJ5(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.j5(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: ROW A6-J6
      /// -----
      setCrosswordPuzzleSquareStateItemA6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.a6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemB6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.b6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemC6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.c6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemD6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.d6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemE6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.e6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemF6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.f6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemG6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.g6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemH6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.h6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemI6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.i6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemJ6(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.j6(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: ROW A7-J7
      /// -----
      setCrosswordPuzzleSquareStateItemA7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.a7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemB7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.b7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemC7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.c7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemD7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.d7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemE7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.e7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemF7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.f7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemG7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.g7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemH7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.h7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemI7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.i7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleSquareStateItemJ7(
        value: CrosswordPuzzleSquareStateItem(
          stateModel: CrosswordPuzzleSquare.j7(systemStateManagement: getSystemStateManagement, squareCrosswordPuzzleBoardManagement: this),
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleSquareStateItemAsList(
        value: [
          getCrosswordPuzzleSquareStateItemA1,
          getCrosswordPuzzleSquareStateItemB1,
          getCrosswordPuzzleSquareStateItemC1,
          getCrosswordPuzzleSquareStateItemD1,
          getCrosswordPuzzleSquareStateItemE1,
          getCrosswordPuzzleSquareStateItemF1,
          getCrosswordPuzzleSquareStateItemG1,
          getCrosswordPuzzleSquareStateItemH1,
          getCrosswordPuzzleSquareStateItemI1,
          getCrosswordPuzzleSquareStateItemJ1,
          //
          getCrosswordPuzzleSquareStateItemA2,
          getCrosswordPuzzleSquareStateItemB2,
          getCrosswordPuzzleSquareStateItemC2,
          getCrosswordPuzzleSquareStateItemD2,
          getCrosswordPuzzleSquareStateItemE2,
          getCrosswordPuzzleSquareStateItemF2,
          getCrosswordPuzzleSquareStateItemG2,
          getCrosswordPuzzleSquareStateItemH2,
          getCrosswordPuzzleSquareStateItemI2,
          getCrosswordPuzzleSquareStateItemJ2,
          //
          getCrosswordPuzzleSquareStateItemA3,
          getCrosswordPuzzleSquareStateItemB3,
          getCrosswordPuzzleSquareStateItemC3,
          getCrosswordPuzzleSquareStateItemD3,
          getCrosswordPuzzleSquareStateItemE3,
          getCrosswordPuzzleSquareStateItemF3,
          getCrosswordPuzzleSquareStateItemG3,
          getCrosswordPuzzleSquareStateItemH3,
          getCrosswordPuzzleSquareStateItemI3,
          getCrosswordPuzzleSquareStateItemJ3,
          //
          getCrosswordPuzzleSquareStateItemA4,
          getCrosswordPuzzleSquareStateItemB4,
          getCrosswordPuzzleSquareStateItemC4,
          getCrosswordPuzzleSquareStateItemD4,
          getCrosswordPuzzleSquareStateItemE4,
          getCrosswordPuzzleSquareStateItemF4,
          getCrosswordPuzzleSquareStateItemG4,
          getCrosswordPuzzleSquareStateItemH4,
          getCrosswordPuzzleSquareStateItemI4,
          getCrosswordPuzzleSquareStateItemJ4,
          //
          getCrosswordPuzzleSquareStateItemA5,
          getCrosswordPuzzleSquareStateItemB5,
          getCrosswordPuzzleSquareStateItemC5,
          getCrosswordPuzzleSquareStateItemD5,
          getCrosswordPuzzleSquareStateItemE5,
          getCrosswordPuzzleSquareStateItemF5,
          getCrosswordPuzzleSquareStateItemG5,
          getCrosswordPuzzleSquareStateItemH5,
          getCrosswordPuzzleSquareStateItemI5,
          getCrosswordPuzzleSquareStateItemJ5,
          //
          getCrosswordPuzzleSquareStateItemA6,
          getCrosswordPuzzleSquareStateItemB6,
          getCrosswordPuzzleSquareStateItemC6,
          getCrosswordPuzzleSquareStateItemD6,
          getCrosswordPuzzleSquareStateItemE6,
          getCrosswordPuzzleSquareStateItemF6,
          getCrosswordPuzzleSquareStateItemG6,
          getCrosswordPuzzleSquareStateItemH6,
          getCrosswordPuzzleSquareStateItemI6,
          getCrosswordPuzzleSquareStateItemJ6,
          //
          getCrosswordPuzzleSquareStateItemA7,
          getCrosswordPuzzleSquareStateItemB7,
          getCrosswordPuzzleSquareStateItemC7,
          getCrosswordPuzzleSquareStateItemD7,
          getCrosswordPuzzleSquareStateItemE7,
          getCrosswordPuzzleSquareStateItemF7,
          getCrosswordPuzzleSquareStateItemG7,
          getCrosswordPuzzleSquareStateItemH7,
          getCrosswordPuzzleSquareStateItemI7,
          getCrosswordPuzzleSquareStateItemJ7,
          //
        ],
        isPriorityOverride: true,
      );

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
      await getChessPieceManagement?.onSetupRoot();

      /// -----
      /// TODO:
      /// -----
      await getCrosswordPuzzleSquareStateItemA1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemB1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemC1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemD1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemE1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemF1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemG1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemH1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemI1?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemJ1?.getStateModel?.onSetupRoot();

      await getCrosswordPuzzleSquareStateItemA2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemB2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemC2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemD2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemE2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemF2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemG2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemH2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemI2?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemJ2?.getStateModel?.onSetupRoot();

      await getCrosswordPuzzleSquareStateItemA3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemB3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemC3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemD3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemE3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemF3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemG3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemH3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemI3?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemJ3?.getStateModel?.onSetupRoot();

      await getCrosswordPuzzleSquareStateItemA4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemB4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemC4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemD4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemE4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemF4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemG4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemH4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemI4?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemJ4?.getStateModel?.onSetupRoot();

      await getCrosswordPuzzleSquareStateItemA5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemB5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemC5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemD5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemE5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemF5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemG5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemH5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemI5?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemJ5?.getStateModel?.onSetupRoot();

      await getCrosswordPuzzleSquareStateItemA6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemB6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemC6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemD6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemE6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemF6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemG6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemH6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemI6?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemJ6?.getStateModel?.onSetupRoot();

      await getCrosswordPuzzleSquareStateItemA7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemB7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemC7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemD7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemE7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemF7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemG7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemH7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemI7?.getStateModel?.onSetupRoot();
      await getCrosswordPuzzleSquareStateItemJ7?.getStateModel?.onSetupRoot();
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
      await getChessPieceManagement?.onInitRoot();

      /// -----
      /// TODO:
      /// -----

      await getCrosswordPuzzleSquareStateItemA1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemB1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemC1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemD1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemE1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemF1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemG1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemH1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemI1?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemJ1?.getStateModel?.onInitRoot();

      await getCrosswordPuzzleSquareStateItemA2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemB2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemC2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemD2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemE2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemF2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemG2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemH2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemI2?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemJ2?.getStateModel?.onInitRoot();

      await getCrosswordPuzzleSquareStateItemA3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemB3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemC3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemD3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemE3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemF3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemG3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemH3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemI3?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemJ3?.getStateModel?.onInitRoot();

      await getCrosswordPuzzleSquareStateItemA4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemB4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemC4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemD4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemE4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemF4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemG4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemH4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemI4?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemJ4?.getStateModel?.onInitRoot();

      await getCrosswordPuzzleSquareStateItemA5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemB5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemC5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemD5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemE5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemF5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemG5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemH5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemI5?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemJ5?.getStateModel?.onInitRoot();

      await getCrosswordPuzzleSquareStateItemA6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemB6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemC6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemD6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemE6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemF6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemG6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemH6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemI6?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemJ6?.getStateModel?.onInitRoot();

      await getCrosswordPuzzleSquareStateItemA7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemB7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemC7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemD7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemE7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemF7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemG7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemH7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemI7?.getStateModel?.onInitRoot();
      await getCrosswordPuzzleSquareStateItemJ7?.getStateModel?.onInitRoot();
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

  /// -----
  /// TODO:
  /// -----
  void onSetDefaultChessBoard() {
    // /// -----
    // /// TODO: ROW A1-H1
    // /// -----
    // getChessSquareStateItemA1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookA1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemRookA1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemA1);
    //
    // getChessSquareStateItemB1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightB1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemKnightB1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemB1);
    //
    // getChessSquareStateItemC1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopC1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemBishopC1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemC1);
    //
    // getChessSquareStateItemD1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemQueenD1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemQueenD1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemD1);
    //
    // getChessSquareStateItemE1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKingE1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemKingE1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemE1);
    //
    // getChessSquareStateItemF1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopF1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemBishopF1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemF1);
    //
    // getChessSquareStateItemG1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightG1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemKnightG1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemG1);
    //
    // getChessSquareStateItemH1?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookH1, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemRookH1AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemH1);
    //
    // /// -----
    // /// TODO: ROW A2-H2
    // /// -----
    // getChessSquareStateItemA2?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnA2, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnA2AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemA2);
    //
    // getChessSquareStateItemB2?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnB2, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnB2AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemB2);
    //
    // getChessSquareStateItemC2?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnC2, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnC2AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemC2);
    //
    // // getChessSquareStateItemD2?.getStateModel
    // //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnD2, isPriorityOverride: true)
    // //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnD2AsShadow, isPriorityOverride: true)
    // //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemD2);
    //
    // getChessSquareStateItemE2?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnE2, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnE2AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemE2);
    //
    // getChessSquareStateItemF2?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnF2, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnF2AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemF2);
    //
    // getChessSquareStateItemG2?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnG2, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnG2AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemG2);
    //
    // getChessSquareStateItemH2?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnH2, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnH2AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemH2);
    //
    // /// -----
    // /// TODO: ROW A7-H7
    // /// -----
    // getChessSquareStateItemA7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnA7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnA7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemA7);
    //
    // getChessSquareStateItemB7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnB7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnB7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemB7);
    //
    // getChessSquareStateItemC7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnC7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnC7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemC7);
    //
    // getChessSquareStateItemD7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnD7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnD7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemD7);
    //
    // getChessSquareStateItemE7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnE7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnE7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemE7);
    //
    // getChessSquareStateItemG7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnF7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnF7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemG7);
    //
    // getChessSquareStateItemF7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnG7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnG7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemF7);
    //
    // getChessSquareStateItemH7?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnH7, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemPawnH7AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemH7);
    //
    // /// -----
    // /// TODO: ROW A8-H8
    // /// -----
    // getChessSquareStateItemA8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookA8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemRookA8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemA8);
    //
    // getChessSquareStateItemB8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightB8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemKnightB8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemB8);
    //
    // getChessSquareStateItemC8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopC8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemBishopC8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemC8);
    //
    // getChessSquareStateItemD8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemQueenD8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemQueenD8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemD8);
    //
    // getChessSquareStateItemE8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKingE8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemKingE8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemE8);
    //
    // getChessSquareStateItemF8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopF8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemBishopF8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemF8);
    //
    // getChessSquareStateItemG8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightG8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemKnightG8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemG8);
    //
    // getChessSquareStateItemH8?.getStateModel
    //   ?..setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookH8, isPriorityOverride: true)
    //   ..setChessPieceStateItemAsShadow(value: getChessPieceManagement?.getChessPieceStateItemRookH8AsShadow, isPriorityOverride: true)
    //   ..getChessPieceStateItem?.getStateModel?.setCurrentChessSquareStateItem(value: getChessSquareStateItemH8);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleSquareStateItem? getCrosswordPuzzleSquareStateItemById({required String id}) {
    for (CrosswordPuzzleSquareStateItem? crosswordPuzzleSquareStateItem in (getCrosswordPuzzleSquareStateItemAsList ?? [])) {
      if (crosswordPuzzleSquareStateItem?.getStateModel?.getId == id) {
        return crosswordPuzzleSquareStateItem;
      }
    }

    return null;
  }
}
