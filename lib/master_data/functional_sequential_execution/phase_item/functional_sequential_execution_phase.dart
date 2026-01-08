import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/phase_item/status/functional_sequential_execution_phase_active_status.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/flow_controller.dart';

class FunctionalSequentialExecutionPhase1 with ExecutionCore {
  ///
  /// TODO:
  ///
  FunctionalSequentialExecutionPhase1({required FlowController? flowController}) {
    setFlowController(value: flowController, isPriorityOverride: true);
    setActiveStatus(value: FunctionalSequentialExecutionPhaseActiveStatus.asDefault(), isPriorityOverride: true);
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
  /// TODO: Trạng thái kích hoạt => Dựa vào để [Flow Controller] quyết định chấp nhận hoặc bỏ qua [Phase] này
  /// -----
  FunctionalSequentialExecutionPhaseActiveStatus? _activeStatus;
  FunctionalSequentialExecutionPhaseActiveStatus? get getActiveStatus => _activeStatus;
  void setActiveStatus({required FunctionalSequentialExecutionPhaseActiveStatus? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeStatus = value;
    } else {
      _activeStatus ??= value;
    }

    return;
  }

  ///
  /// TODO: FunctionalSequentialExecutionStepItemState List As Stack
  ///
  List<FunctionalSequentialExecutionStepItemState?>? _functionalSequentialExecutionStepItemStateListAsStack;
  List<FunctionalSequentialExecutionStepItemState?>? get getFunctionalSequentialExecutionStepItemStateListAsStack => _functionalSequentialExecutionStepItemStateListAsStack;
  void setFunctionalSequentialExecutionStepItemStateListAsStack({required List<FunctionalSequentialExecutionStepItemState>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateListAsStack = value;
    } else {
      _functionalSequentialExecutionStepItemStateListAsStack ??= value;
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
      /// TODO:
      /// -----
      setFunctionalSequentialExecutionStepItemStateListAsStack(value: [], isPriorityOverride: true);

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
