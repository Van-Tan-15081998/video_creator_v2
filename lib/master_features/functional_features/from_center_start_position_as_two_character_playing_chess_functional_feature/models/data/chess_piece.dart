import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class ChessPiece with ExecutionCore {
  ChessPiece({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
  }

  /// -----
  /// TODO: King
  /// -----
  ChessPiece.kingE1() {
    setId(value: '[KING_E1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_King.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.kingE8() {
    setId(value: '[KING_E8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_King.png', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO: Queen
  /// -----
  ChessPiece.queenD1() {
    setId(value: '[QUEEN_D1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Queen.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.queenD8() {
    setId(value: '[QUEEN_D8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Queen.png', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO: Rook
  /// -----
  ChessPiece.rookA1() {
    setId(value: '[ROOK_A1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Rook.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.rookH1() {
    setId(value: '[ROOK_H1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Rook.png', isPriorityOverride: true);

    ///
  }

  ///
  ChessPiece.rookA8() {
    setId(value: '[ROOK_A8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Rook.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.rookH8() {
    setId(value: '[ROOK_H8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Rook.png', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO: Bishop []
  /// -----
  ChessPiece.bishopC1() {
    setId(value: '[BISHOP_C1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Bishop.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.bishopF1() {
    setId(value: '[BISHOP_F1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Bishop.png', isPriorityOverride: true);

    ///
  }

  ///
  ChessPiece.bishopC8() {
    setId(value: '[BISHOP_C8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Bishop.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.bishopF8() {
    setId(value: '[BISHOP_F8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Bishop.png', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO: Knight []
  /// -----
  ChessPiece.knightB1() {
    setId(value: '[KNIGHT_B1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Knight.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.knightG1() {
    setId(value: '[KNIGHT_G1]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Knight.png', isPriorityOverride: true);

    ///
  }

  ///
  ChessPiece.knightB8() {
    setId(value: '[KNIGHT_B8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Knight.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.knightG8() {
    setId(value: '[KNIGHT_G8]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Knight.png', isPriorityOverride: true);

    ///
  }

  /// -----
  /// TODO: Pawn []
  /// -----
  ChessPiece.pawnA2() {
    setId(value: '[PAWN_A2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnB2() {
    setId(value: '[PAWN_B2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnC2() {
    setId(value: '[PAWN_C2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnD2() {
    setId(value: '[PAWN_D2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnE2() {
    setId(value: '[PAWN_E2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnF2() {
    setId(value: '[PAWN_F2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnG2() {
    setId(value: '[PAWN_G2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnH2() {
    setId(value: '[PAWN_H2]', isPriorityOverride: true);
    setTypeColor(value: '[WHITE]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/White_Pawn.png', isPriorityOverride: true);

    ///
  }

  ChessPiece.pawnA7() {
    setId(value: '[PAWN_A7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnB7() {
    setId(value: '[PAWN_B7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnC7() {
    setId(value: '[PAWN_C7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnD7() {
    setId(value: '[PAWN_D7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnE7() {
    setId(value: '[PAWN_E7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnF7() {
    setId(value: '[PAWN_F7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnG7() {
    setId(value: '[PAWN_G7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

    ///
  }
  ChessPiece.pawnH7() {
    setId(value: '[PAWN_H7]', isPriorityOverride: true);
    setTypeColor(value: '[BLACK]', isPriorityOverride: true);
    setImageSource(value: 'assets/images/games/chess/pieces/Black_Pawn.png', isPriorityOverride: true);

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
