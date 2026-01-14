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

  /// -----
  /// TODO: Bridge From - DoneFirstStartSystemItem - To - GoPomodoroStayFocusedSS01
  /// -----
  SystemItem? _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01;
  SystemItem? get getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01 => _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01;
  void setBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01 = value;
    } else {
      _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS01 - To - GoPomodoroBreakTimeSS01
  /// -----
  SystemItem? _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01;
  SystemItem? get getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01 => _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01;
  void setBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01 = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS01 - To - GoPomodoroStayFocusedSS02
  /// -----
  SystemItem? _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02;
  SystemItem? get getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02 => _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02;
  void setBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02 = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS02 - To - GoPomodoroBreakTimeSS02
  /// -----
  SystemItem? _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02;
  SystemItem? get getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02 => _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02;
  void setBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02 = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS02 - To - GoPomodoroStayFocusedSS03
  /// -----
  SystemItem? _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03;
  SystemItem? get getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03 => _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03;
  void setBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03 = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS03 - To - GoPomodoroBreakTimeSS03
  /// -----
  SystemItem? _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03;
  SystemItem? get getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03 => _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03;
  void setBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03 = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS03 - To - GoPomodoroStayFocusedSS04
  /// -----
  SystemItem? _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04;
  SystemItem? get getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04 => _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04;
  void setBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04 = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS04 - To - GoPomodoroBreakTimeSS04
  /// -----
  SystemItem? _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04;
  SystemItem? get getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04 => _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04;
  void setBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04 = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS04 - To - GoLastFinishSystemItem
  /// -----
  SystemItem? _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem;
  SystemItem? get getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem => _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem;
  void setBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem({required SystemItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem ??= value;
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

      ///
      ///
      ///

      setBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04(value: SystemItem(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem(value: SystemItem(), isPriorityOverride: true);

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

      ///

      await getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem?.onSetupRoot();
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

      ///

      await getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem?.onInitRoot();
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
