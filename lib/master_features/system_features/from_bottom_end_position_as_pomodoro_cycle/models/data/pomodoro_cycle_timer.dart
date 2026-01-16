import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/system_features/from_bottom_end_position_as_pomodoro_cycle/models/data/pomodoro_cycle_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class PomodoroCycleTimer with ExecutionCore {
  PomodoroCycleTimer({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _currentPomodoroCycleItem;
  PomodoroCycleItem? get getCurrentPomodoroCycleItem => _currentPomodoroCycleItem;
  void setCurrentPomodoroCycleItem({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentPomodoroCycleItem = value;
    } else {
      _currentPomodoroCycleItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _stayFocusedSS01;
  PomodoroCycleItem? get getStayFocusedSS01 => _stayFocusedSS01;
  void setStayFocusedSS01({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS01 = value;
    } else {
      _stayFocusedSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _stayFocusedSS02;
  PomodoroCycleItem? get getStayFocusedSS02 => _stayFocusedSS02;
  void setStayFocusedSS02({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS02 = value;
    } else {
      _stayFocusedSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _stayFocusedSS03;
  PomodoroCycleItem? get getStayFocusedSS03 => _stayFocusedSS03;
  void setStayFocusedSS03({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS03 = value;
    } else {
      _stayFocusedSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _stayFocusedSS04;
  PomodoroCycleItem? get getStayFocusedSS04 => _stayFocusedSS04;
  void setStayFocusedSS04({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS04 = value;
    } else {
      _stayFocusedSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _breakTimeSS01;
  PomodoroCycleItem? get getBreakTimeSS01 => _breakTimeSS01;
  void setBreakTimeSS01({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS01 = value;
    } else {
      _breakTimeSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _breakTimeSS02;
  PomodoroCycleItem? get getBreakTimeSS02 => _breakTimeSS02;
  void setBreakTimeSS02({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS02 = value;
    } else {
      _breakTimeSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _breakTimeSS03;
  PomodoroCycleItem? get getBreakTimeSS03 => _breakTimeSS03;
  void setBreakTimeSS03({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS03 = value;
    } else {
      _breakTimeSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroCycleItem? _breakTimeSS04;
  PomodoroCycleItem? get getBreakTimeSS04 => _breakTimeSS04;
  void setBreakTimeSS04({required PomodoroCycleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS04 = value;
    } else {
      _breakTimeSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdateBaseOnContentStage() {
    getStayFocusedSS01?.onUpdateBaseOnContentStage();
    getStayFocusedSS02?.onUpdateBaseOnContentStage();
    getStayFocusedSS03?.onUpdateBaseOnContentStage();
    getStayFocusedSS04?.onUpdateBaseOnContentStage();

    getBreakTimeSS01?.onUpdateBaseOnContentStage();
    getBreakTimeSS02?.onUpdateBaseOnContentStage();
    getBreakTimeSS03?.onUpdateBaseOnContentStage();
    getBreakTimeSS04?.onUpdateBaseOnContentStage();
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

      setStayFocusedSS01(
        value: PomodoroCycleItem(
          id: '[POMODORO_STAY_FOCUSED_SS01]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS01');
            }

            setCurrentPomodoroCycleItem(value: getBreakTimeSS01, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setStayFocusedSS02(
        value: PomodoroCycleItem(
          id: '[POMODORO_STAY_FOCUSED_SS02]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS02');
            }

            setCurrentPomodoroCycleItem(value: getBreakTimeSS02, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setStayFocusedSS03(
        value: PomodoroCycleItem(
          id: '[POMODORO_STAY_FOCUSED_SS03]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS03');
            }

            setCurrentPomodoroCycleItem(value: getBreakTimeSS03, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setStayFocusedSS04(
        value: PomodoroCycleItem(
          id: '[POMODORO_STAY_FOCUSED_SS04]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS04');
            }

            setCurrentPomodoroCycleItem(value: getBreakTimeSS04, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );

      ///
      setBreakTimeSS01(
        value: PomodoroCycleItem(
          id: '[POMODORO_BREAK_TIME_SS01]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS01');
            }

            setCurrentPomodoroCycleItem(value: getStayFocusedSS02, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setBreakTimeSS02(
        value: PomodoroCycleItem(
          id: '[POMODORO_BREAK_TIME_SS02]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS02');
            }

            setCurrentPomodoroCycleItem(value: getStayFocusedSS03, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setBreakTimeSS03(
        value: PomodoroCycleItem(
          id: '[POMODORO_BREAK_TIME_SS03]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS03');
            }

            setCurrentPomodoroCycleItem(value: getStayFocusedSS04, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setBreakTimeSS04(
        value: PomodoroCycleItem(
          id: '[POMODORO_BREAK_TIME_SS04]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS04');
            }
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );

      ///
      ///
      ///
      ///
      ///

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

      await getStayFocusedSS01?.onSetupRoot();
      await getStayFocusedSS02?.onSetupRoot();
      await getStayFocusedSS03?.onSetupRoot();
      await getStayFocusedSS04?.onSetupRoot();

      await getBreakTimeSS01?.onSetupRoot();
      await getBreakTimeSS02?.onSetupRoot();
      await getBreakTimeSS03?.onSetupRoot();
      await getBreakTimeSS04?.onSetupRoot();
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

      await getStayFocusedSS01?.onInitRoot();
      await getStayFocusedSS02?.onInitRoot();
      await getStayFocusedSS03?.onInitRoot();
      await getStayFocusedSS04?.onInitRoot();

      await getBreakTimeSS01?.onInitRoot();
      await getBreakTimeSS02?.onInitRoot();
      await getBreakTimeSS03?.onInitRoot();
      await getBreakTimeSS04?.onInitRoot();
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
