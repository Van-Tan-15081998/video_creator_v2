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
  /// TODO: King As Shadow
  /// -----
  ChessPieceStateItem? _chessPieceStateItemKingE1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemKingE1AsShadow => _chessPieceStateItemKingE1AsShadow;

  ChessPieceStateItem? _chessPieceStateItemKingE8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemKingE8AsShadow => _chessPieceStateItemKingE8AsShadow;

  /// -----
  /// TODO: Queen
  /// -----
  ChessPieceStateItem? _chessPieceStateItemQueenD1;
  ChessPieceStateItem? get getChessPieceStateItemQueenD1 => _chessPieceStateItemQueenD1;

  ChessPieceStateItem? _chessPieceStateItemQueenD8;
  ChessPieceStateItem? get getChessPieceStateItemQueenD8 => _chessPieceStateItemQueenD8;

  /// -----
  /// TODO: Queen As Shadow
  /// -----
  ChessPieceStateItem? _chessPieceStateItemQueenD1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemQueenD1AsShadow => _chessPieceStateItemQueenD1AsShadow;

  ChessPieceStateItem? _chessPieceStateItemQueenD8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemQueenD8AsShadow => _chessPieceStateItemQueenD8AsShadow;

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
  /// TODO: Rook As Shadow
  /// -----
  ChessPieceStateItem? _chessPieceStateItemRookA1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemRookA1AsShadow => _chessPieceStateItemRookA1AsShadow;

  ChessPieceStateItem? _chessPieceStateItemRookH1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemRookH1AsShadow => _chessPieceStateItemRookH1AsShadow;

  ///
  ChessPieceStateItem? _chessPieceStateItemRookA8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemRookA8AsShadow => _chessPieceStateItemRookA8AsShadow;

  ChessPieceStateItem? _chessPieceStateItemRookH8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemRookH8AsShadow => _chessPieceStateItemRookH8AsShadow;

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
  /// TODO: Bishop As Shadow
  /// -----
  ChessPieceStateItem? _chessPieceStateItemBishopC1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemBishopC1AsShadow => _chessPieceStateItemBishopC1AsShadow;

  ChessPieceStateItem? _chessPieceStateItemBishopF1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemBishopF1AsShadow => _chessPieceStateItemBishopF1AsShadow;

  ///
  ChessPieceStateItem? _chessPieceStateItemBishopC8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemBishopC8AsShadow => _chessPieceStateItemBishopC8AsShadow;

  ChessPieceStateItem? _chessPieceStateItemBishopF8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemBishopF8AsShadow => _chessPieceStateItemBishopF8AsShadow;

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
  /// TODO: Knight As Shadow
  /// -----
  ChessPieceStateItem? _chessPieceStateItemKnightB1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemKnightB1AsShadow => _chessPieceStateItemKnightB1AsShadow;

  ChessPieceStateItem? _chessPieceStateItemKnightG1AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemKnightG1AsShadow => _chessPieceStateItemKnightG1AsShadow;

  ///
  ChessPieceStateItem? _chessPieceStateItemKnightB8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemKnightB8AsShadow => _chessPieceStateItemKnightB8AsShadow;

  ChessPieceStateItem? _chessPieceStateItemKnightG8AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemKnightG8AsShadow => _chessPieceStateItemKnightG8AsShadow;

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
  /// TODO: Pawn As Shadow
  /// -----
  ChessPieceStateItem? _chessPieceStateItemPawnA2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnA2AsShadow => _chessPieceStateItemPawnA2AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnB2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnB2AsShadow => _chessPieceStateItemPawnB2AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnC2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnC2AsShadow => _chessPieceStateItemPawnC2AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnD2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnD2AsShadow => _chessPieceStateItemPawnD2AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnE2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnE2AsShadow => _chessPieceStateItemPawnE2AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnF2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnF2AsShadow => _chessPieceStateItemPawnF2AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnG2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnG2AsShadow => _chessPieceStateItemPawnG2AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnH2AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnH2AsShadow => _chessPieceStateItemPawnH2AsShadow;

  ///

  ChessPieceStateItem? _chessPieceStateItemPawnA7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnA7AsShadow => _chessPieceStateItemPawnA7AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnB7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnB7AsShadow => _chessPieceStateItemPawnB7AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnC7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnC7AsShadow => _chessPieceStateItemPawnC7AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnD7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnD7AsShadow => _chessPieceStateItemPawnD7AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnE7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnE7AsShadow => _chessPieceStateItemPawnE7AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnF7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnF7AsShadow => _chessPieceStateItemPawnF7AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnG7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnG7AsShadow => _chessPieceStateItemPawnG7AsShadow;

  ChessPieceStateItem? _chessPieceStateItemPawnH7AsShadow;
  ChessPieceStateItem? get getChessPieceStateItemPawnH7AsShadow => _chessPieceStateItemPawnH7AsShadow;

  ///
  ///
  ///
  ///

  List<ChessPieceStateItem?>? _chessPieceStateItemAsList;
  List<ChessPieceStateItem?>? get getChessPieceStateItemAsList => _chessPieceStateItemAsList;

  List<ChessPieceStateItem?>? _chessPieceStateItemAsShadowAsList;
  List<ChessPieceStateItem?>? get getChessPieceStateItemAsShadowAsList => _chessPieceStateItemAsShadowAsList;

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
      _chessPieceStateItemKingE1 = ChessPieceStateItem(stateModel: ChessPiece.kingE1(chessPieceManagement: this));
      _chessPieceStateItemKingE8 = ChessPieceStateItem(stateModel: ChessPiece.kingE8(chessPieceManagement: this));

      /// -----
      /// TODO: King As Shadow
      /// -----
      _chessPieceStateItemKingE1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.kingE1(chessPieceManagement: this));
      _chessPieceStateItemKingE8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.kingE8(chessPieceManagement: this));

      /// -----
      /// TODO: Queen
      /// -----
      _chessPieceStateItemQueenD1 = ChessPieceStateItem(stateModel: ChessPiece.queenD1(chessPieceManagement: this));
      _chessPieceStateItemQueenD8 = ChessPieceStateItem(stateModel: ChessPiece.queenD8(chessPieceManagement: this));

      /// -----
      /// TODO: Queen As Shadow
      /// -----
      _chessPieceStateItemQueenD1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.queenD1(chessPieceManagement: this));
      _chessPieceStateItemQueenD8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.queenD8(chessPieceManagement: this));

      /// -----
      /// TODO: Rook
      /// -----
      _chessPieceStateItemRookA1 = ChessPieceStateItem(stateModel: ChessPiece.rookA1(chessPieceManagement: this));
      _chessPieceStateItemRookH1 = ChessPieceStateItem(stateModel: ChessPiece.rookH1(chessPieceManagement: this));

      _chessPieceStateItemRookA8 = ChessPieceStateItem(stateModel: ChessPiece.rookA8(chessPieceManagement: this));
      _chessPieceStateItemRookH8 = ChessPieceStateItem(stateModel: ChessPiece.rookH8(chessPieceManagement: this));

      /// -----
      /// TODO: Rook As Shadow
      /// -----
      _chessPieceStateItemRookA1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.rookA1(chessPieceManagement: this));
      _chessPieceStateItemRookH1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.rookH1(chessPieceManagement: this));

      _chessPieceStateItemRookA8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.rookA8(chessPieceManagement: this));
      _chessPieceStateItemRookH8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.rookH8(chessPieceManagement: this));

      /// -----
      /// TODO: Bishop
      /// -----
      _chessPieceStateItemBishopC1 = ChessPieceStateItem(stateModel: ChessPiece.bishopC1(chessPieceManagement: this));
      _chessPieceStateItemBishopF1 = ChessPieceStateItem(stateModel: ChessPiece.bishopF1(chessPieceManagement: this));

      _chessPieceStateItemBishopC8 = ChessPieceStateItem(stateModel: ChessPiece.bishopC8(chessPieceManagement: this));
      _chessPieceStateItemBishopF8 = ChessPieceStateItem(stateModel: ChessPiece.bishopF8(chessPieceManagement: this));

      /// -----
      /// TODO: Bishop As Shadow
      /// -----
      _chessPieceStateItemBishopC1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.bishopC1(chessPieceManagement: this));
      _chessPieceStateItemBishopF1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.bishopF1(chessPieceManagement: this));

      _chessPieceStateItemBishopC8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.bishopC8(chessPieceManagement: this));
      _chessPieceStateItemBishopF8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.bishopF8(chessPieceManagement: this));

      /// -----
      /// TODO: Knight
      /// -----
      _chessPieceStateItemKnightB1 = ChessPieceStateItem(stateModel: ChessPiece.knightB1(chessPieceManagement: this));
      _chessPieceStateItemKnightG1 = ChessPieceStateItem(stateModel: ChessPiece.knightG1(chessPieceManagement: this));

      _chessPieceStateItemKnightB8 = ChessPieceStateItem(stateModel: ChessPiece.knightB8(chessPieceManagement: this));
      _chessPieceStateItemKnightG8 = ChessPieceStateItem(stateModel: ChessPiece.knightG8(chessPieceManagement: this));

      /// -----
      /// TODO: Knight As Shadow
      /// -----
      _chessPieceStateItemKnightB1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.knightB1(chessPieceManagement: this));
      _chessPieceStateItemKnightG1AsShadow = ChessPieceStateItem(stateModel: ChessPiece.knightG1(chessPieceManagement: this));

      _chessPieceStateItemKnightB8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.knightB8(chessPieceManagement: this));
      _chessPieceStateItemKnightG8AsShadow = ChessPieceStateItem(stateModel: ChessPiece.knightG8(chessPieceManagement: this));

      /// -----
      /// TODO: Pawn
      /// -----
      _chessPieceStateItemPawnA2 = ChessPieceStateItem(stateModel: ChessPiece.pawnA2(chessPieceManagement: this));
      _chessPieceStateItemPawnB2 = ChessPieceStateItem(stateModel: ChessPiece.pawnB2(chessPieceManagement: this));
      _chessPieceStateItemPawnC2 = ChessPieceStateItem(stateModel: ChessPiece.pawnC2(chessPieceManagement: this));
      _chessPieceStateItemPawnD2 = ChessPieceStateItem(stateModel: ChessPiece.pawnD2(chessPieceManagement: this));
      _chessPieceStateItemPawnE2 = ChessPieceStateItem(stateModel: ChessPiece.pawnE2(chessPieceManagement: this));
      _chessPieceStateItemPawnF2 = ChessPieceStateItem(stateModel: ChessPiece.pawnF2(chessPieceManagement: this));
      _chessPieceStateItemPawnG2 = ChessPieceStateItem(stateModel: ChessPiece.pawnG2(chessPieceManagement: this));
      _chessPieceStateItemPawnH2 = ChessPieceStateItem(stateModel: ChessPiece.pawnH2(chessPieceManagement: this));

      _chessPieceStateItemPawnA7 = ChessPieceStateItem(stateModel: ChessPiece.pawnA7(chessPieceManagement: this));
      _chessPieceStateItemPawnB7 = ChessPieceStateItem(stateModel: ChessPiece.pawnB7(chessPieceManagement: this));
      _chessPieceStateItemPawnC7 = ChessPieceStateItem(stateModel: ChessPiece.pawnC7(chessPieceManagement: this));
      _chessPieceStateItemPawnD7 = ChessPieceStateItem(stateModel: ChessPiece.pawnD7(chessPieceManagement: this));
      _chessPieceStateItemPawnE7 = ChessPieceStateItem(stateModel: ChessPiece.pawnE7(chessPieceManagement: this));
      _chessPieceStateItemPawnF7 = ChessPieceStateItem(stateModel: ChessPiece.pawnF7(chessPieceManagement: this));
      _chessPieceStateItemPawnG7 = ChessPieceStateItem(stateModel: ChessPiece.pawnG7(chessPieceManagement: this));
      _chessPieceStateItemPawnH7 = ChessPieceStateItem(stateModel: ChessPiece.pawnH7(chessPieceManagement: this));

      /// -----
      /// TODO: Pawn As Shadow
      /// -----
      _chessPieceStateItemPawnA2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnA2(chessPieceManagement: this));
      _chessPieceStateItemPawnB2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnB2(chessPieceManagement: this));
      _chessPieceStateItemPawnC2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnC2(chessPieceManagement: this));
      _chessPieceStateItemPawnD2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnD2(chessPieceManagement: this));
      _chessPieceStateItemPawnE2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnE2(chessPieceManagement: this));
      _chessPieceStateItemPawnF2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnF2(chessPieceManagement: this));
      _chessPieceStateItemPawnG2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnG2(chessPieceManagement: this));
      _chessPieceStateItemPawnH2AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnH2(chessPieceManagement: this));

      _chessPieceStateItemPawnA7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnA7(chessPieceManagement: this));
      _chessPieceStateItemPawnB7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnB7(chessPieceManagement: this));
      _chessPieceStateItemPawnC7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnC7(chessPieceManagement: this));
      _chessPieceStateItemPawnD7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnD7(chessPieceManagement: this));
      _chessPieceStateItemPawnE7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnE7(chessPieceManagement: this));
      _chessPieceStateItemPawnF7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnF7(chessPieceManagement: this));
      _chessPieceStateItemPawnG7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnG7(chessPieceManagement: this));
      _chessPieceStateItemPawnH7AsShadow = ChessPieceStateItem(stateModel: ChessPiece.pawnH7(chessPieceManagement: this));

      _chessPieceStateItemAsList = [
        _chessPieceStateItemKingE1,
        _chessPieceStateItemKingE8,
        _chessPieceStateItemQueenD1,
        _chessPieceStateItemQueenD8,
        _chessPieceStateItemRookA1,
        _chessPieceStateItemRookH1,
        _chessPieceStateItemRookA8,
        _chessPieceStateItemRookH8,
        _chessPieceStateItemBishopC1,
        _chessPieceStateItemBishopF1,
        _chessPieceStateItemBishopC8,
        _chessPieceStateItemBishopF8,
        _chessPieceStateItemKnightB1,
        _chessPieceStateItemKnightG1,
        _chessPieceStateItemKnightB8,
        _chessPieceStateItemKnightG8,
        _chessPieceStateItemPawnA2,
        _chessPieceStateItemPawnB2,
        _chessPieceStateItemPawnC2,
        _chessPieceStateItemPawnD2,
        _chessPieceStateItemPawnE2,
        _chessPieceStateItemPawnF2,
        _chessPieceStateItemPawnG2,
        _chessPieceStateItemPawnH2,
        _chessPieceStateItemPawnA7,
        _chessPieceStateItemPawnB7,
        _chessPieceStateItemPawnC7,
        _chessPieceStateItemPawnD7,
        _chessPieceStateItemPawnE7,
        _chessPieceStateItemPawnF7,
        _chessPieceStateItemPawnG7,
        _chessPieceStateItemPawnH7,
      ];

      _chessPieceStateItemAsShadowAsList = [
        _chessPieceStateItemKingE1AsShadow,
        _chessPieceStateItemKingE8AsShadow,
        _chessPieceStateItemQueenD1AsShadow,
        _chessPieceStateItemQueenD8AsShadow,
        _chessPieceStateItemRookA1AsShadow,
        _chessPieceStateItemRookH1AsShadow,
        _chessPieceStateItemRookA8AsShadow,
        _chessPieceStateItemRookH8AsShadow,
        _chessPieceStateItemBishopC1AsShadow,
        _chessPieceStateItemBishopF1AsShadow,
        _chessPieceStateItemBishopC8AsShadow,
        _chessPieceStateItemBishopF8AsShadow,
        _chessPieceStateItemKnightB1AsShadow,
        _chessPieceStateItemKnightG1AsShadow,
        _chessPieceStateItemKnightB8AsShadow,
        _chessPieceStateItemKnightG8AsShadow,
        _chessPieceStateItemPawnA2AsShadow,
        _chessPieceStateItemPawnB2AsShadow,
        _chessPieceStateItemPawnC2AsShadow,
        _chessPieceStateItemPawnD2AsShadow,
        _chessPieceStateItemPawnE2AsShadow,
        _chessPieceStateItemPawnF2AsShadow,
        _chessPieceStateItemPawnG2AsShadow,
        _chessPieceStateItemPawnH2AsShadow,
        _chessPieceStateItemPawnA7AsShadow,
        _chessPieceStateItemPawnB7AsShadow,
        _chessPieceStateItemPawnC7AsShadow,
        _chessPieceStateItemPawnD7AsShadow,
        _chessPieceStateItemPawnE7AsShadow,
        _chessPieceStateItemPawnF7AsShadow,
        _chessPieceStateItemPawnG7AsShadow,
        _chessPieceStateItemPawnH7AsShadow,
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
  ChessPieceStateItem? getChessPieceStateItemById({required String? id}) {
    ChessPieceStateItem? result;
    for (ChessPieceStateItem? chessPieceStateItem in (getChessPieceStateItemAsList ?? [])) {
      if (chessPieceStateItem?.getStateModel?.getId == id) {
        result = chessPieceStateItem;
        break;
      }
    }

    return result;
  }

  /// -----
  /// TODO: Get Shadow
  /// -----
  ChessPieceStateItem? getChessPieceStateItemAsShadow({required ChessPieceStateItem? chessPieceStateItem}) {
    ChessPieceStateItem? result;
    for (ChessPieceStateItem? shadow in (getChessPieceStateItemAsShadowAsList ?? [])) {
      if (shadow?.getStateModel?.getId == chessPieceStateItem?.getStateModel?.getId) {
        result = shadow;
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
      /// TODO: King
      /// -----
      getChessPieceStateItemKingE1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKingE8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: King As Shadow
      /// -----
      getChessPieceStateItemKingE1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKingE8AsShadow?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Queen
      /// -----
      getChessPieceStateItemQueenD1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemQueenD8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Queen As Shadow
      /// -----
      getChessPieceStateItemQueenD1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemQueenD8AsShadow?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Rook
      /// -----
      getChessPieceStateItemRookA1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookH1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookA8?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookH8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Rook As Shadow
      /// -----
      getChessPieceStateItemRookA1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookH1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookA8AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemRookH8AsShadow?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Bishop
      /// -----
      getChessPieceStateItemBishopC1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopF1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopC8?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopF8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Bishop As Shadow
      /// -----
      getChessPieceStateItemBishopC1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopF1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopC8AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemBishopF8AsShadow?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Knight
      /// -----
      getChessPieceStateItemKnightB1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightG1?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightB8?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightG8?.getStateModel?.onSetupRoot();

      /// -----
      /// TODO: Knight As Shadow
      /// -----
      getChessPieceStateItemKnightB1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightG1AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightB8AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemKnightG8AsShadow?.getStateModel?.onSetupRoot();

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

      /// -----
      /// TODO: Pawn As Shadow
      /// -----
      getChessPieceStateItemPawnA2AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnB2AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnC2AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnD2AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnE2AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnF2AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnG2AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnH2AsShadow?.getStateModel?.onSetupRoot();

      getChessPieceStateItemPawnA7AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnB7AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnC7AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnD7AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnE7AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnF7AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnG7AsShadow?.getStateModel?.onSetupRoot();
      getChessPieceStateItemPawnH7AsShadow?.getStateModel?.onSetupRoot();
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
