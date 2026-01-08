import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class ContentItemSequentialExecutionActiveStatus with ExecutionCore {
  ///
  /// TODO:
  ///
  ContentItemSequentialExecutionActiveStatus.asDefault() {
    setStatusAsDefault();
  }

  ///
  /// TODO:
  ///
  ContentItemSequentialExecutionActiveStatus.asActive() {
    setStatusAsActive();
  }

  ///
  /// TODO: Trạng thái kích hoạt
  ///
  String? _status;
  String? get getStatus => _status;
  void setStatus({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _status = value;
    } else {
      _status ??= value;
    }

    return;
  }

  ///
  /// TODO: Trạng thái kích hoạt => Sẵn Sàng Kích Hoạt
  ///
  void setStatusAsReady() {
    setStatus(value: '[READY]', isPriorityOverride: true);
  }

  bool isStatusAsReady() {
    if (getStatus == '[READY]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Trạng thái kích hoạt => Mặc định
  ///
  void setStatusAsDefault() {
    setStatus(value: '[DEFAULT]', isPriorityOverride: true);
  }

  bool isStatusAsDefault() {
    if (getStatus == '[DEFAULT]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Trạng thái kích hoạt
  ///
  void setStatusAsActive() {
    setStatus(value: '[ACTIVE]', isPriorityOverride: true);
  }

  bool isStatusAsActive() {
    if (getStatus == '[ACTIVE]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Trạng thái hủy kích hoạt
  ///
  void setStatusAsInActive() {
    setStatus(value: '[INACTIVE]', isPriorityOverride: true);
  }

  bool isStatusAsInActive() {
    if (getStatus == '[INACTIVE]') {
      return true;
    }

    return false;
  }

  ///
  /// TODO: Trạng thái Hoàn Tất Thực Thi
  ///
  void setStatusAsPerformCompleted() {
    setStatus(value: '[PERFORM_COMPLETED]', isPriorityOverride: true);
  }

  bool isStatusAsPerformCompleted() {
    if (getStatus == '[PERFORM_COMPLETED]') {
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
