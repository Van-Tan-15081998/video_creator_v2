import 'package:flutter/material.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_1st_From_Done_First_Start_To_Go_Pomodoro_Stay_Focused_SS01.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/details/step_item_content_as_new_message_conversation.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_character.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_window.dart';
import 'package:google_fonts/google_fonts.dart';

/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// TODO: [DoneFirstStart] To [GoPomodoroStayFocusedSS01]
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
class TopicCBridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01 extends BridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01 {
  /// -----
  /// TODO:
  /// -----
  TopicCBridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01({
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

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsPomodoroComingUpWindow, gapTime: 10);
    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsPomodoroComingUpWindow, gapTime: 10);


    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow, gapTime: 5);

    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '5',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
        style: GoogleFonts.coiny(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 50, height: 1.6),
      ),
      gapTime: 1,
    );

    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '4',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
        style: GoogleFonts.coiny(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 50, height: 1.6),
      ),
      gapTime: 1,
    );

    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '3',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
        style: GoogleFonts.coiny(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 50, height: 1.6),
      ),
      gapTime: 1,
    );

    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '2',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
        style: GoogleFonts.coiny(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 50, height: 1.6),
      ),
      gapTime: 1,
    );

    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
        style: GoogleFonts.coiny(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 50, height: 1.6),
      ),
      gapTime: 1,
    );

    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '0',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
        style: GoogleFonts.coiny(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 50, height: 1.6),
      ),
      gapTime: 1,
    );

    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: 'Let\'s go.',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
      ),
      gapTime: 2,
    );

    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsPomodoroStartingWindow, gapTime: 5);

    return;
  }
}
