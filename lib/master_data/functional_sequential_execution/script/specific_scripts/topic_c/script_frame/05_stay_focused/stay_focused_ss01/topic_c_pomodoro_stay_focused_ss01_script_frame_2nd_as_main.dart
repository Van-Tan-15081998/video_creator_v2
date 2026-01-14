import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss01/pomodoro_stay_focused_ss01_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/system_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/details/step_item_content_as_new_message_conversation.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';

/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// TODO: [PomodoroStayFocusedSS01] To []
/// [POMODORO_STAY_FOCUSED_SS01_AS_MAIN]
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
class TopicCPomodoroStayFocusedSs01ScriptFrame2ndAsMain extends PomodoroStayFocusedSs01ScriptFrame2ndAsMain {
  /// -----
  /// TODO:
  /// -----
  TopicCPomodoroStayFocusedSs01ScriptFrame2ndAsMain({
    required super.systemStateManagement, //
    required super.sequentialExecutionController, //
    required super.contentItemSequentialExecution, //
    required super.systemSequentialExecutionScript, //
    required super.functionalSequentialExecutionController,
  });

  /// -----
  /// TODO:
  /// -----
  @override
  void onGenerateDetailSequentialExecutionScript({required ContentItemUnit? contentItemUnit}) {
    /// -----
    /// TODO: [OPEN TWO CHARACTER CONVERSATION WINDOW]
    /// -----
    getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onStartTwoCharacterConversationAsOpenWindow, contentItemUnit: contentItemUnit);

    /// ----- | ----- | -----
    /// TODO: Step [GAP]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
            }
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 _10',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 _20',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA02Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 _30',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 _40',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 _50',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _60',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _70',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _80',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _90',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _100',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _110',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _120',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _130',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _140',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _150',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _160',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: null,
                imageSource: 'assets/images/interesting_knowledge/knowledge_01.jpg', //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[POMODORO_STAY_FOCUSED_SS01_AS_MAIN]');
              }
            }
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _170',
                imageSource: null, //
                windowId: getSystemStateManagement?.getSystemConstantData?.getSystemWindow?.windowA01Id,
                characterId: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// -----
    /// TODO: [CLOSE TWO CHARACTER CONVERSATION WINDOW]
    /// -----
    getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onFinishTwoCharacterConversationAsCloseWindow, contentItemUnit: contentItemUnit);

    return;
  }
}
