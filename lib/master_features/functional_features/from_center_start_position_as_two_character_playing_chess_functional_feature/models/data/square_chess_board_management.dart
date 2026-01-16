import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_management.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square_state_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class SquareChessBoardManagement with ExecutionCore {
  SquareChessBoardManagement({required SystemStateManagement? systemStateManagement}) {
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
  /// TODO: ROW A1-H1
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA1;
  ChessSquareStateItem? get getChessSquareStateItemA1 => _chessSquareStateItemA1;
  void setChessSquareStateItemA1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA1 = value;
    } else {
      _chessSquareStateItemA1 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB1;
  ChessSquareStateItem? get getChessSquareStateItemB1 => _chessSquareStateItemB1;
  void setChessSquareStateItemB1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB1 = value;
    } else {
      _chessSquareStateItemB1 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC1;
  ChessSquareStateItem? get getChessSquareStateItemC1 => _chessSquareStateItemC1;
  void setChessSquareStateItemC1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC1 = value;
    } else {
      _chessSquareStateItemC1 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD1;
  ChessSquareStateItem? get getChessSquareStateItemD1 => _chessSquareStateItemD1;
  void setChessSquareStateItemD1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD1 = value;
    } else {
      _chessSquareStateItemD1 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE1;
  ChessSquareStateItem? get getChessSquareStateItemE1 => _chessSquareStateItemE1;
  void setChessSquareStateItemE1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE1 = value;
    } else {
      _chessSquareStateItemE1 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF1;
  ChessSquareStateItem? get getChessSquareStateItemF1 => _chessSquareStateItemF1;
  void setChessSquareStateItemF1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF1 = value;
    } else {
      _chessSquareStateItemF1 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG1;
  ChessSquareStateItem? get getChessSquareStateItemG1 => _chessSquareStateItemG1;
  void setChessSquareStateItemG1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG1 = value;
    } else {
      _chessSquareStateItemG1 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH1;
  ChessSquareStateItem? get getChessSquareStateItemH1 => _chessSquareStateItemH1;
  void setChessSquareStateItemH1({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH1 = value;
    } else {
      _chessSquareStateItemH1 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A2-H2
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA2;
  ChessSquareStateItem? get getChessSquareStateItemA2 => _chessSquareStateItemA2;
  void setChessSquareStateItemA2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA2 = value;
    } else {
      _chessSquareStateItemA2 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB2;
  ChessSquareStateItem? get getChessSquareStateItemB2 => _chessSquareStateItemB2;
  void setChessSquareStateItemB2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB2 = value;
    } else {
      _chessSquareStateItemB2 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC2;
  ChessSquareStateItem? get getChessSquareStateItemC2 => _chessSquareStateItemC2;
  void setChessSquareStateItemC2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC2 = value;
    } else {
      _chessSquareStateItemC2 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD2;
  ChessSquareStateItem? get getChessSquareStateItemD2 => _chessSquareStateItemD2;
  void setChessSquareStateItemD2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD2 = value;
    } else {
      _chessSquareStateItemD2 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE2;
  ChessSquareStateItem? get getChessSquareStateItemE2 => _chessSquareStateItemE2;
  void setChessSquareStateItemE2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE2 = value;
    } else {
      _chessSquareStateItemE2 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF2;
  ChessSquareStateItem? get getChessSquareStateItemF2 => _chessSquareStateItemF2;
  void setChessSquareStateItemF2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF2 = value;
    } else {
      _chessSquareStateItemF2 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG2;
  ChessSquareStateItem? get getChessSquareStateItemG2 => _chessSquareStateItemG2;
  void setChessSquareStateItemG2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG2 = value;
    } else {
      _chessSquareStateItemG2 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH2;
  ChessSquareStateItem? get getChessSquareStateItemH2 => _chessSquareStateItemH2;
  void setChessSquareStateItemH2({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH2 = value;
    } else {
      _chessSquareStateItemH2 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A3-H3
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA3;
  ChessSquareStateItem? get getChessSquareStateItemA3 => _chessSquareStateItemA3;
  void setChessSquareStateItemA3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA3 = value;
    } else {
      _chessSquareStateItemA3 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB3;
  ChessSquareStateItem? get getChessSquareStateItemB3 => _chessSquareStateItemB3;
  void setChessSquareStateItemB3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB3 = value;
    } else {
      _chessSquareStateItemB3 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC3;
  ChessSquareStateItem? get getChessSquareStateItemC3 => _chessSquareStateItemC3;
  void setChessSquareStateItemC3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC3 = value;
    } else {
      _chessSquareStateItemC3 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD3;
  ChessSquareStateItem? get getChessSquareStateItemD3 => _chessSquareStateItemD3;
  void setChessSquareStateItemD3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD3 = value;
    } else {
      _chessSquareStateItemD3 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE3;
  ChessSquareStateItem? get getChessSquareStateItemE3 => _chessSquareStateItemE3;
  void setChessSquareStateItemE3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE3 = value;
    } else {
      _chessSquareStateItemE3 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF3;
  ChessSquareStateItem? get getChessSquareStateItemF3 => _chessSquareStateItemF3;
  void setChessSquareStateItemF3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF3 = value;
    } else {
      _chessSquareStateItemF3 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG3;
  ChessSquareStateItem? get getChessSquareStateItemG3 => _chessSquareStateItemG3;
  void setChessSquareStateItemG3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG3 = value;
    } else {
      _chessSquareStateItemG3 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH3;
  ChessSquareStateItem? get getChessSquareStateItemH3 => _chessSquareStateItemH3;
  void setChessSquareStateItemH3({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH3 = value;
    } else {
      _chessSquareStateItemH3 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A4-H4
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA4;
  ChessSquareStateItem? get getChessSquareStateItemA4 => _chessSquareStateItemA4;
  void setChessSquareStateItemA4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA4 = value;
    } else {
      _chessSquareStateItemA4 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB4;
  ChessSquareStateItem? get getChessSquareStateItemB4 => _chessSquareStateItemB4;
  void setChessSquareStateItemB4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB4 = value;
    } else {
      _chessSquareStateItemB4 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC4;
  ChessSquareStateItem? get getChessSquareStateItemC4 => _chessSquareStateItemC4;
  void setChessSquareStateItemC4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC4 = value;
    } else {
      _chessSquareStateItemC4 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD4;
  ChessSquareStateItem? get getChessSquareStateItemD4 => _chessSquareStateItemD4;
  void setChessSquareStateItemD4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD4 = value;
    } else {
      _chessSquareStateItemD4 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE4;
  ChessSquareStateItem? get getChessSquareStateItemE4 => _chessSquareStateItemE4;
  void setChessSquareStateItemE4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE4 = value;
    } else {
      _chessSquareStateItemE4 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF4;
  ChessSquareStateItem? get getChessSquareStateItemF4 => _chessSquareStateItemF4;
  void setChessSquareStateItemF4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF4 = value;
    } else {
      _chessSquareStateItemF4 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG4;
  ChessSquareStateItem? get getChessSquareStateItemG4 => _chessSquareStateItemG4;
  void setChessSquareStateItemG4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG4 = value;
    } else {
      _chessSquareStateItemG4 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH4;
  ChessSquareStateItem? get getChessSquareStateItemH4 => _chessSquareStateItemH4;
  void setChessSquareStateItemH4({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH4 = value;
    } else {
      _chessSquareStateItemH4 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A5-H5
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA5;
  ChessSquareStateItem? get getChessSquareStateItemA5 => _chessSquareStateItemA5;
  void setChessSquareStateItemA5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA5 = value;
    } else {
      _chessSquareStateItemA5 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB5;
  ChessSquareStateItem? get getChessSquareStateItemB5 => _chessSquareStateItemB5;
  void setChessSquareStateItemB5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB5 = value;
    } else {
      _chessSquareStateItemB5 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC5;
  ChessSquareStateItem? get getChessSquareStateItemC5 => _chessSquareStateItemC5;
  void setChessSquareStateItemC5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC5 = value;
    } else {
      _chessSquareStateItemC5 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD5;
  ChessSquareStateItem? get getChessSquareStateItemD5 => _chessSquareStateItemD5;
  void setChessSquareStateItemD5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD5 = value;
    } else {
      _chessSquareStateItemD5 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE5;
  ChessSquareStateItem? get getChessSquareStateItemE5 => _chessSquareStateItemE5;
  void setChessSquareStateItemE5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE5 = value;
    } else {
      _chessSquareStateItemE5 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF5;
  ChessSquareStateItem? get getChessSquareStateItemF5 => _chessSquareStateItemF5;
  void setChessSquareStateItemF5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF5 = value;
    } else {
      _chessSquareStateItemF5 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG5;
  ChessSquareStateItem? get getChessSquareStateItemG5 => _chessSquareStateItemG5;
  void setChessSquareStateItemG5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG5 = value;
    } else {
      _chessSquareStateItemG5 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH5;
  ChessSquareStateItem? get getChessSquareStateItemH5 => _chessSquareStateItemH5;
  void setChessSquareStateItemH5({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH5 = value;
    } else {
      _chessSquareStateItemH5 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A6-H6
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA6;
  ChessSquareStateItem? get getChessSquareStateItemA6 => _chessSquareStateItemA6;
  void setChessSquareStateItemA6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA6 = value;
    } else {
      _chessSquareStateItemA6 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB6;
  ChessSquareStateItem? get getChessSquareStateItemB6 => _chessSquareStateItemB6;
  void setChessSquareStateItemB6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB6 = value;
    } else {
      _chessSquareStateItemB6 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC6;
  ChessSquareStateItem? get getChessSquareStateItemC6 => _chessSquareStateItemC6;
  void setChessSquareStateItemC6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC6 = value;
    } else {
      _chessSquareStateItemC6 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD6;
  ChessSquareStateItem? get getChessSquareStateItemD6 => _chessSquareStateItemD6;
  void setChessSquareStateItemD6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD6 = value;
    } else {
      _chessSquareStateItemD6 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE6;
  ChessSquareStateItem? get getChessSquareStateItemE6 => _chessSquareStateItemE6;
  void setChessSquareStateItemE6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE6 = value;
    } else {
      _chessSquareStateItemE6 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF6;
  ChessSquareStateItem? get getChessSquareStateItemF6 => _chessSquareStateItemF6;
  void setChessSquareStateItemF6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF6 = value;
    } else {
      _chessSquareStateItemF6 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG6;
  ChessSquareStateItem? get getChessSquareStateItemG6 => _chessSquareStateItemG6;
  void setChessSquareStateItemG6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG6 = value;
    } else {
      _chessSquareStateItemG6 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH6;
  ChessSquareStateItem? get getChessSquareStateItemH6 => _chessSquareStateItemH6;
  void setChessSquareStateItemH6({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH6 = value;
    } else {
      _chessSquareStateItemH6 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A7-H7
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA7;
  ChessSquareStateItem? get getChessSquareStateItemA7 => _chessSquareStateItemA7;
  void setChessSquareStateItemA7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA7 = value;
    } else {
      _chessSquareStateItemA7 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB7;
  ChessSquareStateItem? get getChessSquareStateItemB7 => _chessSquareStateItemB7;
  void setChessSquareStateItemB7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB7 = value;
    } else {
      _chessSquareStateItemB7 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC7;
  ChessSquareStateItem? get getChessSquareStateItemC7 => _chessSquareStateItemC7;
  void setChessSquareStateItemC7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC7 = value;
    } else {
      _chessSquareStateItemC7 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD7;
  ChessSquareStateItem? get getChessSquareStateItemD7 => _chessSquareStateItemD7;
  void setChessSquareStateItemD7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD7 = value;
    } else {
      _chessSquareStateItemD7 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE7;
  ChessSquareStateItem? get getChessSquareStateItemE7 => _chessSquareStateItemE7;
  void setChessSquareStateItemE7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE7 = value;
    } else {
      _chessSquareStateItemE7 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF7;
  ChessSquareStateItem? get getChessSquareStateItemF7 => _chessSquareStateItemF7;
  void setChessSquareStateItemF7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF7 = value;
    } else {
      _chessSquareStateItemF7 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG7;
  ChessSquareStateItem? get getChessSquareStateItemG7 => _chessSquareStateItemG7;
  void setChessSquareStateItemG7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG7 = value;
    } else {
      _chessSquareStateItemG7 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH7;
  ChessSquareStateItem? get getChessSquareStateItemH7 => _chessSquareStateItemH7;
  void setChessSquareStateItemH7({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH7 = value;
    } else {
      _chessSquareStateItemH7 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A8-H8
  /// -----
  ChessSquareStateItem? _chessSquareStateItemA8;
  ChessSquareStateItem? get getChessSquareStateItemA8 => _chessSquareStateItemA8;
  void setChessSquareStateItemA8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemA8 = value;
    } else {
      _chessSquareStateItemA8 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemB8;
  ChessSquareStateItem? get getChessSquareStateItemB8 => _chessSquareStateItemB8;
  void setChessSquareStateItemB8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemB8 = value;
    } else {
      _chessSquareStateItemB8 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemC8;
  ChessSquareStateItem? get getChessSquareStateItemC8 => _chessSquareStateItemC8;
  void setChessSquareStateItemC8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemC8 = value;
    } else {
      _chessSquareStateItemC8 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemD8;
  ChessSquareStateItem? get getChessSquareStateItemD8 => _chessSquareStateItemD8;
  void setChessSquareStateItemD8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemD8 = value;
    } else {
      _chessSquareStateItemD8 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemE8;
  ChessSquareStateItem? get getChessSquareStateItemE8 => _chessSquareStateItemE8;
  void setChessSquareStateItemE8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemE8 = value;
    } else {
      _chessSquareStateItemE8 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemF8;
  ChessSquareStateItem? get getChessSquareStateItemF8 => _chessSquareStateItemF8;
  void setChessSquareStateItemF8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemF8 = value;
    } else {
      _chessSquareStateItemF8 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemG8;
  ChessSquareStateItem? get getChessSquareStateItemG8 => _chessSquareStateItemG8;
  void setChessSquareStateItemG8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemG8 = value;
    } else {
      _chessSquareStateItemG8 ??= value;
    }

    return;
  }

  ChessSquareStateItem? _chessSquareStateItemH8;
  ChessSquareStateItem? get getChessSquareStateItemH8 => _chessSquareStateItemH8;
  void setChessSquareStateItemH8({required ChessSquareStateItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemH8 = value;
    } else {
      _chessSquareStateItemH8 ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsList => _chessSquareStateItemAsList;
  void setChessSquareStateItemAsList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsList = value;
    } else {
      _chessSquareStateItemAsList ??= value;
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
      /// TODO:
      /// -----

      setChessSquareStateItemA1(value: ChessSquareStateItem(stateModel: ChessSquare.a1()), isPriorityOverride: true);
      setChessSquareStateItemB1(value: ChessSquareStateItem(stateModel: ChessSquare.b1()), isPriorityOverride: true);
      setChessSquareStateItemC1(value: ChessSquareStateItem(stateModel: ChessSquare.c1()), isPriorityOverride: true);
      setChessSquareStateItemD1(value: ChessSquareStateItem(stateModel: ChessSquare.d1()), isPriorityOverride: true);
      setChessSquareStateItemE1(value: ChessSquareStateItem(stateModel: ChessSquare.e1()), isPriorityOverride: true);
      setChessSquareStateItemF1(value: ChessSquareStateItem(stateModel: ChessSquare.f1()), isPriorityOverride: true);
      setChessSquareStateItemG1(value: ChessSquareStateItem(stateModel: ChessSquare.g1()), isPriorityOverride: true);
      setChessSquareStateItemH1(value: ChessSquareStateItem(stateModel: ChessSquare.h1()), isPriorityOverride: true);

      ///
      setChessSquareStateItemA2(value: ChessSquareStateItem(stateModel: ChessSquare.a2()), isPriorityOverride: true);
      setChessSquareStateItemB2(value: ChessSquareStateItem(stateModel: ChessSquare.b2()), isPriorityOverride: true);
      setChessSquareStateItemC2(value: ChessSquareStateItem(stateModel: ChessSquare.c2()), isPriorityOverride: true);
      setChessSquareStateItemD2(value: ChessSquareStateItem(stateModel: ChessSquare.d2()), isPriorityOverride: true);
      setChessSquareStateItemE2(value: ChessSquareStateItem(stateModel: ChessSquare.e2()), isPriorityOverride: true);
      setChessSquareStateItemF2(value: ChessSquareStateItem(stateModel: ChessSquare.f2()), isPriorityOverride: true);
      setChessSquareStateItemG2(value: ChessSquareStateItem(stateModel: ChessSquare.g2()), isPriorityOverride: true);
      setChessSquareStateItemH2(value: ChessSquareStateItem(stateModel: ChessSquare.h2()), isPriorityOverride: true);

      ///
      setChessSquareStateItemA3(value: ChessSquareStateItem(stateModel: ChessSquare.a3()), isPriorityOverride: true);
      setChessSquareStateItemB3(value: ChessSquareStateItem(stateModel: ChessSquare.b3()), isPriorityOverride: true);
      setChessSquareStateItemC3(value: ChessSquareStateItem(stateModel: ChessSquare.c3()), isPriorityOverride: true);
      setChessSquareStateItemD3(value: ChessSquareStateItem(stateModel: ChessSquare.d3()), isPriorityOverride: true);
      setChessSquareStateItemE3(value: ChessSquareStateItem(stateModel: ChessSquare.e3()), isPriorityOverride: true);
      setChessSquareStateItemF3(value: ChessSquareStateItem(stateModel: ChessSquare.f3()), isPriorityOverride: true);
      setChessSquareStateItemG3(value: ChessSquareStateItem(stateModel: ChessSquare.g3()), isPriorityOverride: true);
      setChessSquareStateItemH3(value: ChessSquareStateItem(stateModel: ChessSquare.h3()), isPriorityOverride: true);

      ///
      setChessSquareStateItemA4(value: ChessSquareStateItem(stateModel: ChessSquare.a4()), isPriorityOverride: true);
      setChessSquareStateItemB4(value: ChessSquareStateItem(stateModel: ChessSquare.b4()), isPriorityOverride: true);
      setChessSquareStateItemC4(value: ChessSquareStateItem(stateModel: ChessSquare.c4()), isPriorityOverride: true);
      setChessSquareStateItemD4(value: ChessSquareStateItem(stateModel: ChessSquare.d4()), isPriorityOverride: true);
      setChessSquareStateItemE4(value: ChessSquareStateItem(stateModel: ChessSquare.e4()), isPriorityOverride: true);
      setChessSquareStateItemF4(value: ChessSquareStateItem(stateModel: ChessSquare.f4()), isPriorityOverride: true);
      setChessSquareStateItemG4(value: ChessSquareStateItem(stateModel: ChessSquare.g4()), isPriorityOverride: true);
      setChessSquareStateItemH4(value: ChessSquareStateItem(stateModel: ChessSquare.h4()), isPriorityOverride: true);

      ///
      setChessSquareStateItemA5(value: ChessSquareStateItem(stateModel: ChessSquare.a5()), isPriorityOverride: true);
      setChessSquareStateItemB5(value: ChessSquareStateItem(stateModel: ChessSquare.b5()), isPriorityOverride: true);
      setChessSquareStateItemC5(value: ChessSquareStateItem(stateModel: ChessSquare.c5()), isPriorityOverride: true);
      setChessSquareStateItemD5(value: ChessSquareStateItem(stateModel: ChessSquare.d5()), isPriorityOverride: true);
      setChessSquareStateItemE5(value: ChessSquareStateItem(stateModel: ChessSquare.e5()), isPriorityOverride: true);
      setChessSquareStateItemF5(value: ChessSquareStateItem(stateModel: ChessSquare.f5()), isPriorityOverride: true);
      setChessSquareStateItemG5(value: ChessSquareStateItem(stateModel: ChessSquare.g5()), isPriorityOverride: true);
      setChessSquareStateItemH5(value: ChessSquareStateItem(stateModel: ChessSquare.h5()), isPriorityOverride: true);

      ///
      setChessSquareStateItemA6(value: ChessSquareStateItem(stateModel: ChessSquare.a6()), isPriorityOverride: true);
      setChessSquareStateItemB6(value: ChessSquareStateItem(stateModel: ChessSquare.b6()), isPriorityOverride: true);
      setChessSquareStateItemC6(value: ChessSquareStateItem(stateModel: ChessSquare.c6()), isPriorityOverride: true);
      setChessSquareStateItemD6(value: ChessSquareStateItem(stateModel: ChessSquare.d6()), isPriorityOverride: true);
      setChessSquareStateItemE6(value: ChessSquareStateItem(stateModel: ChessSquare.e6()), isPriorityOverride: true);
      setChessSquareStateItemF6(value: ChessSquareStateItem(stateModel: ChessSquare.f6()), isPriorityOverride: true);
      setChessSquareStateItemG6(value: ChessSquareStateItem(stateModel: ChessSquare.g6()), isPriorityOverride: true);
      setChessSquareStateItemH6(value: ChessSquareStateItem(stateModel: ChessSquare.h6()), isPriorityOverride: true);

      ///
      setChessSquareStateItemA7(value: ChessSquareStateItem(stateModel: ChessSquare.a7()), isPriorityOverride: true);
      setChessSquareStateItemB7(value: ChessSquareStateItem(stateModel: ChessSquare.b7()), isPriorityOverride: true);
      setChessSquareStateItemC7(value: ChessSquareStateItem(stateModel: ChessSquare.c7()), isPriorityOverride: true);
      setChessSquareStateItemD7(value: ChessSquareStateItem(stateModel: ChessSquare.d7()), isPriorityOverride: true);
      setChessSquareStateItemE7(value: ChessSquareStateItem(stateModel: ChessSquare.e7()), isPriorityOverride: true);
      setChessSquareStateItemF7(value: ChessSquareStateItem(stateModel: ChessSquare.f7()), isPriorityOverride: true);
      setChessSquareStateItemG7(value: ChessSquareStateItem(stateModel: ChessSquare.g7()), isPriorityOverride: true);
      setChessSquareStateItemH7(value: ChessSquareStateItem(stateModel: ChessSquare.h7()), isPriorityOverride: true);

      ///
      setChessSquareStateItemA8(value: ChessSquareStateItem(stateModel: ChessSquare.a8()), isPriorityOverride: true);
      setChessSquareStateItemB8(value: ChessSquareStateItem(stateModel: ChessSquare.b8()), isPriorityOverride: true);
      setChessSquareStateItemC8(value: ChessSquareStateItem(stateModel: ChessSquare.c8()), isPriorityOverride: true);
      setChessSquareStateItemD8(value: ChessSquareStateItem(stateModel: ChessSquare.d8()), isPriorityOverride: true);
      setChessSquareStateItemE8(value: ChessSquareStateItem(stateModel: ChessSquare.e8()), isPriorityOverride: true);
      setChessSquareStateItemF8(value: ChessSquareStateItem(stateModel: ChessSquare.f8()), isPriorityOverride: true);
      setChessSquareStateItemG8(value: ChessSquareStateItem(stateModel: ChessSquare.g8()), isPriorityOverride: true);
      setChessSquareStateItemH8(value: ChessSquareStateItem(stateModel: ChessSquare.h8()), isPriorityOverride: true);

      setChessSquareStateItemAsList(
        value: [
          getChessSquareStateItemA1,
          getChessSquareStateItemB1,
          getChessSquareStateItemC1,
          getChessSquareStateItemD1,
          getChessSquareStateItemE1,
          getChessSquareStateItemF1,
          getChessSquareStateItemG1,
          getChessSquareStateItemH1,

          getChessSquareStateItemA2,
          getChessSquareStateItemB2,
          getChessSquareStateItemC2,
          getChessSquareStateItemD2,
          getChessSquareStateItemE2,
          getChessSquareStateItemF2,
          getChessSquareStateItemG2,
          getChessSquareStateItemH2,

          getChessSquareStateItemA3,
          getChessSquareStateItemB3,
          getChessSquareStateItemC3,
          getChessSquareStateItemD3,
          getChessSquareStateItemE3,
          getChessSquareStateItemF3,
          getChessSquareStateItemG3,
          getChessSquareStateItemH3,

          getChessSquareStateItemA4,
          getChessSquareStateItemB4,
          getChessSquareStateItemC4,
          getChessSquareStateItemD4,
          getChessSquareStateItemE4,
          getChessSquareStateItemF4,
          getChessSquareStateItemG4,
          getChessSquareStateItemH4,

          getChessSquareStateItemA5,
          getChessSquareStateItemB5,
          getChessSquareStateItemC5,
          getChessSquareStateItemD5,
          getChessSquareStateItemE5,
          getChessSquareStateItemF5,
          getChessSquareStateItemG5,
          getChessSquareStateItemH5,

          getChessSquareStateItemA6,
          getChessSquareStateItemB6,
          getChessSquareStateItemC6,
          getChessSquareStateItemD6,
          getChessSquareStateItemE6,
          getChessSquareStateItemF6,
          getChessSquareStateItemG6,
          getChessSquareStateItemH6,

          getChessSquareStateItemA7,
          getChessSquareStateItemB7,
          getChessSquareStateItemC7,
          getChessSquareStateItemD7,
          getChessSquareStateItemE7,
          getChessSquareStateItemF7,
          getChessSquareStateItemG7,
          getChessSquareStateItemH7,

          getChessSquareStateItemA8,
          getChessSquareStateItemB8,
          getChessSquareStateItemC8,
          getChessSquareStateItemD8,
          getChessSquareStateItemE8,
          getChessSquareStateItemF8,
          getChessSquareStateItemG8,
          getChessSquareStateItemH8,
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

      await getChessSquareStateItemA1?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB1?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC1?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD1?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE1?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF1?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG1?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH1?.getStateModel?.onSetupRoot();

      await getChessSquareStateItemA2?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB2?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC2?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD2?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE2?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF2?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG2?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH2?.getStateModel?.onSetupRoot();

      await getChessSquareStateItemA3?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB3?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC3?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD3?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE3?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF3?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG3?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH3?.getStateModel?.onSetupRoot();

      await getChessSquareStateItemA4?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB4?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC4?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD4?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE4?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF4?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG4?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH4?.getStateModel?.onSetupRoot();

      await getChessSquareStateItemA5?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB5?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC5?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD5?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE5?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF5?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG5?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH5?.getStateModel?.onSetupRoot();

      await getChessSquareStateItemA6?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB6?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC6?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD6?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE6?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF6?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG6?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH6?.getStateModel?.onSetupRoot();

      await getChessSquareStateItemA7?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB7?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC7?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD7?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE7?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF7?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG7?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH7?.getStateModel?.onSetupRoot();

      await getChessSquareStateItemA8?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemB8?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemC8?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemD8?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemE8?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemF8?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemG8?.getStateModel?.onSetupRoot();
      await getChessSquareStateItemH8?.getStateModel?.onSetupRoot();
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

      await getChessSquareStateItemA1?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB1?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC1?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD1?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE1?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF1?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG1?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH1?.getStateModel?.onInitRoot();

      await getChessSquareStateItemA2?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB2?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC2?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD2?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE2?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF2?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG2?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH2?.getStateModel?.onInitRoot();

      await getChessSquareStateItemA3?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB3?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC3?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD3?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE3?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF3?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG3?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH3?.getStateModel?.onInitRoot();

      await getChessSquareStateItemA4?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB4?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC4?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD4?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE4?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF4?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG4?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH4?.getStateModel?.onInitRoot();

      await getChessSquareStateItemA5?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB5?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC5?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD5?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE5?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF5?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG5?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH5?.getStateModel?.onInitRoot();

      await getChessSquareStateItemA6?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB6?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC6?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD6?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE6?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF6?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG6?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH6?.getStateModel?.onInitRoot();

      await getChessSquareStateItemA7?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB7?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC7?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD7?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE7?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF7?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG7?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH7?.getStateModel?.onInitRoot();

      await getChessSquareStateItemA8?.getStateModel?.onInitRoot();
      await getChessSquareStateItemB8?.getStateModel?.onInitRoot();
      await getChessSquareStateItemC8?.getStateModel?.onInitRoot();
      await getChessSquareStateItemD8?.getStateModel?.onInitRoot();
      await getChessSquareStateItemE8?.getStateModel?.onInitRoot();
      await getChessSquareStateItemG8?.getStateModel?.onInitRoot();
      await getChessSquareStateItemF8?.getStateModel?.onInitRoot();
      await getChessSquareStateItemH8?.getStateModel?.onInitRoot();
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
    /// -----
    /// TODO: ROW A1-H1
    /// -----
    getChessSquareStateItemA1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookA1);
    getChessSquareStateItemB1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightB1);
    getChessSquareStateItemC1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopC1);
    getChessSquareStateItemD1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemQueenD1);
    getChessSquareStateItemE1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKingE1);
    getChessSquareStateItemF1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopF1);
    getChessSquareStateItemG1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightG1);
    getChessSquareStateItemH1?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookH1);

    /// -----
    /// TODO: ROW A2-H2
    /// -----
    getChessSquareStateItemA2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnA2);
    getChessSquareStateItemB2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnB2);
    getChessSquareStateItemC2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnC2);
    getChessSquareStateItemD2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnD2);
    getChessSquareStateItemE2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnE2);
    getChessSquareStateItemF2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnF2);
    getChessSquareStateItemG2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnG2);
    getChessSquareStateItemH2?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnH2);

    /// -----
    /// TODO: ROW A7-H7
    /// -----
    getChessSquareStateItemA7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnA7);
    getChessSquareStateItemB7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnB7);
    getChessSquareStateItemC7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnC7);
    getChessSquareStateItemD7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnD7);
    getChessSquareStateItemE7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnE7);
    getChessSquareStateItemG7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnF7);
    getChessSquareStateItemF7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnG7);
    getChessSquareStateItemH7?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemPawnH7);

    /// -----
    /// TODO: ROW A8-H8
    /// -----
    getChessSquareStateItemA8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookA8);
    getChessSquareStateItemB8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightB8);
    getChessSquareStateItemC8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopC8);
    getChessSquareStateItemD8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemQueenD8);
    getChessSquareStateItemE8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKingE8);
    getChessSquareStateItemF8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemBishopF8);
    getChessSquareStateItemG8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemKnightG8);
    getChessSquareStateItemH8?.getStateModel?.setChessPieceStateItem(value: getChessPieceManagement?.getChessPieceStateItemRookH8);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ChessSquareStateItem? getChessSquareStateItemById({required String id}) {
    for (ChessSquareStateItem? chessSquareStateItem in (getChessSquareStateItemAsList ?? [])) {
      if (chessSquareStateItem?.getStateModel?.getId == id) {
        return chessSquareStateItem;
      }
    }

    return null;
  }

  void getLegalMoves({ChessSquareStateItem? chessSquareStateItem}) {
    if (chessSquareStateItem?.getStateModel?.getChessPieceStateItem?.getStateModel?.isPawn() == true) {
      if (chessSquareStateItem?.getStateModel?.getId == '[CHESS_SQUARE_A2]') {
        if (getChessSquareStateItemById(id: '[CHESS_SQUARE_A3]')?.getStateModel?.isEmptyChessPiece() == true) {
          getChessSquareStateItemById(id: '[CHESS_SQUARE_A3]')?.getStateModel?.setIsHighlightCanMoveByChessPiece(value: true, isPriorityOverride: true);
        }
      }
    }
  }
}
