import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/system_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/details/step_item_content_as_new_message_conversation.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_character.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_window.dart';

class CommonActionModel {
  CommonActionModel({required FunctionalSequentialExecutionController? functionalSequentialExecutionController, required SystemSequentialExecutionScript? systemSequentialExecutionScript}) {
    setFunctionalSequentialExecutionController(value: functionalSequentialExecutionController, isPriorityOverride: true);
    setSystemSequentialExecutionScript(value: systemSequentialExecutionScript, isPriorityOverride: true);
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
  SystemSequentialExecutionScript? _systemSequentialExecutionScript;
  SystemSequentialExecutionScript? get getSystemSequentialExecutionScript => _systemSequentialExecutionScript;
  void setSystemSequentialExecutionScript({required SystemSequentialExecutionScript? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _systemSequentialExecutionScript = value;
    } else {
      _systemSequentialExecutionScript ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  onCreateNewMessage({required ContentItemUnit? contentItemUnit, required StepItemContentAsNewMessageConversation? messageData, required int? gapTime}) {
    //
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
            ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
            ..onSetupRoot()
            ..onInitRoot()
            ..onStart = () {
              if (kDebugMode) {
                print('[ON_START]_____[_]');
              }

              ///
            }
            ..onPerform = () {
              if (kDebugMode) {
                print('[ON_PERFORM]_____[_]');
              }
            }
            ..setStepItemContent(value: messageData, isPriorityOverride: true),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  onCreateNewImageSlide({required ContentItemUnit? contentItemUnit, required StepItemContentAsNewMessageConversation? messageData, required int? gapTime}) {
    //
    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit
      ?..getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
        FunctionalSequentialExecutionStepItemState(
          stateModel: FunctionalSequentialExecutionStepItem.asImageSlideFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
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
            ..setStepItemContent(value: messageData, isPriorityOverride: true),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  onFinishWindow({required ContentItemUnit? contentItemUnit, required String windowId, required int? gapTime}) {
    switch (windowId) {
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _BottomEnd Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromBottomEndPositionAsOneCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromBottomEndPositionAsOneCharacterConversationAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _BottomEnd Position As _PomodoroCycle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromBottomEndPositionAsPomodoroCycleWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromBottomEndPositionAsPomodoroCycleAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsOneCharacterConversationAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _TwoCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsTwoCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _TwoCharacterPlayingChess
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsTwoCharacterPlayingChessWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterPlayingChessAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _OneCharacterPlayingCrosswordPuzzle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _PomodoroStarting
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsPomodoroStartingAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _PomodoroComingUp
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsPomodoroComingUpWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsPomodoroComingUpAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterEnd Position As _CountdownTimeCycle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterEndPositionAsCountdownTimeCycleWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterEndPositionAsCountdownTimeCycleAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _IntroductoryConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsIntroductoryConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterPositionAsIntroductoryConversationAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS01
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS01Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS01AsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS02
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS02Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS02AsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS03
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS03Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS03AsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS04
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS04Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheIntroductorySectionPomodoroSS04AsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheCornerMessageNotification
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromCenterPositionAsTheCornerMessageNotificationAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _TopEnd Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromTopEndPositionAsOneCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onFinishFrom_PositionAs_AsCloseWindow,
            executionId: SystemSequentialExecutionScript.onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;
    }

    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  onStartWindow({required ContentItemUnit? contentItemUnit, required String windowId, required int? gapTime}) {
    switch (windowId) {
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _BottomEnd Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromBottomEndPositionAsOneCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromBottomEndPositionAsOneCharacterConversationAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _BottomEnd Position As _PomodoroCycle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromBottomEndPositionAsPomodoroCycleWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromBottomEndPositionAsPomodoroCycleAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterStartPositionAsOneCharacterConversationAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _TwoCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsTwoCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterConversationAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _TwoCharacterPlayingChess
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsTwoCharacterPlayingChessWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterPlayingChessAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _OneCharacterPlayingCrosswordPuzzle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterStart Position As _PomodoroStarting
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterStartPositionAsPomodoroStartingAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: From _CenterStart Position As _PomodoroComingUp
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterStartPositionAsPomodoroComingUpWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterStartPositionAsPomodoroComingUpAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _CenterEnd Position As _CountdownTimeCycle
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterEndPositionAsCountdownTimeCycleWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterEndPositionAsCountdownTimeCycleAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _IntroductoryConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsIntroductoryConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterPositionAsIntroductoryConversationAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS01
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS01Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS01AsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS02
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS02Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS02AsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS03
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS03Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS03AsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheIntroductorySectionPomodoroSS04
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS04Window:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterPositionAsTheIntroductorySectionPomodoroSS04AsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _Center Position As _TheCornerMessageNotification
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromCenterPositionAsTheCornerMessageNotificationAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From _TopEnd Position As _OneCharacterConversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      case SystemWindow.fromTopEndPositionAsOneCharacterConversationWindow:
        {
          getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(
            // executionId: SystemSequentialExecutionScript.onStartFrom_PositionAs_AsOpenWindow,
            executionId: SystemSequentialExecutionScript.onStartFromTopEndPositionAsOneCharacterConversationAsOpenWindow,
            contentItemUnit: contentItemUnit,
          );
        }
        break;
    }

    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: gapTime);

    return;
  }

  onCreateNewMessageForTest({required ContentItemUnit? contentItemUnit, required String? windowId, required String? characterId}) {
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 ..... _10',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 ..... _20',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 ..... _30',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 ..... _40',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 ..... _50',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _60',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _70',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _80',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _90',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _100',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );

    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _110',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );

    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _120',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );

    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _130',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );

    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _140',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _150',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _160',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _170',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _180',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _190',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
    onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 ..... _200',
        imageSource: null, //
        windowId: windowId,
        characterId: characterId,
      ),
      gapTime: 2,
    );
  }
}
