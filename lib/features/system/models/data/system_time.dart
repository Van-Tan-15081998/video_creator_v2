import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/system_item/system_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class SystemTime with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  SystemTime({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
  }

  /// -----
  /// TODO: FirstStartSystemItem
  /// -----
  SystemItem? _firstStartSystemItem;
  SystemItem? get getFirstStartSystemItem => _firstStartSystemItem;
  void setFirstStartSystemItem({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _firstStartSystemItem = value;
    } else {
      _firstStartSystemItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO: GO FirstStartSystemItem
  /// -----
  SystemItem? _goFirstStartSystemItem;
  SystemItem? get getGoFirstStartSystemItem => _goFirstStartSystemItem;
  void setGoFirstStartSystemItem({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goFirstStartSystemItem = value;
    } else {
      _goFirstStartSystemItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO: DONE FirstStartSystemItem
  /// -----
  SystemItem? _doneFirstStartSystemItem;
  SystemItem? get getDoneFirstStartSystemItem => _doneFirstStartSystemItem;
  void setDoneFirstStartSystemItem({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneFirstStartSystemItem = value;
    } else {
      _doneFirstStartSystemItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO: LastFinishSystemItem
  /// -----
  SystemItem? _lastFinishSystemItem;
  SystemItem? get getLastFinishSystemItem => _lastFinishSystemItem;
  void setLastFinishSystemItem({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _lastFinishSystemItem = value;
    } else {
      _lastFinishSystemItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO: GO LastFinishSystemItem
  /// -----
  SystemItem? _goLastFinishSystemItem;
  SystemItem? get getGoLastFinishSystemItem => _goLastFinishSystemItem;
  void setGoLastFinishSystemItem({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goLastFinishSystemItem = value;
    } else {
      _goLastFinishSystemItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO: DONE LastFinishSystemItem
  /// -----
  SystemItem? _doneLastFinishSystemItem;
  SystemItem? get getDoneLastFinishSystemItem => _doneLastFinishSystemItem;
  void setDoneLastFinishSystemItem({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneLastFinishSystemItem = value;
    } else {
      _doneLastFinishSystemItem ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  bool? _isPaused;
  bool? get getIsPaused => _isPaused ?? false;
  void setIsPaused({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPaused = value;
    } else {
      _isPaused ??= value;
    }

    return;
  }

  void onUpdate() {
    // if (getIsPaused == false) {
    //   getStayFocusedSS01?.onUpdate();
    //   getStayFocusedSS02?.onUpdate();
    //   getStayFocusedSS03?.onUpdate();
    //   getStayFocusedSS04?.onUpdate();
    //
    //   getBreakTimeSS01?.onUpdate();
    //   getBreakTimeSS02?.onUpdate();
    //   getBreakTimeSS03?.onUpdate();
    //   getBreakTimeSS04?.onUpdate();
    // }
  }

  void pause() {
    // setIsPaused(value: true, isPriorityOverride: true);
    //
    // if (getIsPaused == true) {
    //   getStayFocusedSS01?.pause();
    //   getStayFocusedSS02?.pause();
    //   getStayFocusedSS03?.pause();
    //   getStayFocusedSS04?.pause();
    //
    //   getBreakTimeSS01?.pause();
    //   getBreakTimeSS02?.pause();
    //   getBreakTimeSS03?.pause();
    //   getBreakTimeSS04?.pause();
    // }
  }

  void resume() {
    // setIsPaused(value: false, isPriorityOverride: true);
    //
    // if (getIsPaused == false) {
    //   getStayFocusedSS01?.resume();
    //   getStayFocusedSS02?.resume();
    //   getStayFocusedSS03?.resume();
    //   getStayFocusedSS04?.resume();
    //
    //   getBreakTimeSS01?.resume();
    //   getBreakTimeSS02?.resume();
    //   getBreakTimeSS03?.resume();
    //   getBreakTimeSS04?.resume();
    // }
  }

  void stop() {
    // setIsPaused(value: true, isPriorityOverride: true);
    //
    // if (getIsPaused == true) {
    //   getStayFocusedSS01?.stop();
    //   getStayFocusedSS02?.stop();
    //   getStayFocusedSS03?.stop();
    //   getStayFocusedSS04?.stop();
    //
    //   getBreakTimeSS01?.stop();
    //   getBreakTimeSS02?.stop();
    //   getBreakTimeSS03?.stop();
    //   getBreakTimeSS04?.stop();
    // }
  }

  void start() {
    // setIsPaused(value: false, isPriorityOverride: true);
    //
    // if (getIsPaused == false) {
    //   getStayFocusedSS01?.start();
    //   getStayFocusedSS02?.start();
    //   getStayFocusedSS03?.start();
    //   getStayFocusedSS04?.start();
    //
    //   getBreakTimeSS01?.start();
    //   getBreakTimeSS02?.start();
    //   getBreakTimeSS03?.start();
    //   getBreakTimeSS04?.start();
    // }
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

      setFirstStartSystemItem(value: SystemItem(), isPriorityOverride: true);
      setGoFirstStartSystemItem(value: SystemItem(), isPriorityOverride: true);
      setDoneFirstStartSystemItem(value: SystemItem(), isPriorityOverride: true);

      setLastFinishSystemItem(value: SystemItem(), isPriorityOverride: true);
      setGoLastFinishSystemItem(value: SystemItem(), isPriorityOverride: true);
      setDoneLastFinishSystemItem(value: SystemItem(), isPriorityOverride: true);

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

      await getFirstStartSystemItem?.onSetupRoot();
      await getGoFirstStartSystemItem?.onSetupRoot();
      await getDoneFirstStartSystemItem?.onSetupRoot();

      await getLastFinishSystemItem?.onSetupRoot();
      await getGoLastFinishSystemItem?.onSetupRoot();
      await getDoneLastFinishSystemItem?.onSetupRoot();
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

      await getFirstStartSystemItem?.onInitRoot();
      await getGoFirstStartSystemItem?.onInitRoot();
      await getDoneFirstStartSystemItem?.onInitRoot();

      await getLastFinishSystemItem?.onInitRoot();
      await getGoLastFinishSystemItem?.onInitRoot();
      await getDoneLastFinishSystemItem?.onInitRoot();
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
