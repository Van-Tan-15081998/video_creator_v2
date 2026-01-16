import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/content_item_section.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/models/content_item_section_active_status.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/pomodoro_content_stage.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/system_content_stage.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/functional_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/topic_c_script.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class ContentItemSequentialExecution with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  ContentItemSequentialExecution({
    required SystemStateManagement? systemStateManagement, //
    required SequentialExecutionController? sequentialExecutionController, //
  }) {
    setSystemStateManagement(value: systemStateManagement);
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
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

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: First Start Section
  /// TODO: Section Mở Đầu Của Video
  /// -----
  ContentItemSection? _mainFirstStartContentItemSection;
  ContentItemSection? get getMainFirstStartContentItemSection => _mainFirstStartContentItemSection;
  void setMainFirstStartContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainFirstStartContentItemSection = value;
    } else {
      _mainFirstStartContentItemSection ??= value;
    }

    return;
  }

  ContentItemSection? _goFirstStartContentItemSection;
  ContentItemSection? get getGoFirstStartContentItemSection => _goFirstStartContentItemSection;
  void setGoFirstStartContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goFirstStartContentItemSection = value;
    } else {
      _goFirstStartContentItemSection ??= value;
    }

    return;
  }

  ContentItemSection? _doneFirstStartContentItemSection;
  ContentItemSection? get getDoneFirstStartContentItemSection => _doneFirstStartContentItemSection;
  void setDoneFirstStartContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneFirstStartContentItemSection = value;
    } else {
      _doneFirstStartContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Last Finish Section
  /// TODO: Section Kết Thúc Của Video
  /// -----
  ContentItemSection? _mainLastFinishContentItemSection;
  ContentItemSection? get getMainLastFinishContentItemSection => _mainLastFinishContentItemSection;
  void setMainLastFinishContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainLastFinishContentItemSection = value;
    } else {
      _mainLastFinishContentItemSection ??= value;
    }

    return;
  }

  ContentItemSection? _goLastFinishContentItemSection;
  ContentItemSection? get getGoLastFinishContentItemSection => _goLastFinishContentItemSection;
  void setGoLastFinishContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goLastFinishContentItemSection = value;
    } else {
      _goLastFinishContentItemSection ??= value;
    }

    return;
  }

  ContentItemSection? _doneLastFinishContentItemSection;
  ContentItemSection? get getDoneLastFinishContentItemSection => _doneLastFinishContentItemSection;
  void setDoneLastFinishContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneLastFinishContentItemSection = value;
    } else {
      _doneLastFinishContentItemSection ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Bridge From - DoneFirstStartSystemItem - To - GoPomodoroStayFocusedSS01
  /// -----
  ContentItemSection? _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection;
  ContentItemSection? get getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection => _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection;
  void setBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection = value;
    } else {
      _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS01 - To - GoPomodoroBreakTimeSS01
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection => _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection;
  void setBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS01 - To - GoPomodoroStayFocusedSS02
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection => _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection;
  void setBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS02 - To - GoPomodoroBreakTimeSS02
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection => _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection;
  void setBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS02 - To - GoPomodoroStayFocusedSS03
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection => _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection;
  void setBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS03 - To - GoPomodoroBreakTimeSS03
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection => _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection;
  void setBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS03 - To - GoPomodoroStayFocusedSS04
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection => _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection;
  void setBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS04 - To - GoPomodoroBreakTimeSS04
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection => _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection;
  void setBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS04 - To - GoLastFinishSystemItem
  /// -----
  ContentItemSection? _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection;
  ContentItemSection? get getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection => _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection;
  void setBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: BreakTime Section SS01
  /// -----
  ContentItemSection? _mainBreakTimeContentItemSectionSS01;
  ContentItemSection? get getMainBreakTimeContentItemSectionSS01 => _mainBreakTimeContentItemSectionSS01;
  void setMainBreakTimeContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainBreakTimeContentItemSectionSS01 = value;
    } else {
      _mainBreakTimeContentItemSectionSS01 ??= value;
    }

    return;
  }

  ContentItemSection? _goBreakTimeContentItemSectionSS01;
  ContentItemSection? get getGoBreakTimeContentItemSectionSS01 => _goBreakTimeContentItemSectionSS01;
  void setGoBreakTimeContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goBreakTimeContentItemSectionSS01 = value;
    } else {
      _goBreakTimeContentItemSectionSS01 ??= value;
    }

    return;
  }

  ContentItemSection? _doneBreakTimeContentItemSectionSS01;
  ContentItemSection? get getDoneBreakTimeContentItemSectionSS01 => _doneBreakTimeContentItemSectionSS01;
  void setDoneBreakTimeContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneBreakTimeContentItemSectionSS01 = value;
    } else {
      _doneBreakTimeContentItemSectionSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: BreakTime Section SS02
  /// -----
  ContentItemSection? _mainBreakTimeContentItemSectionSS02;
  ContentItemSection? get getMainBreakTimeContentItemSectionSS02 => _mainBreakTimeContentItemSectionSS02;
  void setMainBreakTimeContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainBreakTimeContentItemSectionSS02 = value;
    } else {
      _mainBreakTimeContentItemSectionSS02 ??= value;
    }

    return;
  }

  ContentItemSection? _goBreakTimeContentItemSectionSS02;
  ContentItemSection? get getGoBreakTimeContentItemSectionSS02 => _goBreakTimeContentItemSectionSS02;
  void setGoBreakTimeContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goBreakTimeContentItemSectionSS02 = value;
    } else {
      _goBreakTimeContentItemSectionSS02 ??= value;
    }

    return;
  }

  ContentItemSection? _doneBreakTimeContentItemSectionSS02;
  ContentItemSection? get getDoneBreakTimeContentItemSectionSS02 => _doneBreakTimeContentItemSectionSS02;
  void setDoneBreakTimeContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneBreakTimeContentItemSectionSS02 = value;
    } else {
      _doneBreakTimeContentItemSectionSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: BreakTime Section SS03
  /// -----
  ContentItemSection? _mainBreakTimeContentItemSectionSS03;
  ContentItemSection? get getMainBreakTimeContentItemSectionSS03 => _mainBreakTimeContentItemSectionSS03;
  void setMainBreakTimeContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainBreakTimeContentItemSectionSS03 = value;
    } else {
      _mainBreakTimeContentItemSectionSS03 ??= value;
    }

    return;
  }

  ContentItemSection? _goBreakTimeContentItemSectionSS03;
  ContentItemSection? get getGoBreakTimeContentItemSectionSS03 => _goBreakTimeContentItemSectionSS03;
  void setGoBreakTimeContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goBreakTimeContentItemSectionSS03 = value;
    } else {
      _goBreakTimeContentItemSectionSS03 ??= value;
    }

    return;
  }

  ContentItemSection? _doneBreakTimeContentItemSectionSS03;
  ContentItemSection? get getDoneBreakTimeContentItemSectionSS03 => _doneBreakTimeContentItemSectionSS03;
  void setDoneBreakTimeContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneBreakTimeContentItemSectionSS03 = value;
    } else {
      _doneBreakTimeContentItemSectionSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: BreakTime Section SS04
  /// -----
  ContentItemSection? _mainBreakTimeContentItemSectionSS04;
  ContentItemSection? get getMainBreakTimeContentItemSectionSS04 => _mainBreakTimeContentItemSectionSS04;
  void setMainBreakTimeContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainBreakTimeContentItemSectionSS04 = value;
    } else {
      _mainBreakTimeContentItemSectionSS04 ??= value;
    }

    return;
  }

  ContentItemSection? _goBreakTimeContentItemSectionSS04;
  ContentItemSection? get getGoBreakTimeContentItemSectionSS04 => _goBreakTimeContentItemSectionSS04;
  void setGoBreakTimeContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goBreakTimeContentItemSectionSS04 = value;
    } else {
      _goBreakTimeContentItemSectionSS04 ??= value;
    }

    return;
  }

  ContentItemSection? _doneBreakTimeContentItemSectionSS04;
  ContentItemSection? get getDoneBreakTimeContentItemSectionSS04 => _doneBreakTimeContentItemSectionSS04;
  void setDoneBreakTimeContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneBreakTimeContentItemSectionSS04 = value;
    } else {
      _doneBreakTimeContentItemSectionSS04 ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG (GO & DONE)
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: StayFocused Section SS01
  /// -----
  ContentItemSection? _goStayFocusedContentItemSectionSS01;
  ContentItemSection? get getGoStayFocusedContentItemSectionSS01 => _goStayFocusedContentItemSectionSS01;
  void setGoStayFocusedContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goStayFocusedContentItemSectionSS01 = value;
    } else {
      _goStayFocusedContentItemSectionSS01 ??= value;
    }

    return;
  }

  ContentItemSection? _mainStayFocusedContentItemSectionSS01;
  ContentItemSection? get getMainStayFocusedContentItemSectionSS01 => _mainStayFocusedContentItemSectionSS01;
  void setMainStayFocusedContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainStayFocusedContentItemSectionSS01 = value;
    } else {
      _mainStayFocusedContentItemSectionSS01 ??= value;
    }

    return;
  }

  ContentItemSection? _doneStayFocusedContentItemSectionSS01;
  ContentItemSection? get getDoneStayFocusedContentItemSectionSS01 => _doneStayFocusedContentItemSectionSS01;
  void setDoneStayFocusedContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneStayFocusedContentItemSectionSS01 = value;
    } else {
      _doneStayFocusedContentItemSectionSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: StayFocused Section SS02
  /// -----
  ContentItemSection? _goStayFocusedContentItemSectionSS02;
  ContentItemSection? get getGoStayFocusedContentItemSectionSS02 => _goStayFocusedContentItemSectionSS02;
  void setGoStayFocusedContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goStayFocusedContentItemSectionSS02 = value;
    } else {
      _goStayFocusedContentItemSectionSS02 ??= value;
    }

    return;
  }

  ContentItemSection? _mainStayFocusedContentItemSectionSS02;
  ContentItemSection? get getMainStayFocusedContentItemSectionSS02 => _mainStayFocusedContentItemSectionSS02;
  void setMainStayFocusedContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainStayFocusedContentItemSectionSS02 = value;
    } else {
      _mainStayFocusedContentItemSectionSS02 ??= value;
    }

    return;
  }

  ContentItemSection? _doneStayFocusedContentItemSectionSS02;
  ContentItemSection? get getDoneStayFocusedContentItemSectionSS02 => _doneStayFocusedContentItemSectionSS02;
  void setDoneStayFocusedContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneStayFocusedContentItemSectionSS02 = value;
    } else {
      _doneStayFocusedContentItemSectionSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: StayFocused Section SS03
  /// -----
  ContentItemSection? _goStayFocusedContentItemSectionSS03;
  ContentItemSection? get getGoStayFocusedContentItemSectionSS03 => _goStayFocusedContentItemSectionSS03;
  void setGoStayFocusedContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goStayFocusedContentItemSectionSS03 = value;
    } else {
      _goStayFocusedContentItemSectionSS03 ??= value;
    }

    return;
  }

  ContentItemSection? _mainStayFocusedContentItemSectionSS03;
  ContentItemSection? get getMainStayFocusedContentItemSectionSS03 => _mainStayFocusedContentItemSectionSS03;
  void setMainStayFocusedContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainStayFocusedContentItemSectionSS03 = value;
    } else {
      _mainStayFocusedContentItemSectionSS03 ??= value;
    }

    return;
  }

  ContentItemSection? _doneStayFocusedContentItemSectionSS03;
  ContentItemSection? get getDoneStayFocusedContentItemSectionSS03 => _doneStayFocusedContentItemSectionSS03;
  void setDoneStayFocusedContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneStayFocusedContentItemSectionSS03 = value;
    } else {
      _doneStayFocusedContentItemSectionSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: StayFocused Section SS04
  /// -----
  ContentItemSection? _goStayFocusedContentItemSectionSS04;
  ContentItemSection? get getGoStayFocusedContentItemSectionSS04 => _goStayFocusedContentItemSectionSS04;
  void setGoStayFocusedContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goStayFocusedContentItemSectionSS04 = value;
    } else {
      _goStayFocusedContentItemSectionSS04 ??= value;
    }

    return;
  }

  ContentItemSection? _mainStayFocusedContentItemSectionSS04;
  ContentItemSection? get getMainStayFocusedContentItemSectionSS04 => _mainStayFocusedContentItemSectionSS04;
  void setMainStayFocusedContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainStayFocusedContentItemSectionSS04 = value;
    } else {
      _mainStayFocusedContentItemSectionSS04 ??= value;
    }

    return;
  }

  ContentItemSection? _doneStayFocusedContentItemSectionSS04;
  ContentItemSection? get getDoneStayFocusedContentItemSectionSS04 => _doneStayFocusedContentItemSectionSS04;
  void setDoneStayFocusedContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneStayFocusedContentItemSectionSS04 = value;
    } else {
      _doneStayFocusedContentItemSectionSS04 ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS01
  /// -----
  ContentItemSection? _contentItemSectionSS01;
  ContentItemSection? get getContentItemSectionSS01 => _contentItemSectionSS01;
  void setContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS01 = value;
    } else {
      _contentItemSectionSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS01 As [Specific]
  /// -----
  T? getContentItemSectionSS01As<T extends ContentItemSection>() {
    if (_contentItemSectionSS01 is T) {
      return _contentItemSectionSS01 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS02
  /// -----
  ContentItemSection? _contentItemSectionSS02;
  ContentItemSection? get getContentItemSectionSS02 => _contentItemSectionSS02;
  void setContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS02 = value;
    } else {
      _contentItemSectionSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS02 As [Specific]
  /// -----
  T? getContentItemSectionSS02As<T extends ContentItemSection>() {
    if (_contentItemSectionSS02 is T) {
      return _contentItemSectionSS02 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS03
  /// -----
  ContentItemSection? _contentItemSectionSS03;
  ContentItemSection? get getContentItemSectionSS03 => _contentItemSectionSS03;
  void setContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS03 = value;
    } else {
      _contentItemSectionSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS03 As [Specific]
  /// -----
  T? getContentItemSectionSS03As<T extends ContentItemSection>() {
    if (_contentItemSectionSS03 is T) {
      return _contentItemSectionSS03 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS04
  /// -----
  ContentItemSection? _contentItemSectionSS04;
  ContentItemSection? get getContentItemSectionSS04 => _contentItemSectionSS04;
  void setContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS04 = value;
    } else {
      _contentItemSectionSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS04 As [Specific]
  /// -----
  T? getContentItemSectionSS04As<T extends ContentItemSection>() {
    if (_contentItemSectionSS04 is T) {
      return _contentItemSectionSS04 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS05
  /// -----
  ContentItemSection? _contentItemSectionSS05;
  ContentItemSection? get getContentItemSectionSS05 => _contentItemSectionSS05;
  void setContentItemSectionSS05({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS05 = value;
    } else {
      _contentItemSectionSS05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS05 As [Specific]
  /// -----
  T? getContentItemSectionSS05As<T extends ContentItemSection>() {
    if (_contentItemSectionSS05 is T) {
      return _contentItemSectionSS05 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS06
  /// -----
  ContentItemSection? _contentItemSectionSS06;
  ContentItemSection? get getContentItemSectionSS06 => _contentItemSectionSS06;
  void setContentItemSectionSS06({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS06 = value;
    } else {
      _contentItemSectionSS06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS06 As [Specific]
  /// -----
  T? getContentItemSectionSS06As<T extends ContentItemSection>() {
    if (_contentItemSectionSS06 is T) {
      return _contentItemSectionSS06 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS07
  /// -----
  ContentItemSection? _contentItemSectionSS07;
  ContentItemSection? get getContentItemSectionSS07 => _contentItemSectionSS07;
  void setContentItemSectionSS07({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS07 = value;
    } else {
      _contentItemSectionSS07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS07 As [Specific]
  /// -----
  T? getContentItemSectionSS07As<T extends ContentItemSection>() {
    if (_contentItemSectionSS07 is T) {
      return _contentItemSectionSS07 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS08
  /// -----
  ContentItemSection? _contentItemSectionSS08;
  ContentItemSection? get getContentItemSectionSS08 => _contentItemSectionSS08;
  void setContentItemSectionSS08({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS08 = value;
    } else {
      _contentItemSectionSS08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS08 As [Specific]
  /// -----
  T? getContentItemSectionSS08As<T extends ContentItemSection>() {
    if (_contentItemSectionSS08 is T) {
      return _contentItemSectionSS08 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS09
  /// -----
  ContentItemSection? _contentItemSectionSS09;
  ContentItemSection? get getContentItemSectionSS09 => _contentItemSectionSS09;
  void setContentItemSectionSS09({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS09 = value;
    } else {
      _contentItemSectionSS09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS09 As [Specific]
  /// -----
  T? getContentItemSectionSS09As<T extends ContentItemSection>() {
    if (_contentItemSectionSS09 is T) {
      return _contentItemSectionSS09 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Section SS10
  /// -----
  ContentItemSection? _contentItemSectionSS10;
  ContentItemSection? get getContentItemSectionSS10 => _contentItemSectionSS10;
  void setContentItemSectionSS10({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSectionSS10 = value;
    } else {
      _contentItemSectionSS10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Get ContentItemSection SS10 As [Specific]
  /// -----
  T? getContentItemSectionSS10As<T extends ContentItemSection>() {
    if (_contentItemSectionSS10 is T) {
      return _contentItemSectionSS10 as T;
    }
    return null;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

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

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: FirstStartSystemContentStage
  /// -----
  SystemContentStage? _mainFirstStartSystemContentStage;
  SystemContentStage? get getMainFirstStartSystemContentStage => _mainFirstStartSystemContentStage;
  void setMainFirstStartSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainFirstStartSystemContentStage = value;
    } else {
      _mainFirstStartSystemContentStage ??= value;
    }

    return;
  }

  SystemContentStage? _goFirstStartSystemContentStage;
  SystemContentStage? get getGoFirstStartSystemContentStage => _goFirstStartSystemContentStage;
  void setGoFirstStartSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goFirstStartSystemContentStage = value;
    } else {
      _goFirstStartSystemContentStage ??= value;
    }

    return;
  }

  SystemContentStage? _doneFirstStartSystemContentStage;
  SystemContentStage? get getDoneFirstStartSystemContentStage => _doneFirstStartSystemContentStage;
  void setDoneFirstStartSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneFirstStartSystemContentStage = value;
    } else {
      _doneFirstStartSystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: LastFinishSystemContentStage
  /// -----
  SystemContentStage? _mainLastFinishSystemContentStage;
  SystemContentStage? get getMainLastFinishSystemContentStage => _mainLastFinishSystemContentStage;
  void setMainLastFinishSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainLastFinishSystemContentStage = value;
    } else {
      _mainLastFinishSystemContentStage ??= value;
    }

    return;
  }

  SystemContentStage? _goLastFinishSystemContentStage;
  SystemContentStage? get getGoLastFinishSystemContentStage => _goLastFinishSystemContentStage;
  void setGoLastFinishSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goLastFinishSystemContentStage = value;
    } else {
      _goLastFinishSystemContentStage ??= value;
    }

    return;
  }

  SystemContentStage? _doneLastFinishSystemContentStage;
  SystemContentStage? get getDoneLastFinishSystemContentStage => _doneLastFinishSystemContentStage;
  void setDoneLastFinishSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _doneLastFinishSystemContentStage = value;
    } else {
      _doneLastFinishSystemContentStage ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Bridge From - DoneFirstStartSystemItem - To - GoPomodoroStayFocusedSS01
  /// -----
  SystemContentStage? _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage;
  SystemContentStage? get getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage => _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage;
  void setBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage = value;
    } else {
      _bridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS01 - To - GoPomodoroBreakTimeSS01
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage => _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage;
  void setBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS01 - To - GoPomodoroStayFocusedSS02
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage => _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage;
  void setBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS02 - To - GoPomodoroBreakTimeSS02
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage => _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage;
  void setBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS02 - To - GoPomodoroStayFocusedSS03
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage => _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage;
  void setBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS03 - To - GoPomodoroBreakTimeSS03
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage => _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage;
  void setBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS03 - To - GoPomodoroStayFocusedSS04
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage => _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage;
  void setBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS04 - To - GoPomodoroBreakTimeSS04
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage => _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage;
  void setBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS04 - To - GoLastFinishSystemItem
  /// -----
  SystemContentStage? _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage;
  SystemContentStage? get getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage => _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage;
  void setBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage = value;
    } else {
      _bridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS01
  /// -----
  PomodoroContentStage? _mainPomodoroStayFocusedContentStageSS01;
  PomodoroContentStage? get getMainPomodoroStayFocusedContentStageSS01 => _mainPomodoroStayFocusedContentStageSS01;
  void setMainPomodoroStayFocusedContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroStayFocusedContentStageSS01 = value;
    } else {
      _mainPomodoroStayFocusedContentStageSS01 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroStayFocusedContentStageSS01;
  PomodoroContentStage? get getGoPomodoroStayFocusedContentStageSS01 => _goPomodoroStayFocusedContentStageSS01;
  void setGoPomodoroStayFocusedContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroStayFocusedContentStageSS01 = value;
    } else {
      _goPomodoroStayFocusedContentStageSS01 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroStayFocusedContentStageSS01;
  PomodoroContentStage? get getDonePomodoroStayFocusedContentStageSS01 => _donePomodoroStayFocusedContentStageSS01;
  void setDonePomodoroStayFocusedContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroStayFocusedContentStageSS01 = value;
    } else {
      _donePomodoroStayFocusedContentStageSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS02
  /// -----
  PomodoroContentStage? _mainPomodoroStayFocusedContentStageSS02;
  PomodoroContentStage? get getMainPomodoroStayFocusedContentStageSS02 => _mainPomodoroStayFocusedContentStageSS02;
  void setMainPomodoroStayFocusedContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroStayFocusedContentStageSS02 = value;
    } else {
      _mainPomodoroStayFocusedContentStageSS02 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroStayFocusedContentStageSS02;
  PomodoroContentStage? get getGoPomodoroStayFocusedContentStageSS02 => _goPomodoroStayFocusedContentStageSS02;
  void setGoPomodoroStayFocusedContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroStayFocusedContentStageSS02 = value;
    } else {
      _goPomodoroStayFocusedContentStageSS02 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroStayFocusedContentStageSS02;
  PomodoroContentStage? get getDonePomodoroStayFocusedContentStageSS02 => _donePomodoroStayFocusedContentStageSS02;
  void setDonePomodoroStayFocusedContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroStayFocusedContentStageSS02 = value;
    } else {
      _donePomodoroStayFocusedContentStageSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS03
  /// -----
  PomodoroContentStage? _mainPomodoroStayFocusedContentStageSS03;
  PomodoroContentStage? get getMainPomodoroStayFocusedContentStageSS03 => _mainPomodoroStayFocusedContentStageSS03;
  void setMainPomodoroStayFocusedContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroStayFocusedContentStageSS03 = value;
    } else {
      _mainPomodoroStayFocusedContentStageSS03 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroStayFocusedContentStageSS03;
  PomodoroContentStage? get getGoPomodoroStayFocusedContentStageSS03 => _goPomodoroStayFocusedContentStageSS03;
  void setGoPomodoroStayFocusedContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroStayFocusedContentStageSS03 = value;
    } else {
      _goPomodoroStayFocusedContentStageSS03 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroStayFocusedContentStageSS03;
  PomodoroContentStage? get getDonePomodoroStayFocusedContentStageSS03 => _donePomodoroStayFocusedContentStageSS03;
  void setDonePomodoroStayFocusedContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroStayFocusedContentStageSS03 = value;
    } else {
      _donePomodoroStayFocusedContentStageSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS04
  /// -----
  PomodoroContentStage? _mainPomodoroStayFocusedContentStageSS04;
  PomodoroContentStage? get getMainPomodoroStayFocusedContentStageSS04 => _mainPomodoroStayFocusedContentStageSS04;
  void setMainPomodoroStayFocusedContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroStayFocusedContentStageSS04 = value;
    } else {
      _mainPomodoroStayFocusedContentStageSS04 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroStayFocusedContentStageSS04;
  PomodoroContentStage? get getGoPomodoroStayFocusedContentStageSS04 => _goPomodoroStayFocusedContentStageSS04;
  void setGoPomodoroStayFocusedContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroStayFocusedContentStageSS04 = value;
    } else {
      _goPomodoroStayFocusedContentStageSS04 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroStayFocusedContentStageSS04;
  PomodoroContentStage? get getDonePomodoroStayFocusedContentStageSS04 => _donePomodoroStayFocusedContentStageSS04;
  void setDonePomodoroStayFocusedContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroStayFocusedContentStageSS04 = value;
    } else {
      _donePomodoroStayFocusedContentStageSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS01
  /// -----
  PomodoroContentStage? _mainPomodoroBreakTimeContentStageSS01;
  PomodoroContentStage? get getMainPomodoroBreakTimeContentStageSS01 => _mainPomodoroBreakTimeContentStageSS01;
  void setMainPomodoroBreakTimeContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroBreakTimeContentStageSS01 = value;
    } else {
      _mainPomodoroBreakTimeContentStageSS01 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroBreakTimeContentStageSS01;
  PomodoroContentStage? get getGoPomodoroBreakTimeContentStageSS01 => _goPomodoroBreakTimeContentStageSS01;
  void setGoPomodoroBreakTimeContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroBreakTimeContentStageSS01 = value;
    } else {
      _goPomodoroBreakTimeContentStageSS01 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroBreakTimeContentStageSS01;
  PomodoroContentStage? get getDonePomodoroBreakTimeContentStageSS01 => _donePomodoroBreakTimeContentStageSS01;
  void setDonePomodoroBreakTimeContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroBreakTimeContentStageSS01 = value;
    } else {
      _donePomodoroBreakTimeContentStageSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS02
  /// -----
  PomodoroContentStage? _mainPomodoroBreakTimeContentStageSS02;
  PomodoroContentStage? get getMainPomodoroBreakTimeContentStageSS02 => _mainPomodoroBreakTimeContentStageSS02;
  void setMainPomodoroBreakTimeContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroBreakTimeContentStageSS02 = value;
    } else {
      _mainPomodoroBreakTimeContentStageSS02 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroBreakTimeContentStageSS02;
  PomodoroContentStage? get getGoPomodoroBreakTimeContentStageSS02 => _goPomodoroBreakTimeContentStageSS02;
  void setGoPomodoroBreakTimeContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroBreakTimeContentStageSS02 = value;
    } else {
      _goPomodoroBreakTimeContentStageSS02 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroBreakTimeContentStageSS02;
  PomodoroContentStage? get getDonePomodoroBreakTimeContentStageSS02 => _donePomodoroBreakTimeContentStageSS02;
  void setDonePomodoroBreakTimeContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroBreakTimeContentStageSS02 = value;
    } else {
      _donePomodoroBreakTimeContentStageSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS03
  /// -----
  PomodoroContentStage? _mainPomodoroBreakTimeContentStageSS03;
  PomodoroContentStage? get getMainPomodoroBreakTimeContentStageSS03 => _mainPomodoroBreakTimeContentStageSS03;
  void setMainPomodoroBreakTimeContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroBreakTimeContentStageSS03 = value;
    } else {
      _mainPomodoroBreakTimeContentStageSS03 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroBreakTimeContentStageSS03;
  PomodoroContentStage? get getGoPomodoroBreakTimeContentStageSS03 => _goPomodoroBreakTimeContentStageSS03;
  void setGoPomodoroBreakTimeContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroBreakTimeContentStageSS03 = value;
    } else {
      _goPomodoroBreakTimeContentStageSS03 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroBreakTimeContentStageSS03;
  PomodoroContentStage? get getDonePomodoroBreakTimeContentStageSS03 => _donePomodoroBreakTimeContentStageSS03;
  void setDonePomodoroBreakTimeContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroBreakTimeContentStageSS03 = value;
    } else {
      _donePomodoroBreakTimeContentStageSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS04
  /// -----
  PomodoroContentStage? _mainPomodoroBreakTimeContentStageSS04;
  PomodoroContentStage? get getMainPomodoroBreakTimeContentStageSS04 => _mainPomodoroBreakTimeContentStageSS04;
  void setMainPomodoroBreakTimeContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainPomodoroBreakTimeContentStageSS04 = value;
    } else {
      _mainPomodoroBreakTimeContentStageSS04 ??= value;
    }

    return;
  }

  PomodoroContentStage? _goPomodoroBreakTimeContentStageSS04;
  PomodoroContentStage? get getGoPomodoroBreakTimeContentStageSS04 => _goPomodoroBreakTimeContentStageSS04;
  void setGoPomodoroBreakTimeContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _goPomodoroBreakTimeContentStageSS04 = value;
    } else {
      _goPomodoroBreakTimeContentStageSS04 ??= value;
    }

    return;
  }

  PomodoroContentStage? _donePomodoroBreakTimeContentStageSS04;
  PomodoroContentStage? get getDonePomodoroBreakTimeContentStageSS04 => _donePomodoroBreakTimeContentStageSS04;
  void setDonePomodoroBreakTimeContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _donePomodoroBreakTimeContentStageSS04 = value;
    } else {
      _donePomodoroBreakTimeContentStageSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  FunctionalSequentialExecutionScript? _functionalSequentialExecutionScript;
  FunctionalSequentialExecutionScript? get getFunctionalSequentialExecutionScript => _functionalSequentialExecutionScript;
  void setFunctionalSequentialExecutionScript({required FunctionalSequentialExecutionScript? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionScript = value;
    } else {
      _functionalSequentialExecutionScript ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onReady() {
    if (getGoFirstStartSystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
      getGoFirstStartSystemContentStage?.getActiveStatus?.setStatusAsReady();
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onStart() {
    if (getGoFirstStartSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getGoFirstStartSystemContentStage?.getActiveStatus?.setStatusAsActive();
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    ///
    if (getActiveStatus?.isStatusAsActive() == true) {
      /// -----
      /// TODO:
      /// -----
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.onUpdateBaseOnContentStage();

      /// -----
      /// TODO:
      /// -----
      onExecutionStepBaseOnScript();

      ///
      if (getMainFirstStartSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainFirstStartSystemContentStage);
      }
      if (getGoFirstStartSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoFirstStartSystemContentStage);
      }
      if (getDoneFirstStartSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDoneFirstStartSystemContentStage);
      }

      ///
      if (getMainLastFinishSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainLastFinishSystemContentStage);
      }
      if (getGoLastFinishSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoLastFinishSystemContentStage);
      }
      if (getDoneLastFinishSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDoneLastFinishSystemContentStage);
      }

      ///
      /// TODO:
      ///
      if (getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage);
      }
      if (getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage);
      }
      if (getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage);
      }
      if (getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage);
      }
      if (getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage);
      }
      if (getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage);
      }
      if (getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage);
      }
      if (getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage);
      }
      if (getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage);
      }

      ///
      /// TODO:
      ///

      ///
      if (getMainPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroStayFocusedContentStageSS01);
      }
      if (getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroStayFocusedContentStageSS01);
      }
      if (getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroStayFocusedContentStageSS01);
      }

      ///
      if (getMainPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroStayFocusedContentStageSS02);
      }
      if (getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroStayFocusedContentStageSS02);
      }
      if (getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroStayFocusedContentStageSS02);
      }

      ///
      if (getMainPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroStayFocusedContentStageSS03);
      }
      if (getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroStayFocusedContentStageSS03);
      }
      if (getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroStayFocusedContentStageSS03);
      }

      ///
      if (getMainPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroStayFocusedContentStageSS04);
      }
      if (getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroStayFocusedContentStageSS04);
      }
      if (getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroStayFocusedContentStageSS04);
      }

      ///
      /// TODO:
      ///

      ///
      if (getMainPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroBreakTimeContentStageSS01);
      }
      if (getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroBreakTimeContentStageSS01);
      }
      if (getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroBreakTimeContentStageSS01);
      }

      ///
      if (getMainPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroBreakTimeContentStageSS02);
      }
      if (getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroBreakTimeContentStageSS02);
      }
      if (getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroBreakTimeContentStageSS02);
      }

      ///
      if (getMainPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroBreakTimeContentStageSS03);
      }
      if (getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroBreakTimeContentStageSS03);
      }
      if (getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroBreakTimeContentStageSS03);
      }

      ///
      if (getMainPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getMainPomodoroBreakTimeContentStageSS04);
      }
      if (getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoPomodoroBreakTimeContentStageSS04);
      }
      if (getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDonePomodoroBreakTimeContentStageSS04);
      }

      return;
    }
  }

  onExecutionStepBaseOnScript() {
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: Chuyển Trạng Thái Từ [READY] => [ACTIVE]
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: CONTENT_STAGE
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN HỆ THỐNG
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentItemSection]
    /// -----

    if (getMainFirstStartSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getMainFirstStartSystemContentStage?.getActiveStatus?.setStatusAsActive(); // ok
    }
    if (getGoFirstStartSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getGoFirstStartSystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getDoneFirstStartSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getDoneFirstStartSystemContentStage?.getActiveStatus?.setStatusAsActive(); // ok
    }

    ///

    if (getMainLastFinishSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getMainLastFinishSystemContentStage?.getActiveStatus?.setStatusAsActive(); // ok
    }
    if (getGoLastFinishSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getGoLastFinishSystemContentStage?.getActiveStatus?.setStatusAsActive(); // ok
    }
    if (getDoneLastFinishSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getDoneLastFinishSystemContentStage?.getActiveStatus?.setStatusAsActive(); // ok
    }

    /// -----
    /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentStage]
    /// -----

    if (getMainPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsActive();
    }

    ///
    if (getMainPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsActive();
    }

    ///
    if (getMainPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsActive();
    }

    ///
    if (getMainPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsActive();
    }

    /// -----
    /// TODO: Bridge From - To [ContentStage]
    /// -----

    if (getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.setStatusAsActive();
    }
    if (getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
      getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.setStatusAsActive();
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN NỘI DUNG
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: Pomodoro StayFocused (MAIN DETAIL & GO & DONE) [ContentStage]
    /// -----

    if (getMainPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsActive();
    }

    ///
    if (getMainPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsActive();
    }

    ///
    if (getMainPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsActive();
    }

    ///
    if (getMainPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsReady() == true) {
      getMainPomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsActive();
    }
    if (getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsReady() == true) {
      getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsActive();
    }
    if (getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsReady() == true) {
      getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsActive();
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: Chuyển Trạng Thái Từ STEP-1 - [PERFORM_COMPLETED] => STEP-2 - [ACTIVE] ... => Tự Động Chuyển (Các Step Thuộc Hệ Thống)
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    ///
    ///
    /// TODO: GIAI ĐOẠN BẮT ĐẦU
    ///
    ///

    /// TODO: getGoFirstStartSystemContentStage => getMainFirstStartSystemContentStage
    if (getGoFirstStartSystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainFirstStartSystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainFirstStartSystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getGoFirstStartSystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainFirstStartSystemContentStage => getDoneFirstStartSystemContentStage
    if (getMainFirstStartSystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDoneFirstStartSystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getDoneFirstStartSystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getMainFirstStartSystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDoneFirstStartSystemContentStage => getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage
    if (getDoneFirstStartSystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDoneFirstStartSystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    ///
    ///
    /// TODO: GIAI ĐOẠN NỘI DUNG
    ///
    ///

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage => getGoPomodoroStayFocusedContentStageSS01
    if (getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO STAY FOCUSED SS01
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroStayFocusedContentStageSS01 => getMainPomodoroStayFocusedContentStageSS01
    if (getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroStayFocusedContentStageSS01 => getDonePomodoroStayFocusedContentStageSS01
    if (getMainPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroStayFocusedContentStageSS01 => getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage
    if (getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage => getGoPomodoroBreakTimeContentStageSS01
    if (getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO BREAK TIME SS01
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroBreakTimeContentStageSS01 => getMainPomodoroBreakTimeContentStageSS01
    if (getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroBreakTimeContentStageSS01 => getDonePomodoroBreakTimeContentStageSS01
    if (getMainPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroBreakTimeContentStageSS01 => getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage
    if (getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage => getGoPomodoroStayFocusedContentStageSS02
    if (getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO STAY FOCUSED SS02
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroStayFocusedContentStageSS02 => getMainPomodoroStayFocusedContentStageSS02
    if (getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroStayFocusedContentStageSS02 => getDonePomodoroStayFocusedContentStageSS02
    if (getMainPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroStayFocusedContentStageSS02 => getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage
    if (getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage => getGoPomodoroBreakTimeContentStageSS02
    if (getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO BREAK TIME SS02
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroBreakTimeContentStageSS02 => getMainPomodoroBreakTimeContentStageSS02
    if (getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroBreakTimeContentStageSS02 => getDonePomodoroBreakTimeContentStageSS02
    if (getMainPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroBreakTimeContentStageSS02 => getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage
    if (getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage => getGoPomodoroStayFocusedContentStageSS03
    if (getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO STAY FOCUSED SS03
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroStayFocusedContentStageSS03 => getMainPomodoroStayFocusedContentStageSS03
    if (getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroStayFocusedContentStageSS03 => getDonePomodoroStayFocusedContentStageSS03
    if (getMainPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroStayFocusedContentStageSS03 => getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage
    if (getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage => getGoPomodoroBreakTimeContentStageSS03
    if (getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO BREAK TIME SS03
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroBreakTimeContentStageSS03 => getMainPomodoroBreakTimeContentStageSS03
    if (getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroBreakTimeContentStageSS03 => getDonePomodoroBreakTimeContentStageSS03
    if (getMainPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroBreakTimeContentStageSS03 => getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage
    if (getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage => getGoPomodoroStayFocusedContentStageSS04
    if (getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO STAY FOCUSED SS04
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroStayFocusedContentStageSS04 => getMainPomodoroStayFocusedContentStageSS04
    if (getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroStayFocusedContentStageSS04 => getDonePomodoroStayFocusedContentStageSS04
    if (getMainPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroStayFocusedContentStageSS04 => getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage
    if (getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage => getGoPomodoroBreakTimeContentStageSS04
    if (getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: POMODORO BREAK TIME SS04
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getGoPomodoroBreakTimeContentStageSS04 => getMainPomodoroBreakTimeContentStageSS04
    if (getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainPomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsReady(); // ok
        getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainPomodoroBreakTimeContentStageSS04 => getDonePomodoroBreakTimeContentStageSS04
    if (getMainPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsDefault() == true) {
        getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsReady(); // ok
        getMainPomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getDonePomodoroBreakTimeContentStageSS04 => getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage
    if (getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: BRIDGE
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- |

    /// TODO: getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage => getGoLastFinishSystemContentStage
    if (getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getGoLastFinishSystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getGoLastFinishSystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    ///
    ///
    /// TODO: GIAI ĐOẠN KẾT THÚC
    ///
    ///

    /// TODO: getGoLastFinishSystemContentStage => getMainLastFinishSystemContentStage
    if (getGoLastFinishSystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getMainLastFinishSystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getMainLastFinishSystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getGoLastFinishSystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// TODO: getMainLastFinishSystemContentStage => getDoneLastFinishSystemContentStage
    if (getMainLastFinishSystemContentStage?.getActiveStatus?.isStatusAsPerformCompleted() == true) {
      if (getDoneLastFinishSystemContentStage?.getActiveStatus?.isStatusAsDefault() == true) {
        getDoneLastFinishSystemContentStage?.getActiveStatus?.setStatusAsReady(); // ok
        getMainLastFinishSystemContentStage?.getActiveStatus?.setStatusAsClosed();
      }
    }

    /// -----
    /// TODO: Chuyển Trạng Thái Từ STEP-1 - [ACTIVE] => STEP-1 [PERFORM_COMPLETED] => STEP-2 - [READY] ... => Cấu Hình Tại Phần Triển Khai Chi Tiết Của Kịch Bản
    /// -----
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

      setActiveStatus(value: ContentItemSectionActiveStatus.asActive(), isPriorityOverride: true);

      setFunctionalSequentialExecutionController(value: FunctionalSequentialExecutionController(), isPriorityOverride: true);

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: CONTENT ITEM SECTION
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentItemSection]
      /// -----

      setMainFirstStartContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setGoFirstStartContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setDoneFirstStartContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      ///
      setMainLastFinishContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setGoLastFinishContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setDoneLastFinishContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentItemSection]
      /// -----
      setMainBreakTimeContentItemSectionSS01(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setGoBreakTimeContentItemSectionSS01(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setDoneBreakTimeContentItemSectionSS01(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      ///
      setMainBreakTimeContentItemSectionSS02(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setGoBreakTimeContentItemSectionSS02(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setDoneBreakTimeContentItemSectionSS02(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      ///
      setMainBreakTimeContentItemSectionSS03(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setGoBreakTimeContentItemSectionSS03(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setDoneBreakTimeContentItemSectionSS03(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      ///
      setMainBreakTimeContentItemSectionSS04(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setGoBreakTimeContentItemSectionSS04(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setDoneBreakTimeContentItemSectionSS04(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: Bridge From - To [ContentItemSection]
      /// -----

      setBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      setContentItemSectionSS01(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS02(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS03(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS04(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS05(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS06(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS07(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS08(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS09(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setContentItemSectionSS10(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: Pomodoro StayFocused (GO & DONE) [ContentItemSection]
      /// -----

      setGoStayFocusedContentItemSectionSS01(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setMainStayFocusedContentItemSectionSS01(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setDoneStayFocusedContentItemSectionSS01(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );

      ///
      setGoStayFocusedContentItemSectionSS02(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setMainStayFocusedContentItemSectionSS02(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setDoneStayFocusedContentItemSectionSS02(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );

      ///
      setGoStayFocusedContentItemSectionSS03(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setMainStayFocusedContentItemSectionSS03(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setDoneStayFocusedContentItemSectionSS03(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );

      ///
      setGoStayFocusedContentItemSectionSS04(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setMainStayFocusedContentItemSectionSS04(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );
      setDoneStayFocusedContentItemSectionSS04(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: CONTENT STAGE
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN HỆ THỐNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      setMainFirstStartSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setGoFirstStartSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setDoneFirstStartSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);

      setMainLastFinishSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setGoLastFinishSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setDoneLastFinishSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);

      /// -----
      /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      setMainPomodoroBreakTimeContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);

      setMainPomodoroBreakTimeContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);

      setMainPomodoroBreakTimeContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);

      setMainPomodoroBreakTimeContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);

      /// -----
      /// TODO: Bridge From - To [ContentStage]
      /// -----

      setBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: Pomodoro StayFocused (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      setMainPomodoroStayFocusedContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);

      setMainPomodoroStayFocusedContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);

      setMainPomodoroStayFocusedContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);

      setMainPomodoroStayFocusedContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: BINDING CONTENT_STAGE
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN HỆ THỐNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getFirstStartSystemItem?.setSystemContentStage(value: getMainFirstStartSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getGoFirstStartSystemItem?.setSystemContentStage(value: getGoFirstStartSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getDoneFirstStartSystemItem?.setSystemContentStage(value: getDoneFirstStartSystemContentStage, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getLastFinishSystemItem?.setSystemContentStage(value: getMainLastFinishSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getGoLastFinishSystemItem?.setSystemContentStage(value: getGoLastFinishSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getDoneLastFinishSystemItem?.setSystemContentStage(value: getDoneLastFinishSystemContentStage, isPriorityOverride: true);

      /// -----
      /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS01?.setPomodoroContentStage(value: getMainPomodoroBreakTimeContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS01?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS01?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS01, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS02?.setPomodoroContentStage(value: getMainPomodoroBreakTimeContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS02?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS02?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS02, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS03?.setPomodoroContentStage(value: getMainPomodoroBreakTimeContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS03?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS03?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS03, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS04?.setPomodoroContentStage(value: getMainPomodoroBreakTimeContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS04?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getBreakTimeSS04?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS04, isPriorityOverride: true);

      /// -----
      /// TODO: Bridge From - To [ContentStage]
      /// -----

      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01?.setSystemContentStage(value: getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01?.setSystemContentStage(value: getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02?.setSystemContentStage(value: getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02?.setSystemContentStage(value: getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03?.setSystemContentStage(value: getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03?.setSystemContentStage(value: getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04?.setSystemContentStage(value: getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04?.setSystemContentStage(value: getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItem?.setSystemContentStage(value: getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage, isPriorityOverride: true);

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: Pomodoro StayFocused (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS01?.setPomodoroContentStage(value: getMainPomodoroStayFocusedContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS01?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS01?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS01, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS02?.setPomodoroContentStage(value: getMainPomodoroStayFocusedContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS02?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS02?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS02, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS03?.setPomodoroContentStage(value: getMainPomodoroStayFocusedContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS03?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS03?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS03, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS04?.setPomodoroContentStage(value: getMainPomodoroStayFocusedContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS04?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getPomodoroCycleTimer?.getStayFocusedSS04?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS04, isPriorityOverride: true);

      ///
      /// TODO: Cài Đặt Kịch Bản
      ///
      setFunctionalSequentialExecutionScript(
        value: TopicCScript(systemStateManagement: getSystemStateManagement, sequentialExecutionController: getSequentialExecutionController, contentItemSequentialExecution: this, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

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
      await getFunctionalSequentialExecutionController?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: CONTENT ITEM SECTION
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentItemSection]
      /// -----

      await getMainFirstStartContentItemSection?.onSetupRoot();
      await getGoFirstStartContentItemSection?.onSetupRoot();
      await getDoneFirstStartContentItemSection?.onSetupRoot();

      await getMainLastFinishContentItemSection?.onSetupRoot();
      await getGoLastFinishContentItemSection?.onSetupRoot();
      await getDoneLastFinishContentItemSection?.onSetupRoot();

      /// -----
      /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentItemSection]
      /// -----

      await getMainBreakTimeContentItemSectionSS01?.onSetupRoot();
      await getGoBreakTimeContentItemSectionSS01?.onSetupRoot();
      await getDoneBreakTimeContentItemSectionSS01?.onSetupRoot();

      await getMainBreakTimeContentItemSectionSS02?.onSetupRoot();
      await getGoBreakTimeContentItemSectionSS02?.onSetupRoot();
      await getDoneBreakTimeContentItemSectionSS02?.onSetupRoot();

      await getMainBreakTimeContentItemSectionSS03?.onSetupRoot();
      await getGoBreakTimeContentItemSectionSS03?.onSetupRoot();
      await getDoneBreakTimeContentItemSectionSS03?.onSetupRoot();

      await getMainBreakTimeContentItemSectionSS04?.onSetupRoot();
      await getGoBreakTimeContentItemSectionSS04?.onSetupRoot();
      await getDoneBreakTimeContentItemSectionSS04?.onSetupRoot();

      /// -----
      /// TODO: Bridge From - To [ContentItemSection]
      /// -----

      await getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |
      await getContentItemSectionSS01?.onSetupRoot();
      await getContentItemSectionSS02?.onSetupRoot();
      await getContentItemSectionSS03?.onSetupRoot();
      await getContentItemSectionSS04?.onSetupRoot();
      await getContentItemSectionSS05?.onSetupRoot();
      await getContentItemSectionSS06?.onSetupRoot();
      await getContentItemSectionSS07?.onSetupRoot();
      await getContentItemSectionSS08?.onSetupRoot();
      await getContentItemSectionSS09?.onSetupRoot();
      await getContentItemSectionSS10?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: Pomodoro StayFocused (GO & DONE) [ContentItemSection]
      /// -----

      await getGoStayFocusedContentItemSectionSS01?.onSetupRoot();
      await getMainStayFocusedContentItemSectionSS01?.onSetupRoot();
      await getDoneStayFocusedContentItemSectionSS01?.onSetupRoot();

      await getGoStayFocusedContentItemSectionSS02?.onSetupRoot();
      await getMainStayFocusedContentItemSectionSS02?.onSetupRoot();
      await getDoneStayFocusedContentItemSectionSS02?.onSetupRoot();

      await getGoStayFocusedContentItemSectionSS03?.onSetupRoot();
      await getMainStayFocusedContentItemSectionSS03?.onSetupRoot();
      await getDoneStayFocusedContentItemSectionSS03?.onSetupRoot();

      await getGoStayFocusedContentItemSectionSS04?.onSetupRoot();
      await getMainStayFocusedContentItemSectionSS04?.onSetupRoot();
      await getDoneStayFocusedContentItemSectionSS04?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: CONTENT_STAGE
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN HỆ THỐNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      await getMainFirstStartSystemContentStage?.onSetupRoot();
      await getGoFirstStartSystemContentStage?.onSetupRoot();
      await getDoneFirstStartSystemContentStage?.onSetupRoot();

      await getMainLastFinishSystemContentStage?.onSetupRoot();
      await getGoLastFinishSystemContentStage?.onSetupRoot();
      await getDoneLastFinishSystemContentStage?.onSetupRoot();

      /// -----
      /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      await getMainPomodoroBreakTimeContentStageSS01?.onSetupRoot();
      await getGoPomodoroBreakTimeContentStageSS01?.onSetupRoot();
      await getDonePomodoroBreakTimeContentStageSS01?.onSetupRoot();

      await getMainPomodoroBreakTimeContentStageSS02?.onSetupRoot();
      await getGoPomodoroBreakTimeContentStageSS02?.onSetupRoot();
      await getDonePomodoroBreakTimeContentStageSS02?.onSetupRoot();

      await getMainPomodoroBreakTimeContentStageSS03?.onSetupRoot();
      await getGoPomodoroBreakTimeContentStageSS03?.onSetupRoot();
      await getDonePomodoroBreakTimeContentStageSS03?.onSetupRoot();

      await getMainPomodoroBreakTimeContentStageSS04?.onSetupRoot();
      await getGoPomodoroBreakTimeContentStageSS04?.onSetupRoot();
      await getDonePomodoroBreakTimeContentStageSS04?.onSetupRoot();

      /// -----
      /// TODO: Bridge From - To [ContentStage]
      /// -----

      await getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.onSetupRoot();
      await getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: Pomodoro StayFocused (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      await getMainPomodoroStayFocusedContentStageSS01?.onSetupRoot();
      await getGoPomodoroStayFocusedContentStageSS01?.onSetupRoot();
      await getDonePomodoroStayFocusedContentStageSS01?.onSetupRoot();

      await getMainPomodoroStayFocusedContentStageSS02?.onSetupRoot();
      await getGoPomodoroStayFocusedContentStageSS02?.onSetupRoot();
      await getDonePomodoroStayFocusedContentStageSS02?.onSetupRoot();

      await getMainPomodoroStayFocusedContentStageSS03?.onSetupRoot();
      await getGoPomodoroStayFocusedContentStageSS03?.onSetupRoot();
      await getDonePomodoroStayFocusedContentStageSS03?.onSetupRoot();

      await getMainPomodoroStayFocusedContentStageSS04?.onSetupRoot();
      await getGoPomodoroStayFocusedContentStageSS04?.onSetupRoot();
      await getDonePomodoroStayFocusedContentStageSS04?.onSetupRoot();

      /// -----
      /// TODO: Kịch Bản
      /// -----
      await getFunctionalSequentialExecutionScript?.onSetupRoot();

      ///
      ///
      ///
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
      await getFunctionalSequentialExecutionController?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: CONTENT ITEM SECTION
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentItemSection]
      /// -----

      await getMainFirstStartContentItemSection?.onInitRoot();
      await getGoFirstStartContentItemSection?.onInitRoot();
      await getDoneFirstStartContentItemSection?.onInitRoot();

      await getMainLastFinishContentItemSection?.onInitRoot();
      await getGoLastFinishContentItemSection?.onInitRoot();
      await getDoneLastFinishContentItemSection?.onInitRoot();

      /// -----
      /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentItemSection]
      /// -----

      await getMainBreakTimeContentItemSectionSS01?.onInitRoot();
      await getGoBreakTimeContentItemSectionSS01?.onInitRoot();
      await getDoneBreakTimeContentItemSectionSS01?.onInitRoot();

      await getMainBreakTimeContentItemSectionSS02?.onInitRoot();
      await getGoBreakTimeContentItemSectionSS02?.onInitRoot();
      await getDoneBreakTimeContentItemSectionSS02?.onInitRoot();

      await getMainBreakTimeContentItemSectionSS03?.onInitRoot();
      await getGoBreakTimeContentItemSectionSS03?.onInitRoot();
      await getDoneBreakTimeContentItemSectionSS03?.onInitRoot();

      await getMainBreakTimeContentItemSectionSS04?.onInitRoot();
      await getGoBreakTimeContentItemSectionSS04?.onInitRoot();
      await getDoneBreakTimeContentItemSectionSS04?.onInitRoot();

      /// -----
      /// TODO: Bridge From - To [ContentItemSection]
      /// -----

      await getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |
      await getContentItemSectionSS01?.onInitRoot();
      await getContentItemSectionSS02?.onInitRoot();
      await getContentItemSectionSS03?.onInitRoot();
      await getContentItemSectionSS04?.onInitRoot();
      await getContentItemSectionSS05?.onInitRoot();
      await getContentItemSectionSS06?.onInitRoot();
      await getContentItemSectionSS07?.onInitRoot();
      await getContentItemSectionSS08?.onInitRoot();
      await getContentItemSectionSS09?.onInitRoot();
      await getContentItemSectionSS10?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: Pomodoro StayFocused (GO & DONE) [ContentItemSection]
      /// -----

      await getGoStayFocusedContentItemSectionSS01?.onInitRoot();
      await getMainStayFocusedContentItemSectionSS01?.onInitRoot();
      await getDoneStayFocusedContentItemSectionSS01?.onInitRoot();

      await getGoStayFocusedContentItemSectionSS02?.onInitRoot();
      await getMainStayFocusedContentItemSectionSS02?.onInitRoot();
      await getDoneStayFocusedContentItemSectionSS02?.onInitRoot();

      await getGoStayFocusedContentItemSectionSS03?.onInitRoot();
      await getMainStayFocusedContentItemSectionSS03?.onInitRoot();
      await getDoneStayFocusedContentItemSectionSS03?.onInitRoot();

      await getGoStayFocusedContentItemSectionSS04?.onInitRoot();
      await getMainStayFocusedContentItemSectionSS04?.onInitRoot();
      await getDoneStayFocusedContentItemSectionSS04?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: CONTENT_STAGE
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN HỆ THỐNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: SystemItem (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      await getMainFirstStartSystemContentStage?.onInitRoot();
      await getGoFirstStartSystemContentStage?.onInitRoot();
      await getDoneFirstStartSystemContentStage?.onInitRoot();

      await getMainLastFinishSystemContentStage?.onInitRoot();
      await getGoLastFinishSystemContentStage?.onInitRoot();
      await getDoneLastFinishSystemContentStage?.onInitRoot();

      /// -----
      /// TODO: BreakTime (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      await getMainPomodoroBreakTimeContentStageSS01?.onInitRoot();
      await getGoPomodoroBreakTimeContentStageSS01?.onInitRoot();
      await getDonePomodoroBreakTimeContentStageSS01?.onInitRoot();

      await getMainPomodoroBreakTimeContentStageSS02?.onInitRoot();
      await getGoPomodoroBreakTimeContentStageSS02?.onInitRoot();
      await getDonePomodoroBreakTimeContentStageSS02?.onInitRoot();

      await getMainPomodoroBreakTimeContentStageSS03?.onInitRoot();
      await getGoPomodoroBreakTimeContentStageSS03?.onInitRoot();
      await getDonePomodoroBreakTimeContentStageSS03?.onInitRoot();

      await getMainPomodoroBreakTimeContentStageSS04?.onInitRoot();
      await getGoPomodoroBreakTimeContentStageSS04?.onInitRoot();
      await getDonePomodoroBreakTimeContentStageSS04?.onInitRoot();

      /// -----
      /// TODO: Bridge From - To [ContentStage]
      /// -----

      await getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.onInitRoot();
      await getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: NHÓM CONTENT_STAGE THUỘC PHẦN NỘI DUNG
      /// ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO: Pomodoro StayFocused (MAIN DETAIL & GO & DONE) [ContentStage]
      /// -----

      await getMainPomodoroStayFocusedContentStageSS01?.onInitRoot();
      await getGoPomodoroStayFocusedContentStageSS01?.onInitRoot();
      await getDonePomodoroStayFocusedContentStageSS01?.onInitRoot();

      await getMainPomodoroStayFocusedContentStageSS02?.onInitRoot();
      await getGoPomodoroStayFocusedContentStageSS02?.onInitRoot();
      await getDonePomodoroStayFocusedContentStageSS02?.onInitRoot();

      await getMainPomodoroStayFocusedContentStageSS03?.onInitRoot();
      await getGoPomodoroStayFocusedContentStageSS03?.onInitRoot();
      await getDonePomodoroStayFocusedContentStageSS03?.onInitRoot();

      await getMainPomodoroStayFocusedContentStageSS04?.onInitRoot();
      await getGoPomodoroStayFocusedContentStageSS04?.onInitRoot();
      await getDonePomodoroStayFocusedContentStageSS04?.onInitRoot();

      /// -----
      /// TODO: Kịch Bản
      /// -----
      await getFunctionalSequentialExecutionScript?.onInitRoot();
      await getFunctionalSequentialExecutionScript?.onGenerateScript();

      return;
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
