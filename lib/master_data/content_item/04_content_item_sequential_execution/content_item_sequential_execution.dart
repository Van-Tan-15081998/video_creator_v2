import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/content_item_section.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/models/content_item_section_active_status.dart';
import 'package:frame_creator_v2/master_data/content_item/03_pomodoro_content_stage/pomodoro_content_stage.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/functional_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_a_script.dart';
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
  /// TODO: First Starting Section
  /// TODO: Section Mở Đầu Của Video
  /// -----
  ContentItemSection? _firstStartingContentItemSection;
  ContentItemSection? get getFirstStartingContentItemSection => _firstStartingContentItemSection;
  void setFirstStartingContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _firstStartingContentItemSection = value;
    } else {
      _firstStartingContentItemSection ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Last Ending Section
  /// TODO: Section Kết Thúc Của Video
  /// -----
  ContentItemSection? _lastEndingContentItemSection;
  ContentItemSection? get getLastEndingContentItemSection => _lastEndingContentItemSection;
  void setLastEndingContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _lastEndingContentItemSection = value;
    } else {
      _lastEndingContentItemSection ??= value;
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
  ContentItemSection? _breakTimeContentItemSectionSS01;
  ContentItemSection? get getBreakTimeContentItemSectionSS01 => _breakTimeContentItemSectionSS01;
  void setBreakTimeContentItemSectionSS01({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeContentItemSectionSS01 = value;
    } else {
      _breakTimeContentItemSectionSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: BreakTime Section SS02
  /// -----
  ContentItemSection? _breakTimeContentItemSectionSS02;
  ContentItemSection? get getBreakTimeContentItemSectionSS02 => _breakTimeContentItemSectionSS02;
  void setBreakTimeContentItemSectionSS02({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeContentItemSectionSS02 = value;
    } else {
      _breakTimeContentItemSectionSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: BreakTime Section SS03
  /// -----
  ContentItemSection? _breakTimeContentItemSectionSS03;
  ContentItemSection? get getBreakTimeContentItemSectionSS03 => _breakTimeContentItemSectionSS03;
  void setBreakTimeContentItemSectionSS03({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeContentItemSectionSS03 = value;
    } else {
      _breakTimeContentItemSectionSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: BreakTime Section SS04
  /// -----
  ContentItemSection? _breakTimeContentItemSectionSS04;
  ContentItemSection? get getBreakTimeContentItemSectionSS04 => _breakTimeContentItemSectionSS04;
  void setBreakTimeContentItemSectionSS04({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeContentItemSectionSS04 = value;
    } else {
      _breakTimeContentItemSectionSS04 ??= value;
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

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS01
  /// -----
  PomodoroContentStage? _pomodoroStayFocusedContentStageSS01;
  PomodoroContentStage? get getPomodoroStayFocusedContentStageSS01 => _pomodoroStayFocusedContentStageSS01;
  void setPomodoroStayFocusedContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedContentStageSS01 = value;
    } else {
      _pomodoroStayFocusedContentStageSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS02
  /// -----
  PomodoroContentStage? _pomodoroStayFocusedContentStageSS02;
  PomodoroContentStage? get getPomodoroStayFocusedContentStageSS02 => _pomodoroStayFocusedContentStageSS02;
  void setPomodoroStayFocusedContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedContentStageSS02 = value;
    } else {
      _pomodoroStayFocusedContentStageSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS03
  /// -----
  PomodoroContentStage? _pomodoroStayFocusedContentStageSS03;
  PomodoroContentStage? get getPomodoroStayFocusedContentStageSS03 => _pomodoroStayFocusedContentStageSS03;
  void setPomodoroStayFocusedContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedContentStageSS03 = value;
    } else {
      _pomodoroStayFocusedContentStageSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroStayFocusedContentStage SS04
  /// -----
  PomodoroContentStage? _pomodoroStayFocusedContentStageSS04;
  PomodoroContentStage? get getPomodoroStayFocusedContentStageSS04 => _pomodoroStayFocusedContentStageSS04;
  void setPomodoroStayFocusedContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedContentStageSS04 = value;
    } else {
      _pomodoroStayFocusedContentStageSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS01
  /// -----
  PomodoroContentStage? _pomodoroBreakTimeContentStageSS01;
  PomodoroContentStage? get getPomodoroBreakTimeContentStageSS01 => _pomodoroBreakTimeContentStageSS01;
  void setPomodoroBreakTimeContentStageSS01({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeContentStageSS01 = value;
    } else {
      _pomodoroBreakTimeContentStageSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS02
  /// -----
  PomodoroContentStage? _pomodoroBreakTimeContentStageSS02;
  PomodoroContentStage? get getPomodoroBreakTimeContentStageSS02 => _pomodoroBreakTimeContentStageSS02;
  void setPomodoroBreakTimeContentStageSS02({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeContentStageSS02 = value;
    } else {
      _pomodoroBreakTimeContentStageSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS03
  /// -----
  PomodoroContentStage? _pomodoroBreakTimeContentStageSS03;
  PomodoroContentStage? get getPomodoroBreakTimeContentStageSS03 => _pomodoroBreakTimeContentStageSS03;
  void setPomodoroBreakTimeContentStageSS03({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeContentStageSS03 = value;
    } else {
      _pomodoroBreakTimeContentStageSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: PomodoroBreakTimeContentStage SS04
  /// -----
  PomodoroContentStage? _pomodoroBreakTimeContentStageSS04;
  PomodoroContentStage? get getPomodoroBreakTimeContentStageSS04 => _pomodoroBreakTimeContentStageSS04;
  void setPomodoroBreakTimeContentStageSS04({required PomodoroContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeContentStageSS04 = value;
    } else {
      _pomodoroBreakTimeContentStageSS04 ??= value;
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
  void onUpdate() {
    ///
    if (getActiveStatus?.isStatusAsActive() == true) {
      // getContentItemSectionSS01?.onUpdate();
      // getContentItemSectionSS02?.onUpdate();
      // getContentItemSectionSS03?.onUpdate();
      // getContentItemSectionSS04?.onUpdate();
      // getContentItemSectionSS05?.onUpdate();
      // getContentItemSectionSS06?.onUpdate();
      // getContentItemSectionSS07?.onUpdate();
      // getContentItemSectionSS08?.onUpdate();
      // getContentItemSectionSS09?.onUpdate();
      // getContentItemSectionSS10?.onUpdate();

      ///
      /// TODO: Chỉ Chạy Thực Thi Khi [Pomodoro] Trong Giai Đoạn [StayFocused]
      ///

      ///
      if (getPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroStayFocusedContentStageSS01);
      }
      if (getPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroStayFocusedContentStageSS02);
      }
      if (getPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroStayFocusedContentStageSS03);
      }
      if (getPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroStayFocusedContentStageSS04);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroBreakTimeContentStageSS01);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroBreakTimeContentStageSS02);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroBreakTimeContentStageSS03);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(pomodoroContentStage: getPomodoroBreakTimeContentStageSS04);
      }

      // getFunctionalSequentialExecutionController?.onUpdate();
    }
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

      /// -----
      /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
      /// -----
      setFirstStartingContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setLastEndingContentItemSection(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      setBreakTimeContentItemSectionSS01(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBreakTimeContentItemSectionSS02(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBreakTimeContentItemSectionSS03(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setBreakTimeContentItemSectionSS04(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// -----
      setContentItemSectionSS01(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS02(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS03(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS04(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS05(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS06(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS07(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS08(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS09(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );
      setContentItemSectionSS10(
        value: ContentItemSection(sequentialExecutionController: getSequentialExecutionController, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
        isPriorityOverride: true,
      );

      setPomodoroStayFocusedContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setPomodoroStayFocusedContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setPomodoroStayFocusedContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setPomodoroStayFocusedContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);

      setPomodoroBreakTimeContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setPomodoroBreakTimeContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setPomodoroBreakTimeContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setPomodoroBreakTimeContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS04, isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS04, isPriorityOverride: true);

      ///
      /// TODO: Cài Đặt Kịch Bản
      ///
      setFunctionalSequentialExecutionScript(
        value: TopicAScript(sequentialExecutionController: getSequentialExecutionController, contentItemSequentialExecution: this, functionalSequentialExecutionController: getFunctionalSequentialExecutionController),
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

      /// -----
      /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
      /// -----
      await getFirstStartingContentItemSection?.onSetupRoot();
      await getLastEndingContentItemSection?.onSetupRoot();

      await getBreakTimeContentItemSectionSS01?.onSetupRoot();
      await getBreakTimeContentItemSectionSS02?.onSetupRoot();
      await getBreakTimeContentItemSectionSS03?.onSetupRoot();
      await getBreakTimeContentItemSectionSS04?.onSetupRoot();

      /// -----
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// -----
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

      await getPomodoroStayFocusedContentStageSS01?.onSetupRoot();
      await getPomodoroStayFocusedContentStageSS02?.onSetupRoot();
      await getPomodoroStayFocusedContentStageSS03?.onSetupRoot();
      await getPomodoroStayFocusedContentStageSS04?.onSetupRoot();

      await getPomodoroBreakTimeContentStageSS01?.onSetupRoot();
      await getPomodoroBreakTimeContentStageSS02?.onSetupRoot();
      await getPomodoroBreakTimeContentStageSS03?.onSetupRoot();
      await getPomodoroBreakTimeContentStageSS04?.onSetupRoot();

      await getFunctionalSequentialExecutionScript?.onSetupRoot();
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

      /// -----
      /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
      /// -----
      await getFirstStartingContentItemSection?.onInitRoot();
      await getLastEndingContentItemSection?.onInitRoot();

      await getBreakTimeContentItemSectionSS01?.onInitRoot();
      await getBreakTimeContentItemSectionSS02?.onInitRoot();
      await getBreakTimeContentItemSectionSS03?.onInitRoot();
      await getBreakTimeContentItemSectionSS04?.onInitRoot();

      /// -----
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// -----
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

      await getPomodoroStayFocusedContentStageSS01?.onInitRoot();
      await getPomodoroStayFocusedContentStageSS02?.onInitRoot();
      await getPomodoroStayFocusedContentStageSS03?.onInitRoot();
      await getPomodoroStayFocusedContentStageSS04?.onInitRoot();

      await getPomodoroBreakTimeContentStageSS01?.onInitRoot();
      await getPomodoroBreakTimeContentStageSS02?.onInitRoot();
      await getPomodoroBreakTimeContentStageSS03?.onInitRoot();
      await getPomodoroBreakTimeContentStageSS04?.onInitRoot();

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
