import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/abstract/content_stage.dart';
import 'package:frame_creator_v2/master_data/content_item/04_content_item_sequential_execution/content_item_sequential_execution.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/flow_controller.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

abstract class FunctionalSequentialExecutionScript with ExecutionCore {
  ///
  /// TODO:
  ///
  FunctionalSequentialExecutionScript({
    required SequentialExecutionController? sequentialExecutionController, //
    required ContentItemSequentialExecution? contentItemSequentialExecution, //
    required FunctionalSequentialExecutionController? functionalSequentialExecutionController,
  }) {
    ///
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);

    ///
    setContentItemSequentialExecution(value: contentItemSequentialExecution, isPriorityOverride: true);

    ///
    setFunctionalSequentialExecutionController(value: functionalSequentialExecutionController, isPriorityOverride: true);
  }

  ///
  /// TODO:
  ///
  ContentItemSequentialExecution? _contentItemSequentialExecution;
  ContentItemSequentialExecution? get getContentItemSequentialExecution => _contentItemSequentialExecution;
  void setContentItemSequentialExecution({required ContentItemSequentialExecution? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSequentialExecution = value;
    } else {
      _contentItemSequentialExecution ??= value;
    }

    return;
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

  ///
  /// TODO:
  ///
  int? _seconds;
  int get getSeconds => _seconds ?? 0;
  void setSeconds({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _seconds = value;
    } else {
      _seconds ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onGenerateScript() async {
    /// -----
    /// TODO: Xác Định Những [ContentItemSection] Có Nội Dung
    /// -----
    await onGenerateScriptBindToContentItemSection();

    /// -----
    /// TODO: Tích Hợp Vào Luồng Điều Khiển Chính [FlowController]
    /// -----

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: Set Đến SystemTime
    /// -----
    await onGenerateScriptBindToFirstStartContentItemSection();
    await onGenerateScriptBindToGoFirstStartContentItemSection();
    await onGenerateScriptBindToDoneFirstStartContentItemSection();

    await onGenerateScriptBindToLastFinishContentItemSection();
    await onGenerateScriptBindToGoLastFinishContentItemSection();
    await onGenerateScriptBindToDoneLastFinishContentItemSection();

    getContentItemSequentialExecution?.getFirstStartContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getFirstStartSystemContentStage);
    getContentItemSequentialExecution?.getGoFirstStartContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getGoFirstStartSystemContentStage);
    getContentItemSequentialExecution?.getDoneFirstStartContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getDoneFirstStartSystemContentStage);

    getContentItemSequentialExecution?.getLastFinishContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getLastFinishSystemContentStage);
    getContentItemSequentialExecution?.getGoLastFinishContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getGoLastFinishSystemContentStage);
    getContentItemSequentialExecution?.getDoneLastFinishContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getDoneLastFinishSystemContentStage);

    /// -----
    /// TODO: Set Đến PomodoroBreakTime
    /// -----
    await onGenerateScriptBindToBreakTimeContentItemSectionSS01();
    await onGenerateScriptBindToGoBreakTimeContentItemSectionSS01();
    await onGenerateScriptBindToDoneBreakTimeContentItemSectionSS01();

    await onGenerateScriptBindToBreakTimeContentItemSectionSS02();
    await onGenerateScriptBindToGoBreakTimeContentItemSectionSS02();
    await onGenerateScriptBindToDoneBreakTimeContentItemSectionSS02();

    await onGenerateScriptBindToBreakTimeContentItemSectionSS03();
    await onGenerateScriptBindToGoBreakTimeContentItemSectionSS03();
    await onGenerateScriptBindToDoneBreakTimeContentItemSectionSS03();

    await onGenerateScriptBindToBreakTimeContentItemSectionSS04();
    await onGenerateScriptBindToGoBreakTimeContentItemSectionSS04();
    await onGenerateScriptBindToDoneBreakTimeContentItemSectionSS04();

    getContentItemSequentialExecution?.getBreakTimeContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroBreakTimeContentStageSS01);
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS01);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS01);

    getContentItemSequentialExecution?.getBreakTimeContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroBreakTimeContentStageSS02);
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS02);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS02);

    getContentItemSequentialExecution?.getBreakTimeContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroBreakTimeContentStageSS03);
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS03);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS03);

    getContentItemSequentialExecution?.getBreakTimeContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroBreakTimeContentStageSS04);
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS04);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS04);

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
    /// TODO:
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: Set Đến PomodoroStayFocused
    /// -----
    await onGenerateScriptBindToStayFocusedContentItemSectionSS01();
    await onGenerateScriptBindToGoStayFocusedContentItemSectionSS01();
    await onGenerateScriptBindToDoneStayFocusedContentItemSectionSS01();

    await onGenerateScriptBindToStayFocusedContentItemSectionSS02();
    await onGenerateScriptBindToGoStayFocusedContentItemSectionSS02();
    await onGenerateScriptBindToDoneStayFocusedContentItemSectionSS02();

    await onGenerateScriptBindToStayFocusedContentItemSectionSS03();
    await onGenerateScriptBindToGoStayFocusedContentItemSectionSS03();
    await onGenerateScriptBindToDoneStayFocusedContentItemSectionSS03();

    await onGenerateScriptBindToStayFocusedContentItemSectionSS04();
    await onGenerateScriptBindToGoStayFocusedContentItemSectionSS04();
    await onGenerateScriptBindToDoneStayFocusedContentItemSectionSS04();

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS01);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS01);

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS02);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS02);

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS03);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS03);

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS04);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS04);

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
    /// TODO:
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: Generate & Integrate
    /// TODO: Tạo Kịch Bản CHi Tiết Cho Từng [ContentItemUnit]
    /// TODO: Bao Gồm Cả Việc Đưa Unit Nào Vào Section Nào
    /// -----
    await onGenerateScriptBindToContentItemUnitSS01();
    await onGenerateScriptBindToContentItemUnitSS02();
    await onGenerateScriptBindToContentItemUnitSS03();
    await onGenerateScriptBindToContentItemUnitSS04();
    await onGenerateScriptBindToContentItemUnitSS05();
    await onGenerateScriptBindToContentItemUnitSS06();
    await onGenerateScriptBindToContentItemUnitSS07();
    await onGenerateScriptBindToContentItemUnitSS08();
    await onGenerateScriptBindToContentItemUnitSS09();
    await onGenerateScriptBindToContentItemUnitSS10();

    await onGenerateScriptBindToContentItemUnitSS11();
    await onGenerateScriptBindToContentItemUnitSS12();
    await onGenerateScriptBindToContentItemUnitSS13();
    await onGenerateScriptBindToContentItemUnitSS14();
    await onGenerateScriptBindToContentItemUnitSS15();
    await onGenerateScriptBindToContentItemUnitSS16();
    await onGenerateScriptBindToContentItemUnitSS17();
    await onGenerateScriptBindToContentItemUnitSS18();
    await onGenerateScriptBindToContentItemUnitSS19();
    await onGenerateScriptBindToContentItemUnitSS20();

    await onGenerateScriptAsPomodoroContent();

    return;
  }

  /// -----
  /// TODO: Gắn Kết Kịch Bản Của Section Vào Một Pomodoro Theo Chỉ Định
  /// -----
  Future<void> onGenerateScriptAsPomodoroContent();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Section
  /// -----
  Future<void> onGenerateScriptBindToContentItemSection();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với First Start Section
  /// -----
  Future<void> onGenerateScriptBindToFirstStartContentItemSection();
  Future<void> onGenerateScriptBindToGoFirstStartContentItemSection();
  Future<void> onGenerateScriptBindToDoneFirstStartContentItemSection();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Last Finish Section
  /// -----
  Future<void> onGenerateScriptBindToLastFinishContentItemSection();
  Future<void> onGenerateScriptBindToGoLastFinishContentItemSection();
  Future<void> onGenerateScriptBindToDoneLastFinishContentItemSection();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS01
  /// -----
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS01();
  Future<void> onGenerateScriptBindToGoBreakTimeContentItemSectionSS01();
  Future<void> onGenerateScriptBindToDoneBreakTimeContentItemSectionSS01();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS02
  /// -----
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS02();
  Future<void> onGenerateScriptBindToGoBreakTimeContentItemSectionSS02();
  Future<void> onGenerateScriptBindToDoneBreakTimeContentItemSectionSS02();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS03
  /// -----
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS03();
  Future<void> onGenerateScriptBindToGoBreakTimeContentItemSectionSS03();
  Future<void> onGenerateScriptBindToDoneBreakTimeContentItemSectionSS03();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS04
  /// -----
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS04();
  Future<void> onGenerateScriptBindToGoBreakTimeContentItemSectionSS04();
  Future<void> onGenerateScriptBindToDoneBreakTimeContentItemSectionSS04();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG (Bao Gồm Các Unit Trong Các Section)
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS01
  /// -----
  Future<void> onGenerateScriptBindToStayFocusedContentItemSectionSS01();
  Future<void> onGenerateScriptBindToGoStayFocusedContentItemSectionSS01();
  Future<void> onGenerateScriptBindToDoneStayFocusedContentItemSectionSS01();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS02
  /// -----
  Future<void> onGenerateScriptBindToStayFocusedContentItemSectionSS02();
  Future<void> onGenerateScriptBindToGoStayFocusedContentItemSectionSS02();
  Future<void> onGenerateScriptBindToDoneStayFocusedContentItemSectionSS02();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS03
  /// -----
  Future<void> onGenerateScriptBindToStayFocusedContentItemSectionSS03();
  Future<void> onGenerateScriptBindToGoStayFocusedContentItemSectionSS03();
  Future<void> onGenerateScriptBindToDoneStayFocusedContentItemSectionSS03();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS04
  /// -----
  Future<void> onGenerateScriptBindToStayFocusedContentItemSectionSS04();
  Future<void> onGenerateScriptBindToGoStayFocusedContentItemSectionSS04();
  Future<void> onGenerateScriptBindToDoneStayFocusedContentItemSectionSS04();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG (Bao Gồm Các Unit Trong Các Section)
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS01
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS01();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS02
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS02();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS03
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS03();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS04
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS04();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS05
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS05();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS06
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS06();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS07
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS07();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS08
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS08();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS09
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS09();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS10
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS10();

  ///

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS11
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS11();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS12
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS12();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS13
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS13();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS14
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS14();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS15
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS15();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS16
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS16();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS17
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS17();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS18
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS18();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS19
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS19();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS20
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS20();

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
