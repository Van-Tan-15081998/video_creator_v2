import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/attributes/gap_time.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/step_item_content_abstract.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/active_status.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/content_existence_status.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/flow_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/flow_type.dart';

class FunctionalSequentialExecutionStepItem with ExecutionCore {

  ///
  /// TODO: Mã Thực Thi
  ///
  String? _performId;
  String? get getPerformId => _performId;
  void setPerformId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _performId = value;
    } else {
      _performId ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  FunctionalSequentialExecutionStepItem({required FlowController? flowController}) {
    setGapTime(value: GapTime.asDefault(), isPriorityOverride: true);
    setFlowController(value: flowController, isPriorityOverride: true);
    setActiveStatus(value: ActiveStatus.asActive(), isPriorityOverride: true);
  }

  ///
  /// TODO: as GapFlow
  ///
  FunctionalSequentialExecutionStepItem.asGapFlow({required FlowController? flowController}) {
    setGapTime(value: GapTime.asDefault(), isPriorityOverride: true);
    setFlowController(value: flowController, isPriorityOverride: true);
    setFlowType(value: FlowType.asGapFlow(), isPriorityOverride: true);
    setContentExistenceStatus(value: ContentExistenceStatus.asExistingContent(), isPriorityOverride: true);
    setActiveStatus(value: ActiveStatus.asActive(), isPriorityOverride: true);
  }

  ///
  /// TODO: as CharacterFlow
  ///
  FunctionalSequentialExecutionStepItem.asCharacterFlow({required FlowController? flowController}) {
    setGapTime(value: GapTime.asDefault(), isPriorityOverride: true);
    setFlowController(value: flowController, isPriorityOverride: true);
    setFlowType(value: FlowType.asCharacterFlow(), isPriorityOverride: true);
    setContentExistenceStatus(value: ContentExistenceStatus.asExistingContent(), isPriorityOverride: true);
    setActiveStatus(value: ActiveStatus.asActive(), isPriorityOverride: true);
  }

  ///
  /// TODO: as MessageFlow
  ///
  FunctionalSequentialExecutionStepItem.asMessageFlow({required FlowController? flowController}) {
    setGapTime(value: GapTime.asDefault(), isPriorityOverride: true);
    setFlowController(value: flowController, isPriorityOverride: true);
    setFlowType(value: FlowType.asMessageFlow(), isPriorityOverride: true);
    setContentExistenceStatus(value: ContentExistenceStatus.asExistingContent(), isPriorityOverride: true);
    setActiveStatus(value: ActiveStatus.asActive(), isPriorityOverride: true);
  }

  ///
  /// TODO: as WindowFlow
  ///
  FunctionalSequentialExecutionStepItem.asWindowFlow({required FlowController? flowController}) {
    setGapTime(value: GapTime.asDefault(), isPriorityOverride: true);
    setFlowController(value: flowController, isPriorityOverride: true);
    setFlowType(value: FlowType.asWindowFlow(), isPriorityOverride: true);
    setContentExistenceStatus(value: ContentExistenceStatus.asExistingContent(), isPriorityOverride: true);
    setActiveStatus(value: ActiveStatus.asActive(), isPriorityOverride: true);
  }

  ///
  /// TODO:
  ///
  GapTime? _gapTime;
  GapTime? get getGapTime => _gapTime;
  void setGapTime({required GapTime? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _gapTime = value;
    } else {
      _gapTime ??= value;
    }

    return;
  }

  /// -----
  /// TODO: FlowController [CharacterFlowController|MessageFlowController|WindowFlowController]
  /// -----
  FlowController? _flowController;
  FlowController? get getFlowController => _flowController;
  void setFlowController({required FlowController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _flowController = value;
    } else {
      _flowController ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Loại Flow [Character|Message|Window]
  /// -----
  FlowType? _flowType;
  FlowType? get getFlowType => _flowType;
  void setFlowType({required FlowType? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _flowType = value;
    } else {
      _flowType ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ContentExistenceStatus? _contentExistenceStatus;
  ContentExistenceStatus? get getContentExistenceStatus => _contentExistenceStatus;
  void setContentExistenceStatus({required ContentExistenceStatus? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentExistenceStatus = value;
    } else {
      _contentExistenceStatus ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Trạng thái kích hoạt => Dựa vào để [Flow Controller] quyết định chấp nhận hoặc bỏ qua [Step Item] này
  /// -----
  ActiveStatus? _activeStatus;
  ActiveStatus? get getActiveStatus => _activeStatus;
  void setActiveStatus({required ActiveStatus? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeStatus = value;
    } else {
      _activeStatus ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void activateStepItem() {
    getActiveStatus?.setStatusAsActive();
  }

  /// -----
  /// TODO:
  /// -----
  void inActivateStepItem() {
    getActiveStatus?.setStatusAsInActive();
  }

  /// -----
  /// TODO:
  /// -----
  VoidCallback? onStart;

  /// -----
  /// TODO: Hàm Thực Thi Chính Của Step Item
  /// -----
  VoidCallback? onPerform;

  /// -----
  /// TODO: StepItemContent
  /// -----
  StepItemContentAbstract? _stepItemContent;
  StepItemContentAbstract? get getStepItemContent => _stepItemContent;
  void setStepItemContent({required StepItemContentAbstract? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stepItemContent = value;
    } else {
      _stepItemContent ??= value;
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
      /// TODO: Class có Constructor (.as___) => isPriorityOverride = not true
      /// -----
      setFlowType(value: FlowType.asDefault());

      setContentExistenceStatus(value: ContentExistenceStatus.asDefault());

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
      getFlowType?.onSetupRoot();

      getContentExistenceStatus?.onSetupRoot();
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
      getFlowType?.onInitRoot();

      getContentExistenceStatus?.onInitRoot();
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
