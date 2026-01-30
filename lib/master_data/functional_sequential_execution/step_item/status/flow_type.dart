import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class FlowType with ExecutionCore {
  ///
  /// TODO:
  ///
  FlowType.asDefault() {
    setTypeAsDefault();
  }

  ///
  /// TODO: as GapFlow
  ///
  FlowType.asGapFlow() {
    setTypeAsGapFlow();
  }

  ///
  /// TODO: as Stop Point Flow
  ///
  FlowType.asStopPointFlow() {
    setTypeAsStopPointFlow();
  }

  ///
  /// TODO: as CharacterFlow
  ///
  FlowType.asCharacterFlow() {
    setTypeAsCharacterFlow();
  }

  ///
  /// TODO: as MessageFlow
  ///
  FlowType.asMessageFlow() {
    setTypeAsMessageFlow();
  }

  ///
  /// TODO: as ImageSlideFlow
  ///
  FlowType.asImageSlideFlow() {
    setTypeAsImageSlideFlow();
  }

  ///
  /// TODO: as WindowFlow
  ///
  FlowType.asWindowFlow() {
    setTypeAsWindowFlow();
  }

  ///
  /// TODO: as ChessFlow
  ///
  FlowType.asChessFlow() {
    setTypeAsChessFlow();
  }

  ///
  /// TODO: as CrosswordPuzzleFlow
  ///
  FlowType.asCrosswordPuzzleFlow() {
    setTypeAsCrosswordPuzzleFlow();
  }

  ///
  /// TODO: Trạng thái tồn tại nội dung
  ///
  String? _type;
  String? get getType => _type;
  void setType({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _type = value;
    } else {
      _type ??= value;
    }

    return;
  }

  ///
  /// TODO: Trạng thái tồn tại nội dung => Mặc định
  ///
  void setTypeAsDefault() {
    setType(value: '[DEFAULT]', isPriorityOverride: true);
  }

  bool isTypeAsDefault() {
    if (getType == '[DEFAULT]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Gap Flow
  ///
  void setTypeAsGapFlow() {
    setType(value: '[GAP_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsGapFlow() {
    if (getType == '[GAP_FLOW]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Stop Point Flow
  ///
  void setTypeAsStopPointFlow() {
    setType(value: '[STOP_POINT_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsStopPointFlow() {
    if (getType == '[STOP_POINT_FLOW]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Character Flow
  ///
  void setTypeAsCharacterFlow() {
    setType(value: '[CHARACTER_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsCharacterFlow() {
    if (getType == '[CHARACTER_FLOW]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Window Flow
  ///
  void setTypeAsWindowFlow() {
    setType(value: '[WINDOW_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsWindowFlow() {
    if (getType == '[WINDOW_FLOW]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Message Flow
  ///
  void setTypeAsMessageFlow() {
    setType(value: '[MESSAGE_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsMessageFlow() {
    if (getType == '[MESSAGE_FLOW]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Image Slide Flow
  ///
  void setTypeAsImageSlideFlow() {
    setType(value: '[IMAGE_SLIDE_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsImageSlideFlow() {
    if (getType == '[IMAGE_SLIDE_FLOW]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Chess Flow
  ///
  void setTypeAsChessFlow() {
    setType(value: '[CHESS_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsChessFlow() {
    if (getType == '[CHESS_FLOW]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Loại => Crossword Puzzle Flow
  ///
  void setTypeAsCrosswordPuzzleFlow() {
    setType(value: '[CROSSWORD_PUZZLE_FLOW]', isPriorityOverride: true);
  }

  bool isTypeAsCrosswordPuzzleFlow() {
    if (getType == '[CROSSWORD_PUZZLE_FLOW]') {
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
