import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/content_item/04_content_item_sequential_execution/content_item_sequential_execution.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class SystemSequentialExecutionScript with ExecutionCore {
  ///
  /// TODO:
  ///
  SystemSequentialExecutionScript({
    required SystemStateManagement? systemStateManagement, //
    required SequentialExecutionController? sequentialExecutionController, //
    required ContentItemSequentialExecution? contentItemSequentialExecution, //
    required FunctionalSequentialExecutionController? functionalSequentialExecutionController,
  }) {
    ///
    setSystemStateManagement(value: systemStateManagement, isPriorityOverride: true);

    ///
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);

    ///
    setContentItemSequentialExecution(value: contentItemSequentialExecution, isPriorityOverride: true);

    ///
    setFunctionalSequentialExecutionController(value: functionalSequentialExecutionController, isPriorityOverride: true);
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: [START]
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _BottomEnd Position As _OneCharacterConversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromBottomEndPositionAsOneCharacterConversationAsOpenWindow = '[ON_START_FROM_BOTTOM_END_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromBottomEndPositionAsOneCharacterConversationAsCloseWindow = '[ON_FINISH_FROM_BOTTOM_END_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_CLOSE_WINDOW]';

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _BottomEnd Position As _PomodoroCycle
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromBottomEndPositionAsPomodoroCycleAsOpenWindow = '[ON_START_FROM_BOTTOM_END_POSITION_AS_POMODORO_CYCLE_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromBottomEndPositionAsPomodoroCycleAsCloseWindow = '[ON_FINISH_FROM_BOTTOM_END_POSITION_AS_POMODORO_CYCLE_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _CenterStart Position As _OneCharacterConversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterStartPositionAsOneCharacterConversationAsOpenWindow = '[ON_START_FROM_CENTER_START_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterStartPositionAsOneCharacterConversationAsCloseWindow = '[ON_FINISH_FROM_CENTER_START_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _CenterStart Position As _TwoCharacterConversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterStartPositionAsTwoCharacterConversationAsOpenWindow = '[ON_START_FROM_CENTER_START_POSITION_AS_TWO_CHARACTER_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow = '[ON_FINISH_FROM_CENTER_START_POSITION_AS_TWO_CHARACTER_CONVERSATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _CenterStart Position As _TwoCharacterPlayingChess
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterStartPositionAsTwoCharacterPlayingChessAsOpenWindow = '[ON_START_FROM_CENTER_START_POSITION_AS_TWO_CHARACTER_PLAYING_CHESS_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterStartPositionAsTwoCharacterPlayingChessAsCloseWindow = '[ON_FINISH_FROM_CENTER_START_POSITION_AS_TWO_CHARACTER_PLAYING_CHESS_AS_CLOSE_WINDOW]';

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _CenterStart Position As _OneCharacterPlayingCrosswordPuzzle
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleAsOpenWindow = '[ON_START_FROM_CENTER_START_POSITION_AS_ONE_CHARACTER_PLAYING_CROSSWORD_PUZZLE_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleAsCloseWindow = '[ON_FINISH_FROM_CENTER_START_POSITION_AS_ONE_CHARACTER_PLAYING_CROSSWORD_PUZZLE_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _CenterStart Position As _PomodoroStarting
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterStartPositionAsPomodoroStartingAsOpenWindow = '[ON_START_FROM_CENTER_START_POSITION_AS_POMODORO_STARTING_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterStartPositionAsPomodoroStartingAsCloseWindow = '[ON_FINISH_FROM_CENTER_START_POSITION_AS_POMODORO_STARTING_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _CenterStart Position As _PomodoroComingUp
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterStartPositionAsPomodoroComingUpAsOpenWindow = '[ON_START_FROM_CENTER_START_POSITION_AS_POMODORO_COMING_UP_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterStartPositionAsPomodoroComingUpAsCloseWindow = '[ON_FINISH_FROM_CENTER_START_POSITION_AS_POMODORO_COMING_UP_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _CenterEnd Position As _CountdownTimeCycle
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterEndPositionAsCountdownTimeCycleAsOpenWindow = '[ON_START_FROM_CENTER_END_POSITION_AS_COUNTDOWN_TIME_CYCLE_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterEndPositionAsCountdownTimeCycleAsCloseWindow = '[ON_FINISH_FROM_CENTER_END_POSITION_AS_COUNTDOWN_TIME_CYCLE_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _Center Position As _IntroductoryConversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterPositionAsIntroductoryConversationAsOpenWindow = '[ON_START_FROM_CENTER_POSITION_AS_INTRODUCTORY_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterPositionAsIntroductoryConversationAsCloseWindow = '[ON_FINISH_FROM_CENTER_POSITION_AS_INTRODUCTORY_CONVERSATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS01
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS01AsOpenWindow = '[ON_START_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS01_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS01AsCloseWindow = '[ON_FINISH_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS01_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS02
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS02AsOpenWindow = '[ON_START_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS02_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS02AsCloseWindow = '[ON_FINISH_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS02_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS03
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS03AsOpenWindow = '[ON_START_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS03_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS03AsCloseWindow = '[ON_FINISH_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS03_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS04
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS04AsOpenWindow = '[ON_START_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS04_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS04AsCloseWindow = '[ON_FINISH_FROM_CENTER_POSITION_AS_THE_INTRODUCTORY_SECTION_POMODORO_SS04_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _Center Position As _TheCornerMessageNotification
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterPositionAsTheCornerMessageNotificationAsOpenWindow = '[ON_START_FROM_CENTER_POSITION_AS_THE_CORNER_MESSAGE_NOTIFICATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterPositionAsTheCornerMessageNotificationAsCloseWindow = '[ON_FINISH_FROM_CENTER_POSITION_AS_THE_CORNER_MESSAGE_NOTIFICATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: From _TopEnd Position As _OneCharacterConversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromTopEndPositionAsOneCharacterConversationAsOpenWindow = '[ON_START_FROM_TOP_END_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow = '[ON_FINISH_FROM_TOP_END_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: [END]
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

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

  /// -----
  /// TODO: Attach Root
  /// -----
  void onSystemSequentialExecutionAs({required String? executionId, required ContentItemUnit? contentItemUnit}) {
    switch (executionId) {
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _BottomEnd Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromBottomEndPositionAsOneCharacterConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromBottomEndPositionAsOneCharacterConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromBottomEndPositionAsOneCharacterConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromBottomEndPositionAsOneCharacterConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _BottomEnd Position As _PomodoroCycle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromBottomEndPositionAsPomodoroCycleAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromBottomEndPositionAsPomodoroCycleAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromBottomEndPositionAsPomodoroCycleAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromBottomEndPositionAsPomodoroCycleAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterStartPositionAsOneCharacterConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterStartPositionAsOneCharacterConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsOneCharacterConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsOneCharacterConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _TwoCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _TwoCharacterPlayingChess
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterPlayingChessAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterPlayingChessAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterPlayingChessAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterPlayingChessAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _PomodoroStarting
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterStartPositionAsPomodoroStartingAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterStartPositionAsPomodoroStartingAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterStartPositionAsPomodoroStartingSystemFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsPomodoroStartingAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsPomodoroStartingAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterStartPositionAsPomodoroStartingSystemFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _PomodoroComingUp
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterStartPositionAsPomodoroComingUpAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterStartPositionAsPomodoroComingUpAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsPomodoroComingUpAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsPomodoroComingUpAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _TwoCharacterPlayingChess
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterPlayingChessAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterPlayingChessAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterEnd Position As _CountdownTimeCycle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterEndPositionAsCountdownTimeCycleAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterEndPositionAsCountdownTimeCycleAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterEndPositionAsCountdownTimeCycleAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterEndPositionAsCountdownTimeCycleAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _IntroductoryConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterPositionAsIntroductoryConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterPositionAsIntroductoryConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterPositionAsIntroductoryConversationSystemFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterPositionAsIntroductoryConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterPositionAsIntroductoryConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getFromCenterPositionAsIntroductoryConversationSystemFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS01
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS01AsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS01AsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS02
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS02AsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS02AsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS03
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS03AsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS03AsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS04
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS04AsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS04AsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheCornerMessageNotification
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterPositionAsTheCornerMessageNotificationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheCornerMessageNotificationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[_]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _TopEnd Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromTopEndPositionAsOneCharacterConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromTopEndPositionAsOneCharacterConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;
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
