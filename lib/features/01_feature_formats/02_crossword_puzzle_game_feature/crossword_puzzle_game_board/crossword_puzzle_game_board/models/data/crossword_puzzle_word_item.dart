import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_data_model.dart';

class CrosswordPuzzleWordItem with ExecutionCore {
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
  String? _crosswordPuzzleEngSentence;
  String? get getCrosswordPuzzleEngSentence => _crosswordPuzzleEngSentence;
  void setCrosswordPuzzleEngSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleEngSentence = value;
    } else {
      _crosswordPuzzleEngSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _crosswordPuzzleVieSentence;
  String? get getCrosswordPuzzleVieSentence => _crosswordPuzzleVieSentence;
  void setCrosswordPuzzleVieSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleVieSentence = value;
    } else {
      _crosswordPuzzleVieSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<CrosswordPuzzleWordUnit?>? _crosswordPuzzleWordUnitList;
  List<CrosswordPuzzleWordUnit?>? get getCrosswordPuzzleWordUnitList => _crosswordPuzzleWordUnitList;
  void setCrosswordPuzzleWordUnitList({required List<CrosswordPuzzleWordUnit?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitList = value;
    } else {
      _crosswordPuzzleWordUnitList ??= value;
    }

    return;
  }

  void setBelongToAWord() {
    for (CrosswordPuzzleWordUnit? item in (getCrosswordPuzzleWordUnitList ?? [])) {
      item?.getCrosswordPuzzleWordUnitDataModel?.setIsBelongToAWord(value: true, isPriorityOverride: true);
    }
  }

  /// -----
  /// TODO: Trạng Thái Khám Phá
  /// -----
  String? _exploratoryStatus;
  String? get getExploratoryStatus => _exploratoryStatus;
  void setExploratoryStatus({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _exploratoryStatus = value;
    } else {
      _exploratoryStatus ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Exploring
  /// -----
  void setExploratoryStatusAsExploring() {
    setExploratoryStatus(value: '[EXPLORING]', isPriorityOverride: true);
    setExploratoryStatusAsExploringForWordUnitList();
  }

  bool isExploratoryStatusAsExploring() {
    if (getExploratoryStatus == '[EXPLORING]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Default
  /// -----
  setExploratoryStatusAsDefault() {
    setExploratoryStatus(value: '[DEFAULT]', isPriorityOverride: true);
  }

  bool isExploratoryStatusAsDefault() {
    if (getExploratoryStatus == '[DEFAULT]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Explored
  /// -----
  void setExploratoryStatusAsExplored() {
    setExploratoryStatus(value: '[EXPLORED]', isPriorityOverride: true);
  }

  bool isExploratoryStatusAsExplored() {
    if (getExploratoryStatus == '[EXPLORED]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Preparing
  /// -----
  void setExploratoryStatusAsPreparing() {
    setExploratoryStatus(value: '[PREPARING]', isPriorityOverride: true);
    setExploratoryStatusAsPreparingForWordUnitList();
  }

  bool isExploratoryStatusAsPreparing() {
    if (getExploratoryStatus == '[PREPARING]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Switching
  /// -----
  void setExploratoryStatusAsSwitching() {
    setExploratoryStatus(value: '[SWITCHING]', isPriorityOverride: true);
    setExploratoryStatusAsSwitchingForWordUnitList();
  }

  bool isExploratoryStatusAsSwitching() {
    if (getExploratoryStatus == '[SWITCHING]') {
      return true;
    }
    return false;
  }

  void setExploratoryStatusAsExploringForWordUnitList() {
    for (CrosswordPuzzleWordUnit? item in (getCrosswordPuzzleWordUnitList ?? [])) {
      item?.getCrosswordPuzzleWordUnitDataModel?.setExploratoryStatusAsExploring();
    }
  }

  void setExploratoryStatusAsPreparingForWordUnitList() {
    for (CrosswordPuzzleWordUnit? item in (getCrosswordPuzzleWordUnitList ?? [])) {
      item?.getCrosswordPuzzleWordUnitDataModel?.setExploratoryStatusAsPreparing();
    }
  }

  void setExploratoryStatusAsSwitchingForWordUnitList() {
    for (CrosswordPuzzleWordUnit? item in (getCrosswordPuzzleWordUnitList ?? [])) {
      item?.getCrosswordPuzzleWordUnitDataModel?.setExploratoryStatusAsSwitching();
    }
  }

  void showAnswerAsComplete() {
    for (CrosswordPuzzleWordUnit? item in (getCrosswordPuzzleWordUnitList ?? [])) {
      item?.getCrosswordPuzzleWordUnitDataModel?.setIsCompleteTotally(value: true, isPriorityOverride: true);
    }
  }

  void clearCrosswordPuzzleEngVieSentence() {
    setCrosswordPuzzleEngSentence(value: '', isPriorityOverride: true);
    setCrosswordPuzzleVieSentence(value: '', isPriorityOverride: true);
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
      setCrosswordPuzzleWordUnitList(value: [], isPriorityOverride: true);

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
