import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/content_item_section.dart';
import 'package:frame_creator_v2/master_data/content_item/02_content_item_section/models/content_item_section_active_status.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/abstract/content_stage.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/pomodoro_content_stage.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/system_content_stage.dart';
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
  /// TODO: First Start Section
  /// TODO: Section Mở Đầu Của Video
  /// -----
  ContentItemSection? _firstStartContentItemSection;
  ContentItemSection? get getFirstStartContentItemSection => _firstStartContentItemSection;
  void setFirstStartContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _firstStartContentItemSection = value;
    } else {
      _firstStartContentItemSection ??= value;
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
  ContentItemSection? _lastFinishContentItemSection;
  ContentItemSection? get getLastFinishContentItemSection => _lastFinishContentItemSection;
  void setLastFinishContentItemSection({required ContentItemSection? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _lastFinishContentItemSection = value;
    } else {
      _lastFinishContentItemSection ??= value;
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
  SystemContentStage? _firstStartSystemContentStage;
  SystemContentStage? get getFirstStartSystemContentStage => _firstStartSystemContentStage;
  void setFirstStartSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _firstStartSystemContentStage = value;
    } else {
      _firstStartSystemContentStage ??= value;
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
  SystemContentStage? _lastFinishSystemContentStage;
  SystemContentStage? get getLastFinishSystemContentStage => _lastFinishSystemContentStage;
  void setLastFinishSystemContentStage({required SystemContentStage? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _lastFinishSystemContentStage = value;
    } else {
      _lastFinishSystemContentStage ??= value;
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
  void onUpdate() {
    ///
    if (getActiveStatus?.isStatusAsActive() == true) {
      if (getFirstStartSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getFirstStartSystemContentStage);
      }
      if (getGoFirstStartSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getGoFirstStartSystemContentStage);
      }
      if (getDoneFirstStartSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getDoneFirstStartSystemContentStage);
      }

      ///
      if (getLastFinishSystemContentStage?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getLastFinishSystemContentStage);
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

      ///
      if (getPomodoroStayFocusedContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroStayFocusedContentStageSS01);
      }
      if (getPomodoroStayFocusedContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroStayFocusedContentStageSS02);
      }
      if (getPomodoroStayFocusedContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroStayFocusedContentStageSS03);
      }
      if (getPomodoroStayFocusedContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroStayFocusedContentStageSS04);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS01?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroBreakTimeContentStageSS01);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS02?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroBreakTimeContentStageSS02);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS03?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroBreakTimeContentStageSS03);
      }

      ///
      if (getPomodoroBreakTimeContentStageSS04?.getActiveStatus?.isStatusAsActive() == true) {
        getFunctionalSequentialExecutionController?.onUpdateSpecific(contentStage: getPomodoroBreakTimeContentStageSS04);
      }

      return;
    }
  }

  /// -----
  /// TODO:
  /// -----
  onStartFirstExecutionStep() {
    ///
    /// TODO: Nếu Section Item Tồn Tại Nội Dung & Hoàn Thành Thực Thi
    /// TODO: NextExecutionStep => Tức Chuyển Đến (Kích Hoạt) Section Item Kế Tiếp Gần Nhất (Nếu Section Item Tồn Tại Nội Dung)
    ///
    if (getFirstStartContentItemSection?.getContentExistenceStatus?.isStatusAsExistingContent() == true) {
      if (getFirstStartSystemContentStage?.getActiveStatus?.isStatusAsReady() == true) {
        getFirstStartSystemContentStage?.getActiveStatus?.setStatusAsActive();
      }
    }
  }

  onNextExecutionStep() {}

  onActivateContentStage({required ContentStage? contentStage}) {}

  onPerformCompletedContentStage({required ContentStage? contentStage}) {}

  /// -----
  /// TODO:
  /// -----
  void onActivateContentStageStatus({required ContentStage? contentStage}) {
    if (contentStage?.getActiveStatus?.isStatusAsDefault() == true) {
      contentStage?.getActiveStatus?.setStatusAsActive();
    }
  }

  void onInActivateContentStageStatus({required ContentStage? contentStage}) {
    if (contentStage?.getActiveStatus?.isStatusAsActive() == true) {
      contentStage?.getActiveStatus?.setStatusAsInActive();
    }
  }

  void onPerformCompletedContentStageStatus({required ContentStage? contentStage}) {
    if (contentStage?.getActiveStatus?.isStatusAsActive() == true) {
      contentStage?.getActiveStatus?.setStatusAsPerformCompleted();
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
      setFirstStartContentItemSection(
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
      setLastFinishContentItemSection(
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
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// -----
      setBreakTimeContentItemSectionSS01(
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
      setBreakTimeContentItemSectionSS02(
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
      setBreakTimeContentItemSectionSS03(
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
      setBreakTimeContentItemSectionSS04(
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
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
      /// -----
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

      /// -----
      /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG (GO & DONE)
      /// -----

      setGoStayFocusedContentItemSectionSS01(
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
      setDoneStayFocusedContentItemSectionSS04(
        value: ContentItemSection(
          sequentialExecutionController: getSequentialExecutionController, //
          functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
        ),
        isPriorityOverride: true,
      );

      ///
      ///
      ///
      ///
      ///

      setFirstStartSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setGoFirstStartSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setDoneFirstStartSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);

      setLastFinishSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setGoLastFinishSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);
      setDoneLastFinishSystemContentStage(value: SystemContentStage(), isPriorityOverride: true);

      ///
      ///
      ///

      setPomodoroStayFocusedContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);

      setPomodoroStayFocusedContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);

      setPomodoroStayFocusedContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);

      setPomodoroStayFocusedContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroStayFocusedContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroStayFocusedContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);

      ///
      ///
      ///

      setPomodoroBreakTimeContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS01(value: PomodoroContentStage(), isPriorityOverride: true);

      setPomodoroBreakTimeContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS02(value: PomodoroContentStage(), isPriorityOverride: true);

      setPomodoroBreakTimeContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS03(value: PomodoroContentStage(), isPriorityOverride: true);

      setPomodoroBreakTimeContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setGoPomodoroBreakTimeContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);
      setDonePomodoroBreakTimeContentStageSS04(value: PomodoroContentStage(), isPriorityOverride: true);

      ///
      ///
      ///

      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getFirstStartSystemItem?.setSystemContentStage(value: getFirstStartSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getGoFirstStartSystemItem?.setSystemContentStage(value: getGoFirstStartSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getDoneFirstStartSystemItem?.setSystemContentStage(value: getDoneFirstStartSystemContentStage, isPriorityOverride: true);

      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getLastFinishSystemItem?.setSystemContentStage(value: getLastFinishSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getGoLastFinishSystemItem?.setSystemContentStage(value: getGoLastFinishSystemContentStage, isPriorityOverride: true);
      getSequentialExecutionController?.getSystemFeature?.getSystemTime?.getDoneLastFinishSystemItem?.setSystemContentStage(value: getDoneLastFinishSystemContentStage, isPriorityOverride: true);

      ///

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS01, isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS02, isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS03, isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.setPomodoroContentStage(value: getPomodoroStayFocusedContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.setGoPomodoroContentStage(value: getGoPomodoroStayFocusedContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.setDonePomodoroContentStage(value: getDonePomodoroStayFocusedContentStageSS04, isPriorityOverride: true);

      ///

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS01, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS01, isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS02, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS02, isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS03, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS03, isPriorityOverride: true);

      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.setPomodoroContentStage(value: getPomodoroBreakTimeContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.setGoPomodoroContentStage(value: getGoPomodoroBreakTimeContentStageSS04, isPriorityOverride: true);
      getSequentialExecutionController?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.setDonePomodoroContentStage(value: getDonePomodoroBreakTimeContentStageSS04, isPriorityOverride: true);

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
      await getFirstStartContentItemSection?.onSetupRoot();
      await getLastFinishContentItemSection?.onSetupRoot();

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

      await getFirstStartSystemContentStage?.onSetupRoot();
      await getGoFirstStartSystemContentStage?.onSetupRoot();
      await getDoneFirstStartSystemContentStage?.onSetupRoot();

      await getLastFinishSystemContentStage?.onSetupRoot();
      await getGoLastFinishSystemContentStage?.onSetupRoot();
      await getDoneLastFinishSystemContentStage?.onSetupRoot();

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
      await getFirstStartContentItemSection?.onInitRoot();
      await getLastFinishContentItemSection?.onInitRoot();

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

      await getFirstStartSystemContentStage?.onInitRoot();
      await getLastFinishSystemContentStage?.onInitRoot();

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
