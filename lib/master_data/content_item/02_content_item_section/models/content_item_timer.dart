import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class ContentItemTimer with ExecutionCore {
  ///
  /// TODO:
  ///
  ContentItemTimer.asDefault() {
    setTotalSeconds(value: 0, isPriorityOverride: true);
  }

  /// -----
  /// TODO: Tổng Số Phút Thực Thi Của [Section]
  /// ----- Được Tính Toán Dựa Trên Tổng Thời Gian Của Các [Unit] Thuộc [Section]
  /// -----
  double? _totalMinutes;
  double? get getTotalMinutes => _totalMinutes;
  void setTotalMinutes({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalMinutes = value;
    } else {
      _totalMinutes ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Tổng Số Phút Thực Thi Còn Lại Của [Section]
  /// -----
  double? _totalRemainingMinutes;
  double? get getTotalRemainingMinutes => _totalRemainingMinutes;
  void setTotalRemainingMinutes({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalRemainingMinutes = value;
    } else {
      _totalRemainingMinutes ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Tổng Số Giây Thực Thi Của [Section]
  /// ----- Được Tính Toán Dựa Trên Tổng Số Phút
  /// -----
  double? _totalSeconds;
  double? get getTotalSeconds => _totalSeconds;
  void setTotalSeconds({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalSeconds = value;
    } else {
      _totalSeconds ??= value;
    }

    setTotalRemainingSeconds(value: getTotalSeconds, isPriorityOverride: true);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalRemainingSeconds;
  double? get getTotalRemainingSeconds => _totalRemainingSeconds;
  void setTotalRemainingSeconds({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalRemainingSeconds = value;
    } else {
      _totalRemainingSeconds ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _percentComplete;
  double? get getPercentComplete => _percentComplete;
  void setPercentComplete({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _percentComplete = value;
    } else {
      _percentComplete ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    if ((getTotalSeconds ?? 0) > 0) {
      double newValue = (getTotalSeconds ?? 0) - 1.0;
      setTotalSeconds(value: newValue, isPriorityOverride: true);
    }
  }

  /// -----
  /// TODO:
  /// -----
  bool isCompleted() {
    if (getTotalSeconds == 0) {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO:
  /// -----
  bool isRunning() {
    if (getTotalSeconds != 0) {
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
