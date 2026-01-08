import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/03_content_stage/abstract/content_stage.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/attributes/gap_time.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/phase_item/functional_sequential_execution_phase.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_a_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/status/flow_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/unit_item/functional_sequential_execution_content_item_unit.dart';

class FunctionalSequentialExecutionController with ExecutionCore {
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

  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS01;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS01 => _functionalSequentialExecutionPhaseSS01;
  // void setFunctionalSequentialExecutionPhaseSS01({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS01 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS01 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS02;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS02 => _functionalSequentialExecutionPhaseSS02;
  // void setFunctionalSequentialExecutionPhaseSS02({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS02 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS02 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS03;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS03 => _functionalSequentialExecutionPhaseSS03;
  // void setFunctionalSequentialExecutionPhaseSS03({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS03 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS03 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS04;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS04 => _functionalSequentialExecutionPhaseSS04;
  // void setFunctionalSequentialExecutionPhaseSS04({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS04 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS04 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS05;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS05 => _functionalSequentialExecutionPhaseSS05;
  // void setFunctionalSequentialExecutionPhaseSS05({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS05 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS05 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS06;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS06 => _functionalSequentialExecutionPhaseSS06;
  // void setFunctionalSequentialExecutionPhaseSS06({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS06 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS06 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS07;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS07 => _functionalSequentialExecutionPhaseSS07;
  // void setFunctionalSequentialExecutionPhaseSS07({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS07 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS07 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS08;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS08 => _functionalSequentialExecutionPhaseSS08;
  // void setFunctionalSequentialExecutionPhaseSS08({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS08 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS08 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS09;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS09 => _functionalSequentialExecutionPhaseSS09;
  // void setFunctionalSequentialExecutionPhaseSS09({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS09 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS09 ??= value;
  //   }
  //
  //   return;
  // }
  //
  // /// -----
  // /// TODO:
  // /// -----
  // FunctionalSequentialExecutionPhase? _functionalSequentialExecutionPhaseSS10;
  // FunctionalSequentialExecutionPhase? get getFunctionalSequentialExecutionPhaseSS10 => _functionalSequentialExecutionPhaseSS10;
  // void setFunctionalSequentialExecutionPhaseSS10({required FunctionalSequentialExecutionPhase? value, bool? isPriorityOverride}) {
  //   if (isPriorityOverride == true) {
  //     _functionalSequentialExecutionPhaseSS10 = value;
  //   } else {
  //     _functionalSequentialExecutionPhaseSS10 ??= value;
  //   }
  //
  //   return;
  // }

  /// -----
  /// TODO:
  /// -----
  FunctionalSequentialExecutionContentItemUnit? _functionalSequentialExecutionContentItemUnitSS01;
  FunctionalSequentialExecutionContentItemUnit? get getFunctionalSequentialExecutionContentItemUnitSS01 => _functionalSequentialExecutionContentItemUnitSS01;
  void setFunctionalSequentialExecutionContentItemUnitSS01({required FunctionalSequentialExecutionContentItemUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionContentItemUnitSS01 = value;
    } else {
      _functionalSequentialExecutionContentItemUnitSS01 ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  ///
  /// TODO: FunctionalSequentialExecutionStepItemState List As Stack Bind To [BreakTime Section SS01]
  ///
  List<FunctionalSequentialExecutionStepItemState?>? _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS01;
  List<FunctionalSequentialExecutionStepItemState?>? get getFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS01 => _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS01;
  void setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS01({required List<FunctionalSequentialExecutionStepItemState>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS01 = value;
    } else {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS01 ??= value;
    }

    return;
  }

  ///
  /// TODO: FunctionalSequentialExecutionStepItemState List As Stack Bind To [BreakTime Section SS02]
  ///
  List<FunctionalSequentialExecutionStepItemState?>? _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS02;
  List<FunctionalSequentialExecutionStepItemState?>? get getFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS02 => _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS02;
  void setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS02({required List<FunctionalSequentialExecutionStepItemState>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS02 = value;
    } else {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS02 ??= value;
    }

    return;
  }

  ///
  /// TODO: FunctionalSequentialExecutionStepItemState List As Stack Bind To [BreakTime Section SS03]
  ///
  List<FunctionalSequentialExecutionStepItemState?>? _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS03;
  List<FunctionalSequentialExecutionStepItemState?>? get getFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS03 => _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS03;
  void setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS03({required List<FunctionalSequentialExecutionStepItemState>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS03 = value;
    } else {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS03 ??= value;
    }

    return;
  }

  ///
  /// TODO: FunctionalSequentialExecutionStepItemState List As Stack Bind To [BreakTime Section SS04]
  ///
  List<FunctionalSequentialExecutionStepItemState?>? _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS04;
  List<FunctionalSequentialExecutionStepItemState?>? get getFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS04 => _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS04;
  void setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS04({required List<FunctionalSequentialExecutionStepItemState>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS04 = value;
    } else {
      _functionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS04 ??= value;
    }

    return;
  }

  ///
  /// TODO: FunctionalSequentialExecutionStepItemState List As Stack Bind To [First Starting Section]
  ///
  List<FunctionalSequentialExecutionStepItemState?>? _functionalSequentialExecutionStepItemStateListAsStackBindToFirstStartingSection;
  List<FunctionalSequentialExecutionStepItemState?>? get getFunctionalSequentialExecutionStepItemStateListAsStackBindToFirstStartingSection => _functionalSequentialExecutionStepItemStateListAsStackBindToFirstStartingSection;
  void setFunctionalSequentialExecutionStepItemStateListAsStackBindToFirstStartingSection({required List<FunctionalSequentialExecutionStepItemState>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateListAsStackBindToFirstStartingSection = value;
    } else {
      _functionalSequentialExecutionStepItemStateListAsStackBindToFirstStartingSection ??= value;
    }

    return;
  }

  ///
  /// TODO: FunctionalSequentialExecutionStepItemState List As Stack Bind To [Last Ending Section]
  ///
  List<FunctionalSequentialExecutionStepItemState?>? _functionalSequentialExecutionStepItemStateListAsStackBindToLastEndingSection;
  List<FunctionalSequentialExecutionStepItemState?>? get getFunctionalSequentialExecutionStepItemStateListAsStackBindToLastEndingSection => _functionalSequentialExecutionStepItemStateListAsStackBindToLastEndingSection;
  void setFunctionalSequentialExecutionStepItemStateListAsStackBindToLastEndingSection({required List<FunctionalSequentialExecutionStepItemState>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemStateListAsStackBindToLastEndingSection = value;
    } else {
      _functionalSequentialExecutionStepItemStateListAsStackBindToLastEndingSection ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM THUỘC PHẦN NỘI DUNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

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
  /// TODO:
  /// -----
  TopicAScript? _script;
  TopicAScript? get getTopicAScript => _script;
  void setTopicAScript({required TopicAScript? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _script = value;
    } else {
      _script ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    /// -----
    /// TODO:
    /// -----
    getGapTime?.onUpdate();

    if (getGapTime?.isRunning() == true) {
      return;

      ///
    }

    if (getGapTime?.isCompleted() == true) {
      onUpdateFromFunctionalSequentialExecutionStepItem();

      ///
    }
    if (getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
      getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.onStart?.call();
      getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.clear();
    }
    if (getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
      getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.onStart?.call();
      getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.clear();
    }
    if (getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
      getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.onStart?.call();
      getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.clear();
    }
  }

  /// -----
  /// TODO:
  /// -----
  onUpdateSpecific({required ContentStage? contentStage}) {
    /// -----
    /// TODO:
    /// -----
    getGapTime?.onUpdate();

    if (getGapTime?.isRunning() == true) {
      return;

      ///
    }

    if (getGapTime?.isCompleted() == true) {
      if (contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
        FunctionalSequentialExecutionStepItemState? functionalSequentialExecutionStepItemState = contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first;

        /// -----
        /// TODO: Gap
        /// -----
        if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsGapFlow() == true) {
          getGapTime?.setSeconds(value: functionalSequentialExecutionStepItemState?.getStateModel?.getGapTime?.getSeconds, isPriorityOverride: true);
          contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

          /// TODO: Perform
          functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

          if (kDebugMode) {
            print('_____[GAP TIME]: ${getGapTime?.getSeconds}_____');
          }
        } else {
          /// -----
          /// TODO: Character Flow
          /// -----
          if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsCharacterFlow() == true) {
            getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
            contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

            /// TODO: Perform
            functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

            ///
          }

          /// -----
          /// TODO: Message Flow
          /// -----
          if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsMessageFlow() == true) {
            getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
            contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

            /// TODO: Perform
            functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

            ///
          }

          /// -----
          /// TODO: Window Flow
          /// -----
          if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsWindowFlow() == true) {
            getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
            contentStage?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

            /// TODO: Perform
            functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

            ///
          }
        }
      }
    }

    if (getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
      getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.onStart?.call();
      getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.clear();
    }
    if (getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
      getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.onStart?.call();
      getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.clear();
    }
    if (getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
      getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.onStart?.call();
      getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.clear();
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdateFromFunctionalSequentialExecutionStepItem() {
    if (getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
      FunctionalSequentialExecutionStepItemState? functionalSequentialExecutionStepItemState = getFunctionalSequentialExecutionStepItemStateListAsStack?.first;

      /// -----
      /// TODO: Gap
      /// -----
      if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsGapFlow() == true) {
        getGapTime?.setSeconds(value: functionalSequentialExecutionStepItemState?.getStateModel?.getGapTime?.getSeconds, isPriorityOverride: true);
        getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

        /// TODO: Perform
        functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

        if (kDebugMode) {
          print('_____[GAP TIME]: ${getGapTime?.getSeconds}_____');
        }
      } else {
        /// -----
        /// TODO: Character Flow
        /// -----
        if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsCharacterFlow() == true) {
          getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
          getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

          /// TODO: Perform
          functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

          ///
        }

        /// -----
        /// TODO: Message Flow
        /// -----
        if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsMessageFlow() == true) {
          getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
          getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

          /// TODO: Perform
          functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

          ///
        }

        /// -----
        /// TODO: Window Flow
        /// -----
        if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsWindowFlow() == true) {
          getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
          getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);

          /// TODO: Perform
          functionalSequentialExecutionStepItemState?.getStateModel?.onPerform?.call();

          ///
        }
      }
    }
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdatePhaseSS01() {
    // if (getFunctionalSequentialExecutionPhaseSS01?.getActiveStatus?.isStatusAsActive() == true) {
    //   if (getFunctionalSequentialExecutionPhaseSS01?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
    //     FunctionalSequentialExecutionStepItemState? functionalSequentialExecutionStepItemState = getFunctionalSequentialExecutionPhaseSS01?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first;
    //
    //     /// -----
    //     /// TODO: Gap
    //     /// -----
    //     if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsGapFlow() == true) {
    //       getGapTime?.setSeconds(value: functionalSequentialExecutionStepItemState?.getStateModel?.getGapTime?.getSeconds, isPriorityOverride: true);
    //       getFunctionalSequentialExecutionPhaseSS01?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);
    //     } else {
    //       /// -----
    //       /// TODO: Character Flow
    //       /// -----
    //       if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsCharacterFlow() == true) {
    //         getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
    //         getFunctionalSequentialExecutionPhaseSS01?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);
    //
    //         ///  TODO: Demo
    //         // autoClearCharacterFlowControllerFunctionalSequentialExecutionStepItemStateListAsStack();
    //
    //         ///
    //       }
    //
    //       /// -----
    //       /// TODO: Message Flow
    //       /// -----
    //       if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsMessageFlow() == true) {
    //         getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
    //         getFunctionalSequentialExecutionPhaseSS01?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);
    //
    //         ///  TODO: Demo
    //         // autoClearMessageFlowControllerFunctionalSequentialExecutionStepItemStateListAsStack();
    //
    //         ///
    //       }
    //
    //       /// -----
    //       /// TODO: Window Flow
    //       /// -----
    //       if (functionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsWindowFlow() == true) {
    //         getFlowController?.getWindowFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(functionalSequentialExecutionStepItemState);
    //         getFunctionalSequentialExecutionPhaseSS01?.getFunctionalSequentialExecutionStepItemStateListAsStack?.remove(functionalSequentialExecutionStepItemState);
    //
    //         ///  TODO: Demo
    //         // autoClearWindowFlowControllerFunctionalSequentialExecutionStepItemStateListAsStack();
    //
    //         ///
    //       }
    //     }
    //   }
    // }
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

      /// -----
      /// TODO: Demo Active PhaseSS01
      /// -----
      // getFunctionalSequentialExecutionPhaseSS01?.getActiveStatus?.setStatusAsActive();

      ///
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

      setGapTime(value: GapTime.asDefault(), isPriorityOverride: true);

      setFlowController(value: FlowController(), isPriorityOverride: true);

      setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS01(value: [], isPriorityOverride: true);
      setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS02(value: [], isPriorityOverride: true);
      setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS03(value: [], isPriorityOverride: true);
      setFunctionalSequentialExecutionStepItemStateListAsStackBindToBreakTimeSectionSS04(value: [], isPriorityOverride: true);

      setFunctionalSequentialExecutionStepItemStateListAsStackBindToFirstStartingSection(value: [], isPriorityOverride: true);
      setFunctionalSequentialExecutionStepItemStateListAsStackBindToLastEndingSection(value: [], isPriorityOverride: true);

      setFunctionalSequentialExecutionStepItemStateListAsStack(value: [], isPriorityOverride: true);

      // setFunctionalSequentialExecutionPhaseSS01(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS02(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS03(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS04(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS05(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS06(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS07(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS08(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS09(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);
      // setFunctionalSequentialExecutionPhaseSS10(value: FunctionalSequentialExecutionPhase(flowController: getFlowController), isPriorityOverride: true);

      /// -----
      /// TODO: Demo Script
      /// -----
      // setTopicAScript(
      //   value: TopicAScript(functionalSequentialExecutionController: this, contentItemSequentialExecution: null),
      //   isPriorityOverride: true,
      // );

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

      await getGapTime?.onSetupRoot();

      await getFlowController?.onSetupRoot();

      // await getFunctionalSequentialExecutionPhaseSS01?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS02?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS03?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS04?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS05?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS06?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS07?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS08?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS09?.onSetupRoot();
      // await getFunctionalSequentialExecutionPhaseSS10?.onSetupRoot();

      await getTopicAScript?.onSetupRoot();
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

      await getGapTime?.onInitRoot();

      await getFlowController?.onInitRoot();

      // await getFunctionalSequentialExecutionPhaseSS01?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS02?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS03?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS04?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS05?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS06?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS07?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS08?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS09?.onInitRoot();
      // await getFunctionalSequentialExecutionPhaseSS10?.onInitRoot();

      await getTopicAScript?.onInitRoot();
      getTopicAScript?.onGenerateScript();
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
