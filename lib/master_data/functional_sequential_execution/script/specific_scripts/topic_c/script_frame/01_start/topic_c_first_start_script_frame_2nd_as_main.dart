import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/01_start/first_start_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/details/step_item_content_as_new_message_conversation.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_character.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_window.dart';

/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// TODO: [FirstStart] To []
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
class TopicCFirstStartScriptFrame2ndAsMain extends FirstStartScriptFrame2ndAsMain {
  /// -----
  /// TODO:
  /// -----
  TopicCFirstStartScriptFrame2ndAsMain({
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
    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow, gapTime: 10);
    // getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow, gapTime: 10);

    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo4.webp', //
        windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow,
        characterId: SystemCharacter.characterBottomStart,
        id: '[POMODORO_SS01]',
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo4.webp', //
        windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow,
        characterId: SystemCharacter.characterBottomStart,
        id: '[POMODORO_SS02]',
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo4.webp', //
        windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow,
        characterId: SystemCharacter.characterBottomStart,
        id: '[POMODORO_SS03]',
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo4.webp', //
        windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow,
        characterId: SystemCharacter.characterBottomStart,
        id: '[POMODORO_SS04]',
      ),
      gapTime: 5,
    );

    getCommonAction?.onCreateNewMessageForTest(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow, characterId: SystemCharacter.characterBottomStart);
    getCommonAction?.onCreateNewMessageForTest(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsIntroductoryConversationWindow, characterId: SystemCharacter.characterBottomEnd);

    return;
  }
}
