import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/content_item_section.dart';
import 'package:frame_creator_v2/master_data/content_item/03_pomodoro_content_stage/models/pomodoro_content_stage_active_status.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';

class PomodoroContentStage with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  PomodoroContentStageActiveStatus? _activeStatus;
  PomodoroContentStageActiveStatus? get getActiveStatus => _activeStatus;
  void setActiveStatus({required PomodoroContentStageActiveStatus? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeStatus = value;
    } else {
      _activeStatus ??= value;
    }

    return;
  }

  // ///
  // /// TODO:
  // ///
  // List<ContentItemSection>? _contentItemSectionListAsStack;
  // List<ContentItemSection>? get getContentItemSectionListAsStack => _contentItemSectionListAsStack;
  // void setContentItemSectionListAsStack({required List<ContentItemSection>? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _contentItemSectionListAsStack = value;
  //   } else {
  //     _contentItemSectionListAsStack ??= value;
  //   }
  //
  //   return;
  // }

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

      setActiveStatus(value: PomodoroContentStageActiveStatus.asDefault(), isPriorityOverride: true);

      // setContentItemSectionListAsStack(value: [], isPriorityOverride: true);
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
