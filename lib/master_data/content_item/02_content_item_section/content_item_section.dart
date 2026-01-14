import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/models/content_item_section_active_status.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/models/content_item_timer.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/abstract/content_stage.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/content_existence_status.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class ContentItemSection with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  ContentItemSection({required SequentialExecutionController? sequentialExecutionController, required FunctionalSequentialExecutionController? functionalSequentialExecutionController}) {
    /// -----
    /// TODO:
    /// -----
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    setFunctionalSequentialExecutionController(value: functionalSequentialExecutionController, isPriorityOverride: true);

    ///
  }

  ///
  /// TODO:
  ///
  FunctionalSequentialExecutionController? _functionalSequentialExecutionController;
  FunctionalSequentialExecutionController? get getFunctionalSequentialExecutionController => _functionalSequentialExecutionController;
  void setFunctionalSequentialExecutionController({required FunctionalSequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionController = value;
    } else {
      _functionalSequentialExecutionController ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ContentItemTimer? _contentItemTimer;
  ContentItemTimer? get getContentItemTimer => _contentItemTimer;
  void setContentItemTimer({required ContentItemTimer? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemTimer = value;
    } else {
      _contentItemTimer ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Section Có Chứa Nội Dung Hay Không
  /// PomodoroContentStage Dựa Vào Giá Trị Này Để Có Hoặc Bỏ Qua Thực Thi Section này
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
  /// TODO: Tính Toán Tổng Thời Gian
  /// -----
  void calculateTotalTime() {
    ///
  }

  /// -----
  /// TODO:
  /// -----
  ContentItemSectionActiveStatus? _activeStatus;
  ContentItemSectionActiveStatus? get getActiveStatus => _activeStatus;
  void setActiveStatus({required ContentItemSectionActiveStatus? value, bool? isPriorityOverride}) {
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
  List<ContentItemUnit?>? _contentItemUnitListAsStack;
  List<ContentItemUnit?>? get getContentItemUnitListAsStack => _contentItemUnitListAsStack;
  void setContentItemUnitListAsStack({required List<ContentItemUnit?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemUnitListAsStack = value;
    } else {
      _contentItemUnitListAsStack ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bắt Đầu Section
  /// -----
  FunctionalSequentialExecutionStepItemState? _functionalSequentialExecutionStepItemStateAsStartSection;
  FunctionalSequentialExecutionStepItemState? get getFunctionalSequentialExecutionStepItemStateAsStartSection => _functionalSequentialExecutionStepItemStateAsStartSection;
  void setFunctionalSequentialExecutionStepItemStateAsStartSection({required FunctionalSequentialExecutionStepItemState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateAsStartSection = value;
    } else {
      _functionalSequentialExecutionStepItemStateAsStartSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Kết Thúc Section
  /// -----
  FunctionalSequentialExecutionStepItemState? _functionalSequentialExecutionStepItemStateAsEndSection;
  FunctionalSequentialExecutionStepItemState? get getFunctionalSequentialExecutionStepItemStateAsEndSection => _functionalSequentialExecutionStepItemStateAsEndSection;
  void setFunctionalSequentialExecutionStepItemStateAsEndSection({required FunctionalSequentialExecutionStepItemState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateAsEndSection = value;
    } else {
      _functionalSequentialExecutionStepItemStateAsEndSection ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Integrate Script [_] Bind To [FlowController]
  /// TODO: Tích Hợp FunctionalSequentialExecutionStepItem (State) Vào Luồng Chính [FlowController] => Luồng Chính Có Trách Nhiệm Thực Thi
  /// -----
  onIntegrateScriptBindToFlowControllerAsSystem({required ContentStage? contentStage}) {
    /// -----
    /// TODO: Start Section
    /// -----
    onIntegrateScriptAsStartSectionBindToFlowController();

    /// -----
    /// TODO: Content Of Section (Include All Of Unit Inside)
    /// -----
    if (getContentItemUnitListAsStack?.isNotEmpty == true) {
      for (ContentItemUnit? contentItemUnit in (getContentItemUnitListAsStack ?? [])) {
        if (contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
          for (FunctionalSequentialExecutionStepItemState? functionalSequentialExecutionStepItemState in (contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack ?? [])) {
            contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
          }
        }
      }
    }

    /// -----
    /// TODO: End Section
    /// -----
    onIntegrateScriptAsEndSectionBindToFlowController();

    return;
  }

  /// -----
  /// TODO: Integrate Script [_] Bind To [FlowController]
  /// TODO: Tích Hợp FunctionalSequentialExecutionStepItem (State) Vào Luồng Chính [FlowController] => Luồng Chính Có Trách Nhiệm Thực Thi
  /// -----
  onIntegrateScriptBindToFlowControllerAsPomodoroContent({required ContentStage? contentStage}) {
    /// -----
    /// TODO: Start Section
    /// -----
    onIntegrateScriptAsStartSectionBindToFlowController();

    /// -----
    /// TODO: Content Of Section (Include All Of Unit Inside)
    /// -----
    if (getContentItemUnitListAsStack?.isNotEmpty == true) {
      for (ContentItemUnit? contentItemUnit in (getContentItemUnitListAsStack ?? [])) {
        if (contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
          for (FunctionalSequentialExecutionStepItemState? functionalSequentialExecutionStepItemState in (contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack ?? [])) {
            contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
          }
        }
      }
    }

    /// -----
    /// TODO: End Section
    /// -----
    onIntegrateScriptAsEndSectionBindToFlowController();

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Integrate Script [_] Bind To [FlowController]
  /// TODO: Tích Hợp FunctionalSequentialExecutionStepItem (State) Vào Luồng Chính [FlowController] => Luồng Chính Có Trách Nhiệm Thực Thi
  /// -----
  onIntegrateScriptBindToFlowController() {
    /// -----
    /// TODO: Start Section
    /// -----
    onIntegrateScriptAsStartSectionBindToFlowController();

    /// -----
    /// TODO: Content Of Section (Include All Of Unit Inside)
    /// -----
    if (getContentItemUnitListAsStack?.isNotEmpty == true) {
      for (ContentItemUnit? contentItemUnit in (getContentItemUnitListAsStack ?? [])) {
        if (contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
          for (FunctionalSequentialExecutionStepItemState? functionalSequentialExecutionStepItemState in (contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack ?? [])) {
            getFunctionalSequentialExecutionController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
          }
        }
      }
    }

    /// -----
    /// TODO: End Section
    /// -----
    onIntegrateScriptAsEndSectionBindToFlowController();

    return;
  }

  /// -----
  /// TODO: Integrate Script [_] Bind To [FlowController]
  /// TODO: Tích Hợp FunctionalSequentialExecutionStepItem (State) - Bắt Đầu Section - Vào Luồng Chính [FlowController] => Luồng Chính Có Trách Nhiệm Thực Thi
  /// -----
  onIntegrateScriptAsStartSectionBindToFlowController() {
    if (getFunctionalSequentialExecutionStepItemStateAsStartSection != null) {
      getFunctionalSequentialExecutionController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(getFunctionalSequentialExecutionStepItemStateAsStartSection);
    }

    ///
  }

  /// -----
  /// TODO: Integrate Script [_] Bind To [FlowController]
  /// TODO: Tích Hợp FunctionalSequentialExecutionStepItem (State) - Kết Thúc Section - Vào Luồng Chính [FlowController] => Luồng Chính Có Trách Nhiệm Thực Thi
  /// -----
  onIntegrateScriptAsEndSectionBindToFlowController() {
    if (getFunctionalSequentialExecutionStepItemStateAsEndSection != null) {
      getFunctionalSequentialExecutionController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(getFunctionalSequentialExecutionStepItemStateAsEndSection);
    }

    ///
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    ///
    ///
    ///
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
      setContentItemTimer(value: ContentItemTimer.asDefault(), isPriorityOverride: true);
      setContentExistenceStatus(value: ContentExistenceStatus.asDefault(), isPriorityOverride: true);
      setContentItemUnitListAsStack(value: [], isPriorityOverride: true);

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
      await getContentItemTimer?.onSetupRoot();
      await getContentExistenceStatus?.onSetupRoot();
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
      await getContentItemTimer?.onInitRoot();
      await getContentExistenceStatus?.onInitRoot();
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
