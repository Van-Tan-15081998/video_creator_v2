import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_square_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/square_chess_board_management.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class ChessSquare with ExecutionCore {
  ChessSquare({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  SquareChessBoardManagement? _squareChessBoardManagement;
  SquareChessBoardManagement? get getSquareChessBoardManagement => _squareChessBoardManagement;
  void setSquareChessBoardManagement({required SquareChessBoardManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _squareChessBoardManagement = value;
    } else {
      _squareChessBoardManagement ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ROW A1-H1
  /// -----
  ChessSquare.a1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('A2')
      ..add('A3')
      ..add('A4')
      ..add('A5')
      ..add('A6')
      ..add('A7')
      ..add('A8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B1')
      ..add('C1')
      ..add('D1')
      ..add('E1')
      ..add('F1')
      ..add('G1')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('B2')
      ..add('C3')
      ..add('D4')
      ..add('E5')
      ..add('F6')
      ..add('G7')
      ..add('H8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B3')
      ..add('C2');

    ///
  }
  ChessSquare.b1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('B2')
      ..add('B3')
      ..add('B4')
      ..add('B5')
      ..add('B6')
      ..add('B7')
      ..add('B8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A1')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C1')
      ..add('D1')
      ..add('E1')
      ..add('F1')
      ..add('G1')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('A2')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('C2')
      ..add('D3')
      ..add('E4')
      ..add('F5')
      ..add('G6')
      ..add('H7');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A3')
      ..add('C3')
      ..add('D2');

    ///
  }
  ChessSquare.c1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('C2')
      ..add('C3')
      ..add('C4')
      ..add('C5')
      ..add('C6')
      ..add('C7')
      ..add('C8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B1')
      ..add('A1')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D1')
      ..add('E1')
      ..add('F1')
      ..add('G1')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('B2')
      ..add('A3')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('D2')
      ..add('E3')
      ..add('F4')
      ..add('G5')
      ..add('H6');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A2')
      ..add('B3')
      ..add('D3')
      ..add('E2');

    ///
  }
  ChessSquare.d1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('D2')
      ..add('D3')
      ..add('D4')
      ..add('D5')
      ..add('D6')
      ..add('D7')
      ..add('D8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C1')
      ..add('B1')
      ..add('A1');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E1')
      ..add('F1')
      ..add('G1')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('C2')
      ..add('B3')
      ..add('A4');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('E2')
      ..add('F3')
      ..add('G4')
      ..add('H5');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B2')
      ..add('C3')
      ..add('E3')
      ..add('F2');

    ///
  }
  ChessSquare.e1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('E2')
      ..add('E3')
      ..add('E4')
      ..add('E5')
      ..add('E6')
      ..add('E7')
      ..add('E8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D1')
      ..add('C1')
      ..add('B1')
      ..add('A1');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F1')
      ..add('G1')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('D2')
      ..add('C3')
      ..add('B4')
      ..add('A5');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('F2')
      ..add('G3')
      ..add('H4');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C2')
      ..add('D3')
      ..add('F3')
      ..add('G2');

    ///
  }
  ChessSquare.f1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('F2')
      ..add('F3')
      ..add('F4')
      ..add('F5')
      ..add('F6')
      ..add('F7')
      ..add('F8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E1')
      ..add('D1')
      ..add('C1')
      ..add('B1')
      ..add('A1');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G1')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('E2')
      ..add('D3')
      ..add('C4')
      ..add('B5')
      ..add('A6');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('G2')
      ..add('H3')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D2')
      ..add('E3')
      ..add('G3')
      ..add('H2');

    ///
  }
  ChessSquare.g1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('G2')
      ..add('G3')
      ..add('G4')
      ..add('G5')
      ..add('G6')
      ..add('G7')
      ..add('G8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F1')
      ..add('E1')
      ..add('D1')
      ..add('C1')
      ..add('B1')
      ..add('A1');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('F2')
      ..add('E3')
      ..add('D4')
      ..add('C5')
      ..add('B6')
      ..add('A7');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('H2')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E2')
      ..add('F3')
      ..add('H3');

    ///
  }
  ChessSquare.h1({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H1]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('H2')
      ..add('H3')
      ..add('H4')
      ..add('H5')
      ..add('H6')
      ..add('H7')
      ..add('H8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G1')
      ..add('F1')
      ..add('E1')
      ..add('D1')
      ..add('C1')
      ..add('B1')
      ..add('A1');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('G2')
      ..add('F3')
      ..add('E4')
      ..add('D5')
      ..add('C6')
      ..add('B7')
      ..add('A8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F2')
      ..add('G3')
      ..add('');

    ///
  }

  /// -----
  /// TODO: ROW A2-H2
  /// -----
  ChessSquare.a2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('A3')
      ..add('A4')
      ..add('A5')
      ..add('A6')
      ..add('A7')
      ..add('A8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('A1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B2')
      ..add('C2')
      ..add('D2')
      ..add('E2')
      ..add('F2')
      ..add('G2')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('B3')
      ..add('C4')
      ..add('D5')
      ..add('E6')
      ..add('F7')
      ..add('G8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('B1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B4')
      ..add('C3')
      ..add('C1');

    ///
  }
  ChessSquare.b2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('B3')
      ..add('B4')
      ..add('B5')
      ..add('B6')
      ..add('B7')
      ..add('B8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('B1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A2')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C2')
      ..add('D2')
      ..add('E2')
      ..add('F2')
      ..add('G2')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('A3')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('C3')
      ..add('D4')
      ..add('E5')
      ..add('F6')
      ..add('G7')
      ..add('H8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('A1')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('C1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A4')
      ..add('C4')
      ..add('D3')
      ..add('D1');

    ///
  }
  ChessSquare.c2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('C3')
      ..add('C4')
      ..add('C5')
      ..add('C6')
      ..add('C7')
      ..add('C8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('C1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B2')
      ..add('A2')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D2')
      ..add('E2')
      ..add('F2')
      ..add('G2')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('B3')
      ..add('A4')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('D3')
      ..add('E4')
      ..add('F5')
      ..add('G6')
      ..add('H7');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('B1')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('D1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A1')
      ..add('A3')
      ..add('B4')
      ..add('D4')
      ..add('E3')
      ..add('E1');

    ///
  }
  ChessSquare.d2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('D3')
      ..add('D4')
      ..add('D5')
      ..add('D6')
      ..add('D7')
      ..add('D8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('D1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C2')
      ..add('B2')
      ..add('A2');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E2')
      ..add('F2')
      ..add('G2')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('C3')
      ..add('B4')
      ..add('A5');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('E3')
      ..add('F4')
      ..add('G5')
      ..add('H6');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('C1')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('E1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B1')
      ..add('B3')
      ..add('C4')
      ..add('E4')
      ..add('F3')
      ..add('F1');

    ///
  }
  ChessSquare.e2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('E3')
      ..add('E4')
      ..add('E5')
      ..add('E6')
      ..add('E7')
      ..add('E8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('E1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D2')
      ..add('C2')
      ..add('B2')
      ..add('A2');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F2')
      ..add('G2')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('D3')
      ..add('C4')
      ..add('B5')
      ..add('A6');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('F3')
      ..add('G4')
      ..add('H5');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('D1')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('F1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C1')
      ..add('C3')
      ..add('D4')
      ..add('F4')
      ..add('G3')
      ..add('G1');

    ///
  }
  ChessSquare.f2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('F3')
      ..add('F4')
      ..add('F5')
      ..add('F6')
      ..add('F7')
      ..add('F8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('F1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E2')
      ..add('D2')
      ..add('C2')
      ..add('B2')
      ..add('A2');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G2')
      ..add('H2')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('E3')
      ..add('D4')
      ..add('C5')
      ..add('B6')
      ..add('A7');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('G3')
      ..add('H4')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('E1')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('G1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D1')
      ..add('D3')
      ..add('E4')
      ..add('G4')
      ..add('H3')
      ..add('H1');

    ///
  }
  ChessSquare.g2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('G3')
      ..add('G4')
      ..add('G5')
      ..add('G6')
      ..add('G7')
      ..add('G8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('G1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F2')
      ..add('E2')
      ..add('D2')
      ..add('C2')
      ..add('B2')
      ..add('A2');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H2')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('F3')
      ..add('E4')
      ..add('D5')
      ..add('C6')
      ..add('B7')
      ..add('A8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('H3')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('F1')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('H1')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E1')
      ..add('E3')
      ..add('F4')
      ..add('H4');

    ///
  }
  ChessSquare.h2({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H2]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('H3')
      ..add('H4')
      ..add('H5')
      ..add('H6')
      ..add('H7')
      ..add('H8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('H1')
      ..add('')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G2')
      ..add('F2')
      ..add('E2')
      ..add('D2')
      ..add('C2')
      ..add('B2')
      ..add('A2');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('G3')
      ..add('F4')
      ..add('E5')
      ..add('D6')
      ..add('C7')
      ..add('B8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('G1')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F1')
      ..add('F3')
      ..add('G4');

    ///
  }

  /// -----
  /// TODO: ROW A3-H3
  /// -----
  ChessSquare.a3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('A4')
      ..add('A5')
      ..add('A6')
      ..add('A7')
      ..add('A8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('A2')
      ..add('A1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B3')
      ..add('C3')
      ..add('D3')
      ..add('E3')
      ..add('F3')
      ..add('G3')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('B4')
      ..add('C5')
      ..add('D6')
      ..add('E7')
      ..add('F8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('B2')
      ..add('C1')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B5')
      ..add('C4')
      ..add('C2')
      ..add('B1');

    ///
  }
  ChessSquare.b3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('B4')
      ..add('B5')
      ..add('B6')
      ..add('B7')
      ..add('B8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('B2')
      ..add('B1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A3')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C3')
      ..add('D3')
      ..add('E3')
      ..add('F3')
      ..add('G3')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('A4')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('C4')
      ..add('D5')
      ..add('E6')
      ..add('F7')
      ..add('G8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('A2')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('C2')
      ..add('D1')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A5')
      ..add('C5')
      ..add('D4')
      ..add('D2')
      ..add('C1')
      ..add('A1');

    ///
  }
  ChessSquare.c3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('C4')
      ..add('C5')
      ..add('C6')
      ..add('C7')
      ..add('C8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('C2')
      ..add('C1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B3')
      ..add('A3')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D3')
      ..add('E3')
      ..add('F3')
      ..add('G3')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('B4')
      ..add('A5')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('D4')
      ..add('E5')
      ..add('F6')
      ..add('G7')
      ..add('H8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('B2')
      ..add('A1')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('D2')
      ..add('E1')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B5')
      ..add('D5')
      ..add('E4')
      ..add('E2')
      ..add('D1')
      ..add('B1')
      ..add('A2')
      ..add('A4');

    ///
  }
  ChessSquare.d3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('D4')
      ..add('D5')
      ..add('D6')
      ..add('D7')
      ..add('D8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('D2')
      ..add('D1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C3')
      ..add('B3')
      ..add('A3');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E3')
      ..add('F3')
      ..add('G3')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('C4')
      ..add('B5')
      ..add('A6');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('E4')
      ..add('F5')
      ..add('G6')
      ..add('H7');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('C2')
      ..add('B1')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('E2')
      ..add('F1')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C5')
      ..add('E5')
      ..add('F4')
      ..add('F2')
      ..add('E1')
      ..add('C1')
      ..add('B2')
      ..add('B4');

    ///
  }
  ChessSquare.e3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('E4')
      ..add('E5')
      ..add('E6')
      ..add('E7')
      ..add('E8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('E2')
      ..add('E1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D3')
      ..add('C3')
      ..add('B3')
      ..add('A3');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F3')
      ..add('G3')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('D4')
      ..add('C5')
      ..add('B6')
      ..add('A7');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('F4')
      ..add('G5')
      ..add('H6');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('D2')
      ..add('C1')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('F2')
      ..add('G1')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D5')
      ..add('F5')
      ..add('G4')
      ..add('G2')
      ..add('F1')
      ..add('D1')
      ..add('C2')
      ..add('C4');

    ///
  }
  ChessSquare.f3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('F4')
      ..add('F5')
      ..add('F6')
      ..add('F7')
      ..add('F8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('F2')
      ..add('F1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E3')
      ..add('D3')
      ..add('C3')
      ..add('B3')
      ..add('A3');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G3')
      ..add('H3')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('E4')
      ..add('D5')
      ..add('C6')
      ..add('B7')
      ..add('A8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('G4')
      ..add('H5')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('E2')
      ..add('D1')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('G2')
      ..add('H1')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E5')
      ..add('G5')
      ..add('H4')
      ..add('H2')
      ..add('G1')
      ..add('E1')
      ..add('D2')
      ..add('D4');

    ///
  }
  ChessSquare.g3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('G4')
      ..add('G5')
      ..add('G6')
      ..add('G7')
      ..add('G8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('G2')
      ..add('G1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F3')
      ..add('E3')
      ..add('D3')
      ..add('C3')
      ..add('B3')
      ..add('A3');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H3')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('F4')
      ..add('E5')
      ..add('D6')
      ..add('C7')
      ..add('B8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('H4')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('F2')
      ..add('E1')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('H2')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F5')
      ..add('H5')
      ..add('H1')
      ..add('F1')
      ..add('E2')
      ..add('E4');

    ///
  }
  ChessSquare.h3({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H3]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('H4')
      ..add('H5')
      ..add('H6')
      ..add('H7')
      ..add('H8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('H2')
      ..add('H1')
      ..add('');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G3')
      ..add('F3')
      ..add('E3')
      ..add('D3')
      ..add('C3')
      ..add('B3')
      ..add('A3');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('G4')
      ..add('F5')
      ..add('E6')
      ..add('D7')
      ..add('C8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('G2')
      ..add('F1')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G5')
      ..add('G1')
      ..add('F2')
      ..add('F4');

    ///
  }

  /// -----
  /// TODO: ROW A4-H4
  /// -----
  ChessSquare.a4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('A5')
      ..add('A6')
      ..add('A7')
      ..add('A8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('A3')
      ..add('A2')
      ..add('A1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B4')
      ..add('C4')
      ..add('D4')
      ..add('E4')
      ..add('F4')
      ..add('G4')
      ..add('H4');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('B5')
      ..add('C6')
      ..add('D7')
      ..add('E8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('B3')
      ..add('C2')
      ..add('D1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B6')
      ..add('C5')
      ..add('C3')
      ..add('B2');

    ///
  }
  ChessSquare.b4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('B5')
      ..add('B6')
      ..add('B7')
      ..add('B8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('B3')
      ..add('B2')
      ..add('B1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A4')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C4')
      ..add('D4')
      ..add('E4')
      ..add('F4')
      ..add('G4')
      ..add('H4');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('A5')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('C5')
      ..add('D6')
      ..add('E7')
      ..add('F8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('A3')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('C3')
      ..add('D2')
      ..add('E1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A6')
      ..add('C6')
      ..add('D5')
      ..add('D3')
      ..add('C2')
      ..add('A2');

    ///
  }
  ChessSquare.c4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('C5')
      ..add('C6')
      ..add('C7')
      ..add('C8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('C3')
      ..add('C2')
      ..add('C1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B4')
      ..add('A4')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D4')
      ..add('E4')
      ..add('F4')
      ..add('G4')
      ..add('H4');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('B5')
      ..add('A6')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('D5')
      ..add('E6')
      ..add('F7')
      ..add('G8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('B3')
      ..add('A2')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('D3')
      ..add('E2')
      ..add('F1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B6')
      ..add('D6')
      ..add('E5')
      ..add('E3')
      ..add('D2')
      ..add('B2')
      ..add('A3')
      ..add('A5');

    ///
  }
  ChessSquare.d4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('D5')
      ..add('D6')
      ..add('D7')
      ..add('D8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('D3')
      ..add('D2')
      ..add('D1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C4')
      ..add('B4')
      ..add('A4');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E4')
      ..add('F4')
      ..add('G4')
      ..add('H4');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('C5')
      ..add('B6')
      ..add('A7');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('E5')
      ..add('F6')
      ..add('G7')
      ..add('H8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('C3')
      ..add('B2')
      ..add('A1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('E3')
      ..add('F2')
      ..add('G1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C6')
      ..add('E6')
      ..add('F5')
      ..add('F3')
      ..add('E2')
      ..add('C2')
      ..add('B3')
      ..add('B5');

    ///
  }
  ChessSquare.e4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('E5')
      ..add('E6')
      ..add('E7')
      ..add('E8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('E3')
      ..add('E2')
      ..add('E1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D4')
      ..add('C4')
      ..add('B4')
      ..add('A4');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F4')
      ..add('G4')
      ..add('H4');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('D5')
      ..add('C6')
      ..add('B7')
      ..add('A8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('F5')
      ..add('G6')
      ..add('H7');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('D3')
      ..add('C2')
      ..add('B1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('F3')
      ..add('G2')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D6')
      ..add('F6')
      ..add('G5')
      ..add('G3')
      ..add('F2')
      ..add('D2')
      ..add('C3')
      ..add('C5');

    ///
  }
  ChessSquare.f4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('F5')
      ..add('F6')
      ..add('F7')
      ..add('F8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('F3')
      ..add('F2')
      ..add('F1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E4')
      ..add('D4')
      ..add('C4')
      ..add('B4')
      ..add('A4');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G4')
      ..add('H4')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('E5')
      ..add('D6')
      ..add('C7')
      ..add('B8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('G5')
      ..add('H6')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('E3')
      ..add('D2')
      ..add('C1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('G3')
      ..add('H2')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E6')
      ..add('G6')
      ..add('H5')
      ..add('H3')
      ..add('G2')
      ..add('E2')
      ..add('D3')
      ..add('D5');

    ///
  }
  ChessSquare.g4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('G5')
      ..add('G6')
      ..add('G7')
      ..add('G8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('G3')
      ..add('G2')
      ..add('G1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F4')
      ..add('E4')
      ..add('D4')
      ..add('C4')
      ..add('B4')
      ..add('A4');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H4')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('F5')
      ..add('E6')
      ..add('D7')
      ..add('C8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('H5')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('F3')
      ..add('E2')
      ..add('D1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('H3')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F6')
      ..add('H6')
      ..add('H2')
      ..add('F2')
      ..add('E3')
      ..add('E5');

    ///
  }
  ChessSquare.h4({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H4]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('H5')
      ..add('H6')
      ..add('H7')
      ..add('H8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('H3')
      ..add('H2')
      ..add('H1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G4')
      ..add('F4')
      ..add('E4')
      ..add('D4')
      ..add('C4')
      ..add('B4')
      ..add('A4');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('G5')
      ..add('F6')
      ..add('E7')
      ..add('D8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('G3')
      ..add('F2')
      ..add('E1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G6')
      ..add('G2')
      ..add('F3')
      ..add('F5');

    ///
  }

  /// -----
  /// TODO: ROW A5-H5
  /// -----
  ChessSquare.a5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('A6')
      ..add('A7')
      ..add('A8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('A4')
      ..add('A3')
      ..add('A2')
      ..add('A1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B5')
      ..add('C5')
      ..add('D5')
      ..add('E5')
      ..add('F5')
      ..add('G5')
      ..add('H5');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('B6')
      ..add('C7')
      ..add('D8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('B4')
      ..add('C3')
      ..add('D2')
      ..add('E1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B7')
      ..add('C6')
      ..add('C4')
      ..add('B3');

    ///
  }
  ChessSquare.b5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('B6')
      ..add('B7')
      ..add('B8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('B4')
      ..add('B3')
      ..add('B2')
      ..add('B1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A5')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C5')
      ..add('D5')
      ..add('E5')
      ..add('F5')
      ..add('G5')
      ..add('H5');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('A6')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('C6')
      ..add('D7')
      ..add('E8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('A4')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('C4')
      ..add('D3')
      ..add('E2')
      ..add('F1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A7')
      ..add('C7')
      ..add('D6')
      ..add('D4')
      ..add('C3')
      ..add('A3');

    ///
  }
  ChessSquare.c5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('C6')
      ..add('C7')
      ..add('C8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('C4')
      ..add('C3')
      ..add('C2')
      ..add('C1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B5')
      ..add('A5')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D5')
      ..add('E5')
      ..add('F5')
      ..add('G5')
      ..add('H5');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('B6')
      ..add('A7')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('D6')
      ..add('E7')
      ..add('F8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('B4')
      ..add('A3')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('D4')
      ..add('E3')
      ..add('F2')
      ..add('G1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B7')
      ..add('D7')
      ..add('E6')
      ..add('E4')
      ..add('D3')
      ..add('B3')
      ..add('A4')
      ..add('A6');

    ///
  }
  ChessSquare.d5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('D6')
      ..add('D7')
      ..add('D8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('D4')
      ..add('D3')
      ..add('D2')
      ..add('D1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C5')
      ..add('B5')
      ..add('A5');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E5')
      ..add('F5')
      ..add('G5')
      ..add('H5');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('C6')
      ..add('B7')
      ..add('A8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('E6')
      ..add('F7')
      ..add('G8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('C4')
      ..add('B3')
      ..add('A2');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('E4')
      ..add('F3')
      ..add('G2')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C7')
      ..add('E7')
      ..add('F6')
      ..add('F4')
      ..add('E3')
      ..add('C3')
      ..add('B4')
      ..add('B6');

    ///
  }
  ChessSquare.e5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('E6')
      ..add('E7')
      ..add('E8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('E4')
      ..add('E3')
      ..add('E2')
      ..add('E1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D5')
      ..add('C5')
      ..add('B5')
      ..add('A5');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F5')
      ..add('G5')
      ..add('H5');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('D6')
      ..add('C7')
      ..add('B8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('F6')
      ..add('G7')
      ..add('H8');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('D4')
      ..add('C3')
      ..add('B2')
      ..add('A1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('F4')
      ..add('G3')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D7')
      ..add('F7')
      ..add('G6')
      ..add('G4')
      ..add('F3')
      ..add('D3')
      ..add('C4')
      ..add('C6');

    ///
  }
  ChessSquare.f5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('F6')
      ..add('F7')
      ..add('F8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('F4')
      ..add('F3')
      ..add('F2')
      ..add('F1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E5')
      ..add('D5')
      ..add('C5')
      ..add('B5')
      ..add('A5');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G5')
      ..add('H5')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('E6')
      ..add('D7')
      ..add('C8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('G6')
      ..add('H7')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('E4')
      ..add('D3')
      ..add('C2')
      ..add('B1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('G4')
      ..add('H3')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E7')
      ..add('G7')
      ..add('H6')
      ..add('H4')
      ..add('G3')
      ..add('E3')
      ..add('D4')
      ..add('D6');

    ///
  }
  ChessSquare.g5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('G6')
      ..add('G7')
      ..add('G8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('G4')
      ..add('G3')
      ..add('G2')
      ..add('G1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F5')
      ..add('E5')
      ..add('D5')
      ..add('C5')
      ..add('B5')
      ..add('A5');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H5')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('F6')
      ..add('E7')
      ..add('D8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('H6')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('F4')
      ..add('E3')
      ..add('D2')
      ..add('C1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('H4')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F7')
      ..add('H7')
      ..add('H3')
      ..add('F3')
      ..add('E4')
      ..add('E6');

    ///
  }
  ChessSquare.h5({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H5]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('H6')
      ..add('H7')
      ..add('H8');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('H4')
      ..add('H3')
      ..add('H2')
      ..add('H1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G5')
      ..add('F5')
      ..add('E5')
      ..add('D5')
      ..add('C5')
      ..add('B5')
      ..add('A5');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('G6')
      ..add('F7')
      ..add('E8');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('G4')
      ..add('F3')
      ..add('E2')
      ..add('D1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G7')
      ..add('G3')
      ..add('F4')
      ..add('F6');

    ///
  }

  /// -----
  /// TODO: ROW A6-H6
  /// -----
  ChessSquare.a6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('A7')
      ..add('A8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('A5')
      ..add('A4')
      ..add('A3')
      ..add('A2')
      ..add('A1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B6')
      ..add('C6')
      ..add('D6')
      ..add('E6')
      ..add('F6')
      ..add('G6')
      ..add('H6');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('B7')
      ..add('C8')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('B5')
      ..add('C4')
      ..add('D3')
      ..add('E2')
      ..add('F1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B8')
      ..add('C7')
      ..add('C5')
      ..add('B4');

    ///
  }
  ChessSquare.b6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('B7')
      ..add('B8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('B5')
      ..add('B4')
      ..add('B3')
      ..add('B2')
      ..add('B1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A6')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C6')
      ..add('D6')
      ..add('E6')
      ..add('F6')
      ..add('G6')
      ..add('H6');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('A7')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('C7')
      ..add('D8')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('A5')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('C5')
      ..add('D4')
      ..add('E3')
      ..add('F2')
      ..add('G1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('A8')
      ..add('C8')
      ..add('D7')
      ..add('D5')
      ..add('C4')
      ..add('A4');

    ///
  }
  ChessSquare.c6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('C7')
      ..add('C8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('C5')
      ..add('C4')
      ..add('C3')
      ..add('C2')
      ..add('C1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B6')
      ..add('A6')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D6')
      ..add('E6')
      ..add('F6')
      ..add('G6')
      ..add('H6');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('B7')
      ..add('A8')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('D7')
      ..add('E8')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('B5')
      ..add('A4')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('D5')
      ..add('E4')
      ..add('F3')
      ..add('G2')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('B8')
      ..add('D8')
      ..add('E7')
      ..add('E5')
      ..add('D4')
      ..add('B4')
      ..add('A5')
      ..add('A7');

    ///
  }
  ChessSquare.d6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('D7')
      ..add('D8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('D5')
      ..add('D4')
      ..add('D3')
      ..add('D2')
      ..add('D1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C6')
      ..add('B6')
      ..add('A6');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E6')
      ..add('F6')
      ..add('G6')
      ..add('H6');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('C7')
      ..add('B8')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('E7')
      ..add('F8')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('C5')
      ..add('B4')
      ..add('A3');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('E5')
      ..add('F4')
      ..add('G3')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C8')
      ..add('E8')
      ..add('F7')
      ..add('F5')
      ..add('E4')
      ..add('C4')
      ..add('B5')
      ..add('B7');

    ///
  }
  ChessSquare.e6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('E7')
      ..add('E8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('E5')
      ..add('E4')
      ..add('E3')
      ..add('E2')
      ..add('E1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D6')
      ..add('C6')
      ..add('B6')
      ..add('A6');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F6')
      ..add('G6')
      ..add('H6');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('D7')
      ..add('C8')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('F7')
      ..add('G8')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('D5')
      ..add('C4')
      ..add('B3')
      ..add('A2');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('F5')
      ..add('G4')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D8')
      ..add('F8')
      ..add('G7')
      ..add('G5')
      ..add('F4')
      ..add('D4')
      ..add('C5')
      ..add('C7');

    ///
  }
  ChessSquare.f6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('F7')
      ..add('F8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('F5')
      ..add('F4')
      ..add('F3')
      ..add('F2')
      ..add('F1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E6')
      ..add('D6')
      ..add('C6')
      ..add('B6')
      ..add('A6');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G6')
      ..add('H6')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('E7')
      ..add('D8')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('G7')
      ..add('H8')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('E5')
      ..add('D4')
      ..add('C3')
      ..add('B2')
      ..add('A1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('G5')
      ..add('H4')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E8')
      ..add('G8')
      ..add('H7')
      ..add('H5')
      ..add('G4')
      ..add('E4')
      ..add('D5')
      ..add('D7');

    ///
  }
  ChessSquare.g6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('G7')
      ..add('G8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('G5')
      ..add('G4')
      ..add('G3')
      ..add('G2')
      ..add('G1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F6')
      ..add('E6')
      ..add('D6')
      ..add('C6')
      ..add('B6')
      ..add('A6');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H6')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('F7')
      ..add('E8')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('H7')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('F5')
      ..add('E4')
      ..add('D3')
      ..add('C2')
      ..add('B1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('H5')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F8')
      ..add('H8')
      ..add('H4')
      ..add('F4')
      ..add('E5')
      ..add('E7');

    ///
  }
  ChessSquare.h6({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H6]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('H7')
      ..add('H8')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('H5')
      ..add('H4')
      ..add('H3')
      ..add('H2')
      ..add('H1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G6')
      ..add('F6')
      ..add('E6')
      ..add('D6')
      ..add('C6')
      ..add('B6')
      ..add('A6');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('G7')
      ..add('F8')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('G5')
      ..add('F4')
      ..add('E3')
      ..add('D2')
      ..add('C1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G8')
      ..add('G4')
      ..add('F5')
      ..add('F7');

    ///
  }

  /// -----
  /// TODO: ROW A7-H7
  /// -----
  ChessSquare.a7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('A8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('A6')
      ..add('A5')
      ..add('A4')
      ..add('A3')
      ..add('A2')
      ..add('A1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B7')
      ..add('C7')
      ..add('D7')
      ..add('E7')
      ..add('F7')
      ..add('G7')
      ..add('H7');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('B8')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('B6')
      ..add('C5')
      ..add('D4')
      ..add('E3')
      ..add('F2')
      ..add('G1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C8')
      ..add('C6')
      ..add('B5');

    ///
  }
  ChessSquare.b7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('B8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('B6')
      ..add('B5')
      ..add('B4')
      ..add('B3')
      ..add('B2')
      ..add('B1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A7')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C7')
      ..add('D7')
      ..add('E7')
      ..add('F7')
      ..add('G7')
      ..add('H7');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('A8')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('C8')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('A6')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('C6')
      ..add('D5')
      ..add('E4')
      ..add('F3')
      ..add('G2')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D8')
      ..add('D6')
      ..add('C5')
      ..add('A5');

    ///
  }
  ChessSquare.c7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('C8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('C6')
      ..add('C5')
      ..add('C4')
      ..add('C3')
      ..add('C2')
      ..add('C1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B7')
      ..add('A7')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D7')
      ..add('E7')
      ..add('F7')
      ..add('G7')
      ..add('H7');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('B8')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('D8')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('B6')
      ..add('A5')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('D6')
      ..add('E5')
      ..add('F4')
      ..add('G3')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E8')
      ..add('E6')
      ..add('D5')
      ..add('B5')
      ..add('A6')
      ..add('A8');

    ///
  }
  ChessSquare.d7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('D8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('D6')
      ..add('D5')
      ..add('D4')
      ..add('D3')
      ..add('D2')
      ..add('D1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C7')
      ..add('B7')
      ..add('A7');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E7')
      ..add('F7')
      ..add('G7')
      ..add('H7');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('C8')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('E8')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('C6')
      ..add('B5')
      ..add('A4');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('E6')
      ..add('F5')
      ..add('G4')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F8')
      ..add('F6')
      ..add('E5')
      ..add('C5')
      ..add('B6')
      ..add('B8');

    ///
  }
  ChessSquare.e7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('E8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('E6')
      ..add('E5')
      ..add('E4')
      ..add('E3')
      ..add('E2')
      ..add('E1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D7')
      ..add('C7')
      ..add('B7')
      ..add('A7');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F7')
      ..add('G7')
      ..add('H7');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('D8')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('F8')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('D6')
      ..add('C5')
      ..add('B4')
      ..add('A3');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('F6')
      ..add('G5')
      ..add('H4');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G8')
      ..add('G6')
      ..add('F5')
      ..add('D5')
      ..add('C6')
      ..add('C8');

    ///
  }
  ChessSquare.f7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('F8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('F6')
      ..add('F5')
      ..add('F4')
      ..add('F3')
      ..add('F2')
      ..add('F1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E7')
      ..add('D7')
      ..add('C7')
      ..add('B7')
      ..add('A7');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G7')
      ..add('H7')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('E8')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('G8')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('E6')
      ..add('D5')
      ..add('C4')
      ..add('B3')
      ..add('A2');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('G6')
      ..add('H5')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('H8')
      ..add('H6')
      ..add('G5')
      ..add('E5')
      ..add('D6')
      ..add('D8');

    ///
  }
  ChessSquare.g7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('G8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('G6')
      ..add('G5')
      ..add('G4')
      ..add('G3')
      ..add('G2')
      ..add('G1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F7')
      ..add('E7')
      ..add('D7')
      ..add('C7')
      ..add('B7')
      ..add('A7');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H7')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('F8')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('H8')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('F6')
      ..add('E5')
      ..add('D4')
      ..add('C3')
      ..add('B2')
      ..add('A1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('H6')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('H5')
      ..add('F5')
      ..add('E6')
      ..add('E8');

    ///
  }
  ChessSquare.h7({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H7]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('H8')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('H6')
      ..add('H5')
      ..add('H4')
      ..add('H3')
      ..add('H2')
      ..add('H1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G7')
      ..add('F7')
      ..add('E7')
      ..add('D7')
      ..add('C7')
      ..add('B7')
      ..add('A7');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('G8')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('G6')
      ..add('F5')
      ..add('E4')
      ..add('D3')
      ..add('C2')
      ..add('B1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G5')
      ..add('F6')
      ..add('F8');

    ///
  }

  /// -----
  /// TODO: ROW A8-H8
  /// -----
  ChessSquare.a8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_A8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('A7')
      ..add('A6')
      ..add('A5')
      ..add('A4')
      ..add('A3')
      ..add('A2')
      ..add('A1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('B8')
      ..add('C8')
      ..add('D8')
      ..add('E8')
      ..add('F8')
      ..add('G8')
      ..add('H8');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('B7')
      ..add('C6')
      ..add('D5')
      ..add('E4')
      ..add('F3')
      ..add('G2')
      ..add('H1');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('C7')
      ..add('B6')
      ..add('');

    ///
  }
  ChessSquare.b8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_B8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('B7')
      ..add('B6')
      ..add('B5')
      ..add('B4')
      ..add('B3')
      ..add('B2')
      ..add('B1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('A8')
      ..add('')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('C8')
      ..add('D8')
      ..add('E8')
      ..add('F8')
      ..add('G8')
      ..add('H8');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('A7')
      ..add('')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('C7')
      ..add('D6')
      ..add('E5')
      ..add('F4')
      ..add('G3')
      ..add('H2');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('D7')
      ..add('C6')
      ..add('A6');

    ///
  }
  ChessSquare.c8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_C8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('C7')
      ..add('C6')
      ..add('C5')
      ..add('C4')
      ..add('C3')
      ..add('C2')
      ..add('C1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('B8')
      ..add('A8')
      ..add('');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('D8')
      ..add('E8')
      ..add('F8')
      ..add('G8')
      ..add('H8');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('B7')
      ..add('A6')
      ..add('');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('D7')
      ..add('E6')
      ..add('F5')
      ..add('G4')
      ..add('H3');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('E7')
      ..add('D6')
      ..add('B6')
      ..add('A7');

    ///
  }
  ChessSquare.d8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_D8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('D7')
      ..add('D6')
      ..add('D5')
      ..add('D4')
      ..add('D3')
      ..add('D2')
      ..add('D1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('C8')
      ..add('B8')
      ..add('A8');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('E8')
      ..add('F8')
      ..add('G8')
      ..add('H8');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('C7')
      ..add('B6')
      ..add('A5');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('E7')
      ..add('F6')
      ..add('G5')
      ..add('H4');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('F7')
      ..add('E6')
      ..add('C6')
      ..add('B7');

    ///
  }
  ChessSquare.e8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_E8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('E7')
      ..add('E6')
      ..add('E5')
      ..add('E4')
      ..add('E3')
      ..add('E2')
      ..add('E1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('D8')
      ..add('C8')
      ..add('B8')
      ..add('A8');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('F8')
      ..add('G8')
      ..add('H8');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('D7')
      ..add('C6')
      ..add('B5')
      ..add('A4');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('F7')
      ..add('G6')
      ..add('H5');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G7')
      ..add('F6')
      ..add('D6')
      ..add('C7');

    ///
  }
  ChessSquare.f8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_F8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('F7')
      ..add('F6')
      ..add('F5')
      ..add('F4')
      ..add('F3')
      ..add('F2')
      ..add('F1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('E8')
      ..add('D8')
      ..add('C8')
      ..add('B8')
      ..add('A8');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('G8')
      ..add('H8')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('E7')
      ..add('D6')
      ..add('C5')
      ..add('B4')
      ..add('A3');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('G7')
      ..add('H6')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('H7')
      ..add('G6')
      ..add('E6')
      ..add('D7');

    ///
  }
  ChessSquare.g8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_G8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('G7')
      ..add('G6')
      ..add('G5')
      ..add('G4')
      ..add('G3')
      ..add('G2')
      ..add('G1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('F8')
      ..add('E8')
      ..add('D8')
      ..add('C8')
      ..add('B8')
      ..add('A8');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('H8')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('F7')
      ..add('E6')
      ..add('D5')
      ..add('C4')
      ..add('B3')
      ..add('A2');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('H7')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('H6')
      ..add('F6')
      ..add('E7');

    ///
  }
  ChessSquare.h8({required SystemStateManagement? systemStateManagement, required SquareChessBoardManagement? squareChessBoardManagement}) {
    setSystemStateManagement(value: systemStateManagement);
    setSquareChessBoardManagement(value: squareChessBoardManagement, isPriorityOverride: true);

    setId(value: '[CHESS_SQUARE_H8]', isPriorityOverride: true);
    initChessSquareStateItemAsList();

    /// TODO: ⬆️ center-top [center-topCenter]
    getChessSquareStateItemAsCenterToTopCenterIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    getChessSquareStateItemAsCenterToBottomCenterIdList
      ?..add('H7')
      ..add('H6')
      ..add('H5')
      ..add('H4')
      ..add('H3')
      ..add('H2')
      ..add('H1');

    /// TODO: ⬅️ center-left [center-centerStart]
    getChessSquareStateItemAsCenterToCenterStartIdList
      ?..add('G8')
      ..add('F8')
      ..add('E8')
      ..add('D8')
      ..add('C8')
      ..add('B8')
      ..add('A8');

    /// TODO: ➡️ center-right [center-centerEnd]
    getChessSquareStateItemAsCenterToCenterEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: ↖️ center-topLeft [center-topStart]
    getChessSquareStateItemAsCenterToTopStartIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↗️ center-topRight [center-topEnd]
    getChessSquareStateItemAsCenterToTopEndIdList
      ?..add('')
      ..add('')
      ..add('');

    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    getChessSquareStateItemAsCenterToBottomStartIdList
      ?..add('G7')
      ..add('F6')
      ..add('E5')
      ..add('D4')
      ..add('C3')
      ..add('B2')
      ..add('A1');

    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    getChessSquareStateItemAsCenterToBottomEndIdList
      ?..add('')
      ..add('')
      ..add('');

    ///
    ///
    ///

    /// TODO: center-LKnight
    getChessSquareStateItemAsCenterToLKnightIdList
      ?..add('G6')
      ..add('F7')
      ..add('');

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

  /// -----
  /// TODO:
  /// -----
  bool isEmptyChessPiece() {
    if (getChessPieceStateItem == null) {
      return true;
    }
    return false;
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

  onPositionSynchronize() {
    /// -----
    /// TODO: Đồng Bộ Hóa Vị Trí Quân Cờ Và Ô Cờ
    /// -----
    getChessPieceStateItem?.getStateModel?.setTopPosition(value: getTopPosition, isPriorityOverride: true);
    getChessPieceStateItem?.getStateModel?.setLeftPosition(value: getLeftPosition, isPriorityOverride: true);
  }

  /// -----
  /// TODO: ⬆️ center-top [center-topCenter]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToTopCenterIdList;
  List<String>? get getChessSquareStateItemAsCenterToTopCenterIdList => _chessSquareStateItemAsCenterToTopCenterIdList;
  void setChessSquareStateItemAsCenterToTopCenterIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToTopCenterIdList = value;
    } else {
      _chessSquareStateItemAsCenterToTopCenterIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToTopCenterList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToTopCenterList => _chessSquareStateItemAsCenterToTopCenterList;
  void setChessSquareStateItemAsCenterToTopCenterList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToTopCenterList = value;
    } else {
      _chessSquareStateItemAsCenterToTopCenterList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ⬇️ center-bottom [center-bottomCenter]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToBottomCenterIdList;
  List<String>? get getChessSquareStateItemAsCenterToBottomCenterIdList => _chessSquareStateItemAsCenterToBottomCenterIdList;
  void setChessSquareStateItemAsCenterToBottomCenterIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToBottomCenterIdList = value;
    } else {
      _chessSquareStateItemAsCenterToBottomCenterIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToBottomCenterList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToBottomCenterList => _chessSquareStateItemAsCenterToBottomCenterList;
  void setChessSquareStateItemAsCenterToBottomCenterList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToBottomCenterList = value;
    } else {
      _chessSquareStateItemAsCenterToBottomCenterList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ⬅️ center-left [center-centerStart]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToCenterStartIdList;
  List<String>? get getChessSquareStateItemAsCenterToCenterStartIdList => _chessSquareStateItemAsCenterToCenterStartIdList;
  void setChessSquareStateItemAsCenterToCenterStartIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToCenterStartIdList = value;
    } else {
      _chessSquareStateItemAsCenterToCenterStartIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToCenterStartList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToCenterStartList => _chessSquareStateItemAsCenterToCenterStartList;
  void setChessSquareStateItemAsCenterToCenterStartList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToCenterStartList = value;
    } else {
      _chessSquareStateItemAsCenterToCenterStartList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ➡️ center-right [center-centerEnd]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToCenterEndIdList;
  List<String>? get getChessSquareStateItemAsCenterToCenterEndIdList => _chessSquareStateItemAsCenterToCenterEndIdList;
  void setChessSquareStateItemAsCenterToCenterEndIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToCenterEndIdList = value;
    } else {
      _chessSquareStateItemAsCenterToCenterEndIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToCenterEndList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToCenterEndList => _chessSquareStateItemAsCenterToCenterEndList;
  void setChessSquareStateItemAsCenterToCenterEndList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToCenterEndList = value;
    } else {
      _chessSquareStateItemAsCenterToCenterEndList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ↖️ center-topLeft [center-topStart]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToTopStartIdList;
  List<String>? get getChessSquareStateItemAsCenterToTopStartIdList => _chessSquareStateItemAsCenterToTopStartIdList;
  void setChessSquareStateItemAsCenterToTopStartIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToTopStartIdList = value;
    } else {
      _chessSquareStateItemAsCenterToTopStartIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToTopStartList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToTopStartList => _chessSquareStateItemAsCenterToTopStartList;
  void setChessSquareStateItemAsCenterToTopStartList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToTopStartList = value;
    } else {
      _chessSquareStateItemAsCenterToTopStartList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ↗️ center-topRight [center-topEnd]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToTopEndIdList;
  List<String>? get getChessSquareStateItemAsCenterToTopEndIdList => _chessSquareStateItemAsCenterToTopEndIdList;
  void setChessSquareStateItemAsCenterToTopEndIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToTopEndIdList = value;
    } else {
      _chessSquareStateItemAsCenterToTopEndIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToTopEndList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToTopEndList => _chessSquareStateItemAsCenterToTopEndList;
  void setChessSquareStateItemAsCenterToTopEndList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToTopEndList = value;
    } else {
      _chessSquareStateItemAsCenterToTopEndList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ↙️ center-bottomLeft [center-bottomStart]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToBottomStartIdList;
  List<String>? get getChessSquareStateItemAsCenterToBottomStartIdList => _chessSquareStateItemAsCenterToBottomStartIdList;
  void setChessSquareStateItemAsCenterToBottomStartIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToBottomStartIdList = value;
    } else {
      _chessSquareStateItemAsCenterToBottomStartIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToBottomStartList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToBottomStartList => _chessSquareStateItemAsCenterToBottomStartList;
  void setChessSquareStateItemAsCenterToBottomStartList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToBottomStartList = value;
    } else {
      _chessSquareStateItemAsCenterToBottomStartList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: ↘️ center-bottomRight [center-bottomEnd]
  /// -----
  List<String>? _chessSquareStateItemAsCenterToBottomEndIdList;
  List<String>? get getChessSquareStateItemAsCenterToBottomEndIdList => _chessSquareStateItemAsCenterToBottomEndIdList;
  void setChessSquareStateItemAsCenterToBottomEndIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToBottomEndIdList = value;
    } else {
      _chessSquareStateItemAsCenterToBottomEndIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToBottomEndList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToBottomEndList => _chessSquareStateItemAsCenterToBottomEndList;
  void setChessSquareStateItemAsCenterToBottomEndList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToBottomEndList = value;
    } else {
      _chessSquareStateItemAsCenterToBottomEndList ??= value;
    }

    return;
  }

  /// -----
  /// TODO: center-LKnight
  /// -----
  List<String>? _chessSquareStateItemAsCenterToLKnightIdList;
  List<String>? get getChessSquareStateItemAsCenterToLKnightIdList => _chessSquareStateItemAsCenterToLKnightIdList;
  void setChessSquareStateItemAsCenterToLKnightIdList({required List<String>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToLKnightIdList = value;
    } else {
      _chessSquareStateItemAsCenterToLKnightIdList ??= value;
    }

    return;
  }

  List<ChessSquareStateItem?>? _chessSquareStateItemAsCenterToLKnightList;
  List<ChessSquareStateItem?>? get getChessSquareStateItemAsCenterToLKnightList => _chessSquareStateItemAsCenterToLKnightList;
  void setChessSquareStateItemAsCenterToLKnightList({required List<ChessSquareStateItem?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _chessSquareStateItemAsCenterToLKnightList = value;
    } else {
      _chessSquareStateItemAsCenterToLKnightList ??= value;
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
    setChessSquareStateItemAsCenterToTopCenterIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToTopCenterList(value: [], isPriorityOverride: true);

    setChessSquareStateItemAsCenterToBottomCenterIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToBottomCenterList(value: [], isPriorityOverride: true);

    setChessSquareStateItemAsCenterToCenterStartIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToCenterStartList(value: [], isPriorityOverride: true);

    setChessSquareStateItemAsCenterToCenterEndIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToCenterEndList(value: [], isPriorityOverride: true);

    ///

    setChessSquareStateItemAsCenterToTopStartIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToTopStartList(value: [], isPriorityOverride: true);

    setChessSquareStateItemAsCenterToTopEndIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToTopEndList(value: [], isPriorityOverride: true);

    setChessSquareStateItemAsCenterToBottomStartIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToBottomStartList(value: [], isPriorityOverride: true);

    setChessSquareStateItemAsCenterToBottomEndIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToBottomEndList(value: [], isPriorityOverride: true);

    ///
    setChessSquareStateItemAsCenterToLKnightIdList(value: [], isPriorityOverride: true);
    setChessSquareStateItemAsCenterToLKnightList(value: [], isPriorityOverride: true);
  }

  void setChessSquareStateItemAsList() {
    /// -----
    /// TODO: ⬆️ center-top [center-topCenter]
    /// -----
    if (getChessSquareStateItemAsCenterToTopCenterIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToTopCenterIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToTopCenterList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: ⬇️ center-bottom [center-bottomCenter]
    /// -----
    if (getChessSquareStateItemAsCenterToBottomCenterIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToBottomCenterIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToBottomCenterList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: ⬅️ center-left [center-centerStart]
    /// -----
    if (getChessSquareStateItemAsCenterToCenterStartIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToCenterStartIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToCenterStartList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: ➡️ center-right [center-centerEnd]
    /// -----
    if (getChessSquareStateItemAsCenterToCenterEndIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToCenterEndIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToCenterEndList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: ↖️ center-topLeft [center-topStart]
    /// -----
    if (getChessSquareStateItemAsCenterToTopStartIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToTopStartIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToTopStartList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: ↗️ center-topRight [center-topEnd]
    /// -----
    if (getChessSquareStateItemAsCenterToTopEndIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToTopEndIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToTopEndList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: ↙️ center-bottomLeft [center-bottomStart]
    /// -----
    if (getChessSquareStateItemAsCenterToBottomStartIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToBottomStartIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToBottomStartList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: ↘️ center-bottomRight [center-bottomEnd]
    /// -----
    if (getChessSquareStateItemAsCenterToBottomEndIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToBottomEndIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToBottomEndList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }

    /// -----
    /// TODO: center-LKnight
    /// -----
    if (getChessSquareStateItemAsCenterToLKnightIdList?.isNotEmpty == true) {
      for (String id in (getChessSquareStateItemAsCenterToLKnightIdList ?? [])) {
        if (id.isNotEmpty == true) {
          getChessSquareStateItemAsCenterToLKnightList?.add(getSquareChessBoardManagement?.getChessSquareStateItemById(id: '[CHESS_SQUARE_$id]'));
        }
      }
    }
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
