import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_piece_state_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class ChessPieceManagement with ExecutionCore {
  ChessPieceManagement({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
  }

  /// -----
  /// TODO:
  /// -----
  // PomodoroCycleItem? _currentPomodoroCycleItem;
  // PomodoroCycleItem? get getCurrentPomodoroCycleItem => _currentPomodoroCycleItem;
  // void setCurrentPomodoroCycleItem({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _currentPomodoroCycleItem = value;
  //   } else {
  //     _currentPomodoroCycleItem ??= value;
  //   }
  //
  //   return;
  // }

  /// -----
  /// TODO: King
  /// -----
  ChessPieceStateItem? _chessPieceStateItemKingE1;
  ChessPieceStateItem? get getChessPieceStateItemKingE1 => _chessPieceStateItemKingE1;

  ChessPieceStateItem? _chessPieceStateItemKingE8;
  ChessPieceStateItem? get getChessPieceStateItemKingE8 => _chessPieceStateItemKingE8;

  /// -----
  /// TODO: Queen
  /// -----
  ChessPieceStateItem? _chessPieceStateItemQueenD1;
  ChessPieceStateItem? get getChessPieceStateItemQueenD1 => _chessPieceStateItemQueenD1;

  ChessPieceStateItem? _chessPieceStateItemQueenD8;
  ChessPieceStateItem? get getChessPieceStateItemQueenD8 => _chessPieceStateItemQueenD8;

  /// -----
  /// TODO: Rook
  /// -----
  ChessPieceStateItem? _chessPieceStateItemRookA1;
  ChessPieceStateItem? get getChessPieceStateItemRookA1 => _chessPieceStateItemRookA1;

  ChessPieceStateItem? _chessPieceStateItemRookH1;
  ChessPieceStateItem? get getChessPieceStateItemRookH1 => _chessPieceStateItemRookH1;

  ///
  ChessPieceStateItem? _chessPieceStateItemRookA8;
  ChessPieceStateItem? get getChessPieceStateItemRookA8 => _chessPieceStateItemRookA8;

  ChessPieceStateItem? _chessPieceStateItemRookH8;
  ChessPieceStateItem? get getChessPieceStateItemRookH8 => _chessPieceStateItemRookH8;

  /// -----
  /// TODO: Bishop []
  /// -----
  ChessPieceStateItem? _chessPieceStateItemBishopC1;
  ChessPieceStateItem? get getChessPieceStateItemBishopC1 => _chessPieceStateItemBishopC1;

  ChessPieceStateItem? _chessPieceStateItemBishopF1;
  ChessPieceStateItem? get getChessPieceStateItemBishopF1 => _chessPieceStateItemBishopF1;

  ///
  ChessPieceStateItem? _chessPieceStateItemBishopC8;
  ChessPieceStateItem? get getChessPieceStateItemBishopC8 => _chessPieceStateItemBishopC8;

  ChessPieceStateItem? _chessPieceStateItemBishopF8;
  ChessPieceStateItem? get getChessPieceStateItemBishopF8 => _chessPieceStateItemBishopF8;

  /// -----
  /// TODO: Knight []
  /// -----
  ChessPieceStateItem? _chessPieceStateItemKnightB1;
  ChessPieceStateItem? get getChessPieceStateItemKnightB1 => _chessPieceStateItemKnightB1;

  ChessPieceStateItem? _chessPieceStateItemKnightG1;
  ChessPieceStateItem? get getChessPieceStateItemKnightG1 => _chessPieceStateItemKnightG1;

  ///
  ChessPieceStateItem? _chessPieceStateItemKnightB8;
  ChessPieceStateItem? get getChessPieceStateItemKnightB8 => _chessPieceStateItemKnightB8;

  ChessPieceStateItem? _chessPieceStateItemKnightG8;
  ChessPieceStateItem? get getChessPieceStateItemKnightG8 => _chessPieceStateItemKnightG8;

  /// -----
  /// TODO: Pawn []
  /// -----
  ChessPieceStateItem? _chessPieceStateItemPawnA2;
  ChessPieceStateItem? get getChessPieceStateItemPawnA2 => _chessPieceStateItemPawnA2;

  ChessPieceStateItem? _chessPieceStateItemPawnB2;
  ChessPieceStateItem? get getChessPieceStateItemPawnB2 => _chessPieceStateItemPawnB2;

  ChessPieceStateItem? _chessPieceStateItemPawnC2;
  ChessPieceStateItem? get getChessPieceStateItemPawnC2 => _chessPieceStateItemPawnC2;

  ChessPieceStateItem? _chessPieceStateItemPawnD2;
  ChessPieceStateItem? get getChessPieceStateItemPawnD2 => _chessPieceStateItemPawnD2;

  ChessPieceStateItem? _chessPieceStateItemPawnE2;
  ChessPieceStateItem? get getChessPieceStateItemPawnE2 => _chessPieceStateItemPawnE2;

  ChessPieceStateItem? _chessPieceStateItemPawnF2;
  ChessPieceStateItem? get getChessPieceStateItemPawnF2 => _chessPieceStateItemPawnF2;

  ChessPieceStateItem? _chessPieceStateItemPawnG2;
  ChessPieceStateItem? get getChessPieceStateItemPawnG2 => _chessPieceStateItemPawnG2;

  ChessPieceStateItem? _chessPieceStateItemPawnH2;
  ChessPieceStateItem? get getChessPieceStateItemPawnH2 => _chessPieceStateItemPawnH2;

  ///

  ChessPieceStateItem? _chessPieceStateItemPawnA7;
  ChessPieceStateItem? get getChessPieceStateItemPawnA7 => _chessPieceStateItemPawnA7;

  ChessPieceStateItem? _chessPieceStateItemPawnB7;
  ChessPieceStateItem? get getChessPieceStateItemPawnB7 => _chessPieceStateItemPawnB7;

  ChessPieceStateItem? _chessPieceStateItemPawnC7;
  ChessPieceStateItem? get getChessPieceStateItemPawnC7 => _chessPieceStateItemPawnC7;

  ChessPieceStateItem? _chessPieceStateItemPawnD7;
  ChessPieceStateItem? get getChessPieceStateItemPawnD7 => _chessPieceStateItemPawnD7;

  ChessPieceStateItem? _chessPieceStateItemPawnE7;
  ChessPieceStateItem? get getChessPieceStateItemPawnE7 => _chessPieceStateItemPawnE7;

  ChessPieceStateItem? _chessPieceStateItemPawnF7;
  ChessPieceStateItem? get getChessPieceStateItemPawnF7 => _chessPieceStateItemPawnF7;

  ChessPieceStateItem? _chessPieceStateItemPawnG7;
  ChessPieceStateItem? get getChessPieceStateItemPawnG7 => _chessPieceStateItemPawnG7;

  ChessPieceStateItem? _chessPieceStateItemPawnH7;
  ChessPieceStateItem? get getChessPieceStateItemPawnH7 => _chessPieceStateItemPawnH7;

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
      /// TODO: King
      /// -----
      _chessPieceStateItemKingE1 = ChessPieceStateItem(stateModel: ChessPiece.kingE1());
      _chessPieceStateItemKingE8 = ChessPieceStateItem(stateModel: ChessPiece.kingE8());

      /// -----
      /// TODO: Queen
      /// -----
      _chessPieceStateItemQueenD1 = ChessPieceStateItem(stateModel: ChessPiece.queenD1());
      _chessPieceStateItemQueenD8 = ChessPieceStateItem(stateModel: ChessPiece.queenD8());

      /// -----
      /// TODO: Rook
      /// -----
      _chessPieceStateItemRookA1 = ChessPieceStateItem(stateModel: ChessPiece.rookA1());
      _chessPieceStateItemRookH1 = ChessPieceStateItem(stateModel: ChessPiece.rookH1());

      _chessPieceStateItemRookA8 = ChessPieceStateItem(stateModel: ChessPiece.rookA8());
      _chessPieceStateItemRookH8 = ChessPieceStateItem(stateModel: ChessPiece.rookH8());

      /// -----
      /// TODO: Bishop
      /// -----
      _chessPieceStateItemBishopC1 = ChessPieceStateItem(stateModel: ChessPiece.bishopC1());
      _chessPieceStateItemBishopF1 = ChessPieceStateItem(stateModel: ChessPiece.bishopF1());

      _chessPieceStateItemBishopC8 = ChessPieceStateItem(stateModel: ChessPiece.bishopC8());
      _chessPieceStateItemBishopF8 = ChessPieceStateItem(stateModel: ChessPiece.bishopF8());

      /// -----
      /// TODO: Knight
      /// -----
      _chessPieceStateItemKnightB1 = ChessPieceStateItem(stateModel: ChessPiece.knightB1());
      _chessPieceStateItemKnightG1 = ChessPieceStateItem(stateModel: ChessPiece.knightG1());

      _chessPieceStateItemKnightB8 = ChessPieceStateItem(stateModel: ChessPiece.knightB8());
      _chessPieceStateItemKnightG8 = ChessPieceStateItem(stateModel: ChessPiece.knightG8());

      /// -----
      /// TODO: Pawn
      /// -----
      _chessPieceStateItemPawnA2 = ChessPieceStateItem(stateModel: ChessPiece.pawnA2());
      _chessPieceStateItemPawnB2 = ChessPieceStateItem(stateModel: ChessPiece.pawnB2());
      _chessPieceStateItemPawnC2 = ChessPieceStateItem(stateModel: ChessPiece.pawnC2());
      _chessPieceStateItemPawnD2 = ChessPieceStateItem(stateModel: ChessPiece.pawnD2());
      _chessPieceStateItemPawnE2 = ChessPieceStateItem(stateModel: ChessPiece.pawnE2());
      _chessPieceStateItemPawnF2 = ChessPieceStateItem(stateModel: ChessPiece.pawnF2());
      _chessPieceStateItemPawnG2 = ChessPieceStateItem(stateModel: ChessPiece.pawnG2());
      _chessPieceStateItemPawnH2 = ChessPieceStateItem(stateModel: ChessPiece.pawnH2());

      _chessPieceStateItemPawnA7 = ChessPieceStateItem(stateModel: ChessPiece.pawnA7());
      _chessPieceStateItemPawnB7 = ChessPieceStateItem(stateModel: ChessPiece.pawnB7());
      _chessPieceStateItemPawnC7 = ChessPieceStateItem(stateModel: ChessPiece.pawnC7());
      _chessPieceStateItemPawnD7 = ChessPieceStateItem(stateModel: ChessPiece.pawnD7());
      _chessPieceStateItemPawnE7 = ChessPieceStateItem(stateModel: ChessPiece.pawnE7());
      _chessPieceStateItemPawnF7 = ChessPieceStateItem(stateModel: ChessPiece.pawnF7());
      _chessPieceStateItemPawnG7 = ChessPieceStateItem(stateModel: ChessPiece.pawnG7());
      _chessPieceStateItemPawnH7 = ChessPieceStateItem(stateModel: ChessPiece.pawnH7());

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

      /// -----
      /// TODO: King
      /// -----
      getChessPieceStateItemKingE1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKingE8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Queen
      /// -----
      getChessPieceStateItemQueenD1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemQueenD8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Rook
      /// -----
      getChessPieceStateItemRookA1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookH1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookA8?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookH8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Bishop
      /// -----
      getChessPieceStateItemBishopC1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopF1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopC8?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopF8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Knight
      /// -----
      getChessPieceStateItemKnightB1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightG1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightB8?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightG8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Pawn
      /// -----
      getChessPieceStateItemPawnA2?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnB2?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnC2?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnD2?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnE2?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnF2?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnG2?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnH2?.getStateModel?.onSetupRoot();

      getChessPieceStateItemPawnA7?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnB7?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnC7?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnD7?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnE7?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnF7?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnG7?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnH7?.getStateModel?.onSetupRoot();
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
      /// TODO: King
      /// -----
      getChessPieceStateItemKingE1?.getStateModel?.onInitRoot();
      getChessPieceStateItemKingE8?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: Queen
      /// -----
      getChessPieceStateItemQueenD1?.getStateModel?.onInitRoot();
      getChessPieceStateItemQueenD8?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: Rook
      /// -----
      getChessPieceStateItemRookA1?.getStateModel?.onInitRoot();
      getChessPieceStateItemRookH1?.getStateModel?.onInitRoot();
      getChessPieceStateItemRookA8?.getStateModel?.onInitRoot();
      getChessPieceStateItemRookH8?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: Bishop
      /// -----
      getChessPieceStateItemBishopC1?.getStateModel?.onInitRoot();
      getChessPieceStateItemBishopF1?.getStateModel?.onInitRoot();
      getChessPieceStateItemBishopC8?.getStateModel?.onInitRoot();
      getChessPieceStateItemBishopF8?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: Knight
      /// -----
      getChessPieceStateItemKnightB1?.getStateModel?.onInitRoot();
      getChessPieceStateItemKnightG1?.getStateModel?.onInitRoot();
      getChessPieceStateItemKnightB8?.getStateModel?.onInitRoot();
      getChessPieceStateItemKnightG8?.getStateModel?.onInitRoot();

      /// -----
      /// TODO: Pawn
      /// -----
      getChessPieceStateItemPawnA2?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnB2?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnC2?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnD2?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnE2?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnF2?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnG2?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnH2?.getStateModel?.onInitRoot();

      getChessPieceStateItemPawnA7?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnB7?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnC7?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnD7?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnE7?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnF7?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnG7?.getStateModel?.onInitRoot();
      getChessPieceStateItemPawnH7?.getStateModel?.onInitRoot();
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
