import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_piece.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_piece_state_item.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_state_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class CrosswordPuzzlePieceManagement with ExecutionCore {
  CrosswordPuzzlePieceManagement({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 1
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemA1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemA1 => _crosswordPuzzlePieceStateItemA1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemB1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemB1 => _crosswordPuzzlePieceStateItemB1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemC1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemC1 => _crosswordPuzzlePieceStateItemC1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemD1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemD1 => _crosswordPuzzlePieceStateItemD1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemE1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemE1 => _crosswordPuzzlePieceStateItemE1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemF1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemF1 => _crosswordPuzzlePieceStateItemF1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemG1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemG1 => _crosswordPuzzlePieceStateItemG1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemH1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemH1 => _crosswordPuzzlePieceStateItemH1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemI1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemI1 => _crosswordPuzzlePieceStateItemI1;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemJ1;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemJ1 => _crosswordPuzzlePieceStateItemJ1;

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 2
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemA2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemA2 => _crosswordPuzzlePieceStateItemA2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemB2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemB2 => _crosswordPuzzlePieceStateItemB2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemC2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemC2 => _crosswordPuzzlePieceStateItemC2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemD2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemD2 => _crosswordPuzzlePieceStateItemD2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemE2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemE2 => _crosswordPuzzlePieceStateItemE2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemF2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemF2 => _crosswordPuzzlePieceStateItemF2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemG2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemG2 => _crosswordPuzzlePieceStateItemG2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemH2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemH2 => _crosswordPuzzlePieceStateItemH2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemI2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemI2 => _crosswordPuzzlePieceStateItemI2;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemJ2;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemJ2 => _crosswordPuzzlePieceStateItemJ2;

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 3
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemA3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemA3 => _crosswordPuzzlePieceStateItemA3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemB3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemB3 => _crosswordPuzzlePieceStateItemB3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemC3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemC3 => _crosswordPuzzlePieceStateItemC3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemD3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemD3 => _crosswordPuzzlePieceStateItemD3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemE3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemE3 => _crosswordPuzzlePieceStateItemE3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemF3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemF3 => _crosswordPuzzlePieceStateItemF3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemG3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemG3 => _crosswordPuzzlePieceStateItemG3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemH3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemH3 => _crosswordPuzzlePieceStateItemH3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemI3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemI3 => _crosswordPuzzlePieceStateItemI3;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemJ3;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemJ3 => _crosswordPuzzlePieceStateItemJ3;

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 4
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemA4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemA4 => _crosswordPuzzlePieceStateItemA4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemB4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemB4 => _crosswordPuzzlePieceStateItemB4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemC4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemC4 => _crosswordPuzzlePieceStateItemC4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemD4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemD4 => _crosswordPuzzlePieceStateItemD4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemE4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemE4 => _crosswordPuzzlePieceStateItemE4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemF4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemF4 => _crosswordPuzzlePieceStateItemF4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemG4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemG4 => _crosswordPuzzlePieceStateItemG4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemH4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemH4 => _crosswordPuzzlePieceStateItemH4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemI4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemI4 => _crosswordPuzzlePieceStateItemI4;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemJ4;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemJ4 => _crosswordPuzzlePieceStateItemJ4;

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 5
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemA5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemA5 => _crosswordPuzzlePieceStateItemA5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemB5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemB5 => _crosswordPuzzlePieceStateItemB5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemC5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemC5 => _crosswordPuzzlePieceStateItemC5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemD5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemD5 => _crosswordPuzzlePieceStateItemD5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemE5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemE5 => _crosswordPuzzlePieceStateItemE5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemF5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemF5 => _crosswordPuzzlePieceStateItemF5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemG5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemG5 => _crosswordPuzzlePieceStateItemG5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemH5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemH5 => _crosswordPuzzlePieceStateItemH5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemI5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemI5 => _crosswordPuzzlePieceStateItemI5;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemJ5;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemJ5 => _crosswordPuzzlePieceStateItemJ5;

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 6
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemA6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemA6 => _crosswordPuzzlePieceStateItemA6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemB6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemB6 => _crosswordPuzzlePieceStateItemB6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemC6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemC6 => _crosswordPuzzlePieceStateItemC6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemD6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemD6 => _crosswordPuzzlePieceStateItemD6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemE6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemE6 => _crosswordPuzzlePieceStateItemE6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemF6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemF6 => _crosswordPuzzlePieceStateItemF6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemG6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemG6 => _crosswordPuzzlePieceStateItemG6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemH6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemH6 => _crosswordPuzzlePieceStateItemH6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemI6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemI6 => _crosswordPuzzlePieceStateItemI6;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemJ6;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemJ6 => _crosswordPuzzlePieceStateItemJ6;

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: ROW 7
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemA7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemA7 => _crosswordPuzzlePieceStateItemA7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemB7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemB7 => _crosswordPuzzlePieceStateItemB7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemC7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemC7 => _crosswordPuzzlePieceStateItemC7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemD7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemD7 => _crosswordPuzzlePieceStateItemD7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemE7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemE7 => _crosswordPuzzlePieceStateItemE7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemF7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemF7 => _crosswordPuzzlePieceStateItemF7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemG7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemG7 => _crosswordPuzzlePieceStateItemG7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemH7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemH7 => _crosswordPuzzlePieceStateItemH7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemI7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemI7 => _crosswordPuzzlePieceStateItemI7;

  CrosswordPuzzlePieceStateItem? _crosswordPuzzlePieceStateItemJ7;
  CrosswordPuzzlePieceStateItem? get getCrosswordPuzzlePieceStateItemJ7 => _crosswordPuzzlePieceStateItemJ7;

  ///
  ///
  ///
  ///

  List<CrosswordPuzzlePieceStateItem?>? _crosswordPuzzlePieceStateItemAsList;
  List<CrosswordPuzzlePieceStateItem?>? get getCrosswordPuzzlePieceStateItemAsList => _crosswordPuzzlePieceStateItemAsList;

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
      /// TODO: ROW 1
      /// -----
      _crosswordPuzzlePieceStateItemA1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrA1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemB1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrB1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemC1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrC1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemD1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrD1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemE1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrE1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemF1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrF1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemG1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrG1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemH1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrH1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemI1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrI1(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemJ1 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrJ1(crosswordPuzzlePieceManagement: this));

      /// -----
      /// TODO: ROW 2
      /// -----
      _crosswordPuzzlePieceStateItemA2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrA2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemB2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrB2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemC2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrC2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemD2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrD2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemE2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrE2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemF2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrF2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemG2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrG2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemH2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrH2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemI2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrI2(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemJ2 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrJ2(crosswordPuzzlePieceManagement: this));

      /// -----
      /// TODO: ROW 3
      /// -----
      _crosswordPuzzlePieceStateItemA3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrA3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemB3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrB3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemC3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrC3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemD3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrD3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemE3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrE3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemF3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrF3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemG3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrG3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemH3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrH3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemI3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrI3(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemJ3 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrJ3(crosswordPuzzlePieceManagement: this));

      /// -----
      /// TODO: ROW 4
      /// -----
      _crosswordPuzzlePieceStateItemA4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrA4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemB4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrB4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemC4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrC4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemD4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrD4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemE4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrE4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemF4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrF4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemG4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrG4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemH4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrH4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemI4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrI4(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemJ4 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrJ4(crosswordPuzzlePieceManagement: this));

      /// -----
      /// TODO: ROW 5
      /// -----
      _crosswordPuzzlePieceStateItemA5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrA5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemB5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrB5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemC5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrC5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemD5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrD5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemE5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrE5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemF5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrF5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemG5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrG5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemH5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrH5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemI5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrI5(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemJ5 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrJ5(crosswordPuzzlePieceManagement: this));

      /// -----
      /// TODO: ROW 6
      /// -----
      _crosswordPuzzlePieceStateItemA6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrA6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemB6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrB6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemC6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrC6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemD6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrD6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemE6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrE6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemF6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrF6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemG6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrG6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemH6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrH6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemI6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrI6(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemJ6 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrJ6(crosswordPuzzlePieceManagement: this));

      /// -----
      /// TODO: ROW 7
      /// -----
      _crosswordPuzzlePieceStateItemA7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrA7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemB7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrB7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemC7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrC7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemD7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrD7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemE7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrE7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemF7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrF7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemG7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrG7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemH7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrH7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemI7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrI7(crosswordPuzzlePieceManagement: this));
      _crosswordPuzzlePieceStateItemJ7 = CrosswordPuzzlePieceStateItem(stateModel: CrosswordPuzzlePiece.sqrJ7(crosswordPuzzlePieceManagement: this));

      _crosswordPuzzlePieceStateItemAsList = [
        _crosswordPuzzlePieceStateItemA1,
        _crosswordPuzzlePieceStateItemB1,
        _crosswordPuzzlePieceStateItemC1,
        _crosswordPuzzlePieceStateItemD1,
        _crosswordPuzzlePieceStateItemE1,
        _crosswordPuzzlePieceStateItemF1,
        _crosswordPuzzlePieceStateItemG1,
        _crosswordPuzzlePieceStateItemH1,
        _crosswordPuzzlePieceStateItemI1,
        _crosswordPuzzlePieceStateItemJ1,
        //
        _crosswordPuzzlePieceStateItemA2,
        _crosswordPuzzlePieceStateItemB2,
        _crosswordPuzzlePieceStateItemC2,
        _crosswordPuzzlePieceStateItemD2,
        _crosswordPuzzlePieceStateItemE2,
        _crosswordPuzzlePieceStateItemF2,
        _crosswordPuzzlePieceStateItemG2,
        _crosswordPuzzlePieceStateItemH2,
        _crosswordPuzzlePieceStateItemI2,
        _crosswordPuzzlePieceStateItemJ2,
        //
        _crosswordPuzzlePieceStateItemA3,
        _crosswordPuzzlePieceStateItemB3,
        _crosswordPuzzlePieceStateItemC3,
        _crosswordPuzzlePieceStateItemD3,
        _crosswordPuzzlePieceStateItemE3,
        _crosswordPuzzlePieceStateItemF3,
        _crosswordPuzzlePieceStateItemG3,
        _crosswordPuzzlePieceStateItemH3,
        _crosswordPuzzlePieceStateItemI3,
        _crosswordPuzzlePieceStateItemJ3,
        //
        _crosswordPuzzlePieceStateItemA4,
        _crosswordPuzzlePieceStateItemB4,
        _crosswordPuzzlePieceStateItemC4,
        _crosswordPuzzlePieceStateItemD4,
        _crosswordPuzzlePieceStateItemE4,
        _crosswordPuzzlePieceStateItemF4,
        _crosswordPuzzlePieceStateItemG4,
        _crosswordPuzzlePieceStateItemH4,
        _crosswordPuzzlePieceStateItemI4,
        _crosswordPuzzlePieceStateItemJ4,
        //
        _crosswordPuzzlePieceStateItemA5,
        _crosswordPuzzlePieceStateItemB5,
        _crosswordPuzzlePieceStateItemC5,
        _crosswordPuzzlePieceStateItemD5,
        _crosswordPuzzlePieceStateItemE5,
        _crosswordPuzzlePieceStateItemF5,
        _crosswordPuzzlePieceStateItemG5,
        _crosswordPuzzlePieceStateItemH5,
        _crosswordPuzzlePieceStateItemI5,
        _crosswordPuzzlePieceStateItemJ5,
        //
        _crosswordPuzzlePieceStateItemA6,
        _crosswordPuzzlePieceStateItemB6,
        _crosswordPuzzlePieceStateItemC6,
        _crosswordPuzzlePieceStateItemD6,
        _crosswordPuzzlePieceStateItemE6,
        _crosswordPuzzlePieceStateItemF6,
        _crosswordPuzzlePieceStateItemG6,
        _crosswordPuzzlePieceStateItemH6,
        _crosswordPuzzlePieceStateItemI6,
        _crosswordPuzzlePieceStateItemJ6,
        //
        _crosswordPuzzlePieceStateItemA7,
        _crosswordPuzzlePieceStateItemB7,
        _crosswordPuzzlePieceStateItemC7,
        _crosswordPuzzlePieceStateItemD7,
        _crosswordPuzzlePieceStateItemE7,
        _crosswordPuzzlePieceStateItemF7,
        _crosswordPuzzlePieceStateItemG7,
        _crosswordPuzzlePieceStateItemH7,
        _crosswordPuzzlePieceStateItemI7,
        _crosswordPuzzlePieceStateItemJ7,
        //
      ];

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
  /// TODO: Get ChessPieceStateItem By Id
  /// -----
  CrosswordPuzzlePieceStateItem? getCrosswordPuzzlePieceStateItemById({required String? id}) {
    CrosswordPuzzlePieceStateItem? result;
    for (CrosswordPuzzlePieceStateItem? crosswordPuzzlePieceStateItem in (getCrosswordPuzzlePieceStateItemAsList ?? [])) {
      if (crosswordPuzzlePieceStateItem?.getStateModel?.getId == id) {
        result = crosswordPuzzlePieceStateItem;
        break;
      }
    }

    return result;
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

      /// -----
      /// TODO: ROW 1
      /// -----
      getCrosswordPuzzlePieceStateItemA1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemB1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemC1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemD1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemE1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemF1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemG1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemH1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemI1?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemJ1?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: ROW 2
      /// -----
      getCrosswordPuzzlePieceStateItemA2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemB2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemC2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemD2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemE2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemF2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemG2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemH2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemI2?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemJ2?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: ROW 3
      /// -----
      getCrosswordPuzzlePieceStateItemA3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemB3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemC3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemD3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemE3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemF3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemG3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemH3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemI3?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemJ3?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: ROW 4
      /// -----
      getCrosswordPuzzlePieceStateItemA4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemB4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemC4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemD4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemE4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemF4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemG4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemH4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemI4?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemJ4?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: ROW 5
      /// -----
      getCrosswordPuzzlePieceStateItemA5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemB5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemC5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemD5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemE5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemF5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemG5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemH5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemI5?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemJ5?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: ROW 6
      /// -----
      getCrosswordPuzzlePieceStateItemA6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemB6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemC6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemD6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemE6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemF6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemG6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemH6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemI6?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemJ6?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: ROW 7
      /// -----
      getCrosswordPuzzlePieceStateItemA7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemB7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemC7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemD7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemE7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemF7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemG7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemH7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemI7?.getStateModel?.onSetupRoot();
      getCrosswordPuzzlePieceStateItemJ7?.getStateModel?.onSetupRoot();
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

      /// -----
      /// TODO: ROW 1
      /// -----
      getCrosswordPuzzlePieceStateItemA1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemB1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemC1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemD1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemE1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemF1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemG1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemH1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemI1?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemJ1?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: ROW 2
      /// -----
      getCrosswordPuzzlePieceStateItemA2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemB2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemC2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemD2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemE2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemF2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemG2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemH2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemI2?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemJ2?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: ROW 3
      /// -----
      getCrosswordPuzzlePieceStateItemA3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemB3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemC3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemD3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemE3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemF3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemG3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemH3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemI3?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemJ3?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: ROW 4
      /// -----
      getCrosswordPuzzlePieceStateItemA4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemB4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemC4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemD4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemE4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemF4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemG4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemH4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemI4?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemJ4?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: ROW 5
      /// -----
      getCrosswordPuzzlePieceStateItemA5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemB5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemC5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemD5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemE5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemF5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemG5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemH5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemI5?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemJ5?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: ROW 6
      /// -----
      getCrosswordPuzzlePieceStateItemA6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemB6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemC6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemD6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemE6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemF6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemG6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemH6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemI6?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemJ6?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: ROW 7
      /// -----
      getCrosswordPuzzlePieceStateItemA7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemB7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemC7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemD7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemE7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemF7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemG7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemH7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemI7?.getStateModel?.onInitRoot();
      getCrosswordPuzzlePieceStateItemJ7?.getStateModel?.onInitRoot();
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
