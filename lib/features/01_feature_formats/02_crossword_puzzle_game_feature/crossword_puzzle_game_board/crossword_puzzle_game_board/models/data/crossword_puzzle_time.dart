import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class CrosswordPuzzleTime with ExecutionCore {
  CrosswordPuzzleTime({required SystemStateManagement? systemStateManagement, required SequentialExecutionController? sequentialExecutionController}) {
    setSystemStateManagement(value: systemStateManagement);
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);

    ///
    // setFunctionalSequentialExecutionController(value: FunctionalSequentialExecutionController(), isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  FunctionalSequentialExecutionController? _functionalSequentialExecutionController;
  FunctionalSequentialExecutionController? get getFunctionalSequentialExecutionController => _functionalSequentialExecutionController;
  void setFunctionalSequentialExecutionController({required FunctionalSequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionController = value;
    } else {
      _functionalSequentialExecutionController ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  SequentialExecutionController? _sequentialExecutionController;
  SequentialExecutionController? get getSequentialExecutionController => _sequentialExecutionController;
  void setSequentialExecutionController({required SequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sequentialExecutionController = value;
    } else {
      _sequentialExecutionController ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO: Dùng Để Lấy Thông Tin Cho Mọi Màn Hình Liên Quan
  /// -----
  CrosswordPuzzleItem? _currentCrosswordPuzzleItem;
  CrosswordPuzzleItem? get getCurrentCrosswordPuzzleItem => _currentCrosswordPuzzleItem;
  void setCurrentCrosswordPuzzleItem({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleItem = value;
    } else {
      _currentCrosswordPuzzleItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Hiển Thị Tại Màn Hình Scene
  /// -----
  CrosswordPuzzleItem? _currentCrosswordPuzzleItemForStart;
  CrosswordPuzzleItem? get getCurrentCrosswordPuzzleItemForStart => _currentCrosswordPuzzleItemForStart;
  void setCurrentCrosswordPuzzleItemForStart({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleItemForStart = value;
    } else {
      _currentCrosswordPuzzleItemForStart ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Ngăn Xếp => Dùng Nhận Biết Tổng Số Lượng Đến Thời Điểm Hiện Tại
  /// -----
  List<CrosswordPuzzleItem>? _currentCrosswordPuzzleItemStack;
  List<CrosswordPuzzleItem>? get getCurrentCrosswordPuzzleItemStack => _currentCrosswordPuzzleItemStack;
  void setCurrentCrosswordPuzzleItemStack({required List<CrosswordPuzzleItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleItemStack = value;
    } else {
      _currentCrosswordPuzzleItemStack ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Dùng Để Chạy Chữ
  /// -----
  CrosswordPuzzleWordUnit? _currentCrosswordPuzzleWordUnit;
  CrosswordPuzzleWordUnit? get getCurrentCrosswordPuzzleWordUnit => _currentCrosswordPuzzleWordUnit;
  void setCurrentCrosswordPuzzleWordUnit({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleWordUnit = value;
    } else {
      _currentCrosswordPuzzleWordUnit ??= value;
    }

    return;
  }

  void clearStack() {
    if ((getCurrentCrosswordPuzzleItemStack?.length ?? 0) >= 2) {
      getCurrentCrosswordPuzzleItemStack?.clear();
    }
  }

  bool isCanStartNewCrosswordPuzzleGame() {
    if ((getCurrentCrosswordPuzzleItemStack?.length ?? 0) < 2) {
      return true;
    }
    return false;
  }

  void continueStartNewCrosswordPuzzleGame() {
    clearStack();
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS001;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS001 => _crosswordPuzzleItemSS001;
  void setCrosswordPuzzleItemSS001({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS001 = value;
    } else {
      _crosswordPuzzleItemSS001 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS002;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS002 => _crosswordPuzzleItemSS002;
  void setCrosswordPuzzleItemSS002({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS002 = value;
    } else {
      _crosswordPuzzleItemSS002 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS003;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS003 => _crosswordPuzzleItemSS003;
  void setCrosswordPuzzleItemSS003({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS003 = value;
    } else {
      _crosswordPuzzleItemSS003 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS004;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS004 => _crosswordPuzzleItemSS004;
  void setCrosswordPuzzleItemSS004({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS004 = value;
    } else {
      _crosswordPuzzleItemSS004 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS005;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS005 => _crosswordPuzzleItemSS005;
  void setCrosswordPuzzleItemSS005({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS005 = value;
    } else {
      _crosswordPuzzleItemSS005 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS006;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS006 => _crosswordPuzzleItemSS006;
  void setCrosswordPuzzleItemSS006({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS006 = value;
    } else {
      _crosswordPuzzleItemSS006 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS007;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS007 => _crosswordPuzzleItemSS007;
  void setCrosswordPuzzleItemSS007({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS007 = value;
    } else {
      _crosswordPuzzleItemSS007 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS008;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS008 => _crosswordPuzzleItemSS008;
  void setCrosswordPuzzleItemSS008({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS008 = value;
    } else {
      _crosswordPuzzleItemSS008 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS009;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS009 => _crosswordPuzzleItemSS009;
  void setCrosswordPuzzleItemSS009({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS009 = value;
    } else {
      _crosswordPuzzleItemSS009 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS010;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS010 => _crosswordPuzzleItemSS010;
  void setCrosswordPuzzleItemSS010({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS010 = value;
    } else {
      _crosswordPuzzleItemSS010 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS011;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS011 => _crosswordPuzzleItemSS011;
  void setCrosswordPuzzleItemSS011({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS011 = value;
    } else {
      _crosswordPuzzleItemSS011 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _crosswordPuzzleItemSS012;
  CrosswordPuzzleItem? get getCrosswordPuzzleItemSS012 => _crosswordPuzzleItemSS012;
  void setCrosswordPuzzleItemSS012({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleItemSS012 = value;
    } else {
      _crosswordPuzzleItemSS012 ??= value;
    }

    ///
    return;
  }

  void onUpdate() {
    if ((getCurrentCrosswordPuzzleItemStack?.length ?? 0) <= 2) {
      getCrosswordPuzzleItemSS001?.onUpdate();
      getCrosswordPuzzleItemSS002?.onUpdate();
      getCrosswordPuzzleItemSS003?.onUpdate();
      getCrosswordPuzzleItemSS004?.onUpdate();
      getCrosswordPuzzleItemSS005?.onUpdate();
      getCrosswordPuzzleItemSS006?.onUpdate();
      getCrosswordPuzzleItemSS007?.onUpdate();
      getCrosswordPuzzleItemSS008?.onUpdate();
      getCrosswordPuzzleItemSS009?.onUpdate();
      getCrosswordPuzzleItemSS010?.onUpdate();
      getCrosswordPuzzleItemSS011?.onUpdate();
      getCrosswordPuzzleItemSS012?.onUpdate();
    }

    // getFunctionalSequentialExecutionController?.onUpdate();
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

      setCurrentCrosswordPuzzleItemStack(value: [], isPriorityOverride: true);

      setCurrentCrosswordPuzzleItem(
        value: CrosswordPuzzleItem(
          id: '[CURRENT_CROSSWORD_PUZZLE_GAME]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: null,
          currentCrosswordPuzzleWordUnit: null,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }
          },
        ),
        isPriorityOverride: true,
      );
      setCurrentCrosswordPuzzleWordUnit(value: CrosswordPuzzleWordUnit(id: '[CURRENT_CROSSWORD_PUZZLE_GAME]'), isPriorityOverride: true);

      setCrosswordPuzzleItemSS001(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS001]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS01();
          },
        ),
        isPriorityOverride: true,
      );

      setCrosswordPuzzleItemSS002(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS002]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS02();
          },
        ),

        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS003(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS003]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS03();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS004(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS004]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS04();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS005(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS005]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS05();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS006(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS006]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS06();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS007(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS007]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS07();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS008(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS008]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS08();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS009(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS009]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS09();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS010(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS010]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS10();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS011(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS011]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS11();
          },
        ),
        isPriorityOverride: true,
      );
      setCrosswordPuzzleItemSS012(
        value: CrosswordPuzzleItem(
          id: '[CPG_SS012]',
          totalMinutes: 12,
          currentCrosswordPuzzleItem: getCurrentCrosswordPuzzleItem,
          currentCrosswordPuzzleWordUnit: getCurrentCrosswordPuzzleWordUnit,
          currentCrosswordPuzzleItemStack: getCurrentCrosswordPuzzleItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_CROSSWORD_PUZZLE_GAME');
            }

            getSystemStateManagement?.getCrosswordPuzzleScript?.onCompleteCrosswordPuzzleGameBoardSS12();
          },
        ),
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

      // await getFunctionalSequentialExecutionController?.onSetupRoot();

      await getCurrentCrosswordPuzzleItem?.onSetupRoot();

      await getCrosswordPuzzleItemSS001?.onSetupRoot();
      await getCrosswordPuzzleItemSS002?.onSetupRoot();
      await getCrosswordPuzzleItemSS003?.onSetupRoot();
      await getCrosswordPuzzleItemSS004?.onSetupRoot();
      await getCrosswordPuzzleItemSS005?.onSetupRoot();
      await getCrosswordPuzzleItemSS006?.onSetupRoot();
      await getCrosswordPuzzleItemSS007?.onSetupRoot();
      await getCrosswordPuzzleItemSS008?.onSetupRoot();
      await getCrosswordPuzzleItemSS009?.onSetupRoot();
      await getCrosswordPuzzleItemSS010?.onSetupRoot();
      await getCrosswordPuzzleItemSS011?.onSetupRoot();
      await getCrosswordPuzzleItemSS012?.onSetupRoot();
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

      // await getFunctionalSequentialExecutionController?.onInitRoot();

      await getCurrentCrosswordPuzzleItem?.onInitRoot();

      await getCrosswordPuzzleItemSS001?.onInitRoot();
      await getCrosswordPuzzleItemSS002?.onInitRoot();
      await getCrosswordPuzzleItemSS003?.onInitRoot();
      await getCrosswordPuzzleItemSS004?.onInitRoot();
      await getCrosswordPuzzleItemSS005?.onInitRoot();
      await getCrosswordPuzzleItemSS006?.onInitRoot();
      await getCrosswordPuzzleItemSS007?.onInitRoot();
      await getCrosswordPuzzleItemSS008?.onInitRoot();
      await getCrosswordPuzzleItemSS009?.onInitRoot();
      await getCrosswordPuzzleItemSS010?.onInitRoot();
      await getCrosswordPuzzleItemSS011?.onInitRoot();
      await getCrosswordPuzzleItemSS012?.onInitRoot();
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
