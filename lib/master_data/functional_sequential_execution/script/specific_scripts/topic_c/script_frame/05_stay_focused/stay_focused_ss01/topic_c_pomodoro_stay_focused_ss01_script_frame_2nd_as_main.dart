import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss01/pomodoro_stay_focused_ss01_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/details/step_item_content_as_new_message_conversation.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_character.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_window.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/crossword_puzzle_models.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/data/chess_models.dart';

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
    return;

    /// -----
    /// TODO: [OPEN TWO CHARACTER CONVERSATION WINDOW]
    /// -----

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow, gapTime: 2);

    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo4.webp', //
        windowId: SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow,
        characterId: SystemCharacter.characterTopStart,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 😮😮😮😮😮 _20',
        imageSource: null, //
        windowId: SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow,
        characterId: SystemCharacter.characterTopStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 😮😮😮😮😮 _70',
        imageSource: null, //
        windowId: SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow,
        characterId: SystemCharacter.characterBottomStart,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 😮😮😮😮😮 _100',
        imageSource: null, //
        windowId: SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow,
        characterId: SystemCharacter.characterTopEnd,
        character: getSystemStateManagement?.getSystemConstantData?.getSystemCharacter?.getTommy,
      ),
      gapTime: 5,
    );

    getCommonAction?.onCreateNewMessageForTest(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheCornerMessageNotificationWindow, characterId: SystemCharacter.characterBottomEnd);

    return;
    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS01Window, gapTime: 2);

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS02Window, gapTime: 30);
    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS02Window, gapTime: 2);

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS03Window, gapTime: 30);
    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS03Window, gapTime: 2);

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS04Window, gapTime: 30);
    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterPositionAsTheIntroductorySectionPomodoroSS04Window, gapTime: 2);

    return;

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromTopEndPositionAsOneCharacterConversationWindow, gapTime: 2);

    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromBottomEndPositionAsPomodoroCycleWindow, gapTime: 2);

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromBottomEndPositionAsOneCharacterConversationWindow, gapTime: 2);

    // getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsTwoCharacterPlayingChessWindow, gapTime: 2);

    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow, gapTime: 2);

    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo.png', //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo2.png', //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo3.png', //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewImageSlide(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/demo4.webp', //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 😮😮😮😮😮 _20',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 😮😮😮😮😮 _70',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 😮😮😮😮😮 _100',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 😮😮😮😮😮 _150',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
        characterId: SystemCharacter.characterA01Id,
      ),
      gapTime: 5,
    );

    return;

    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow, gapTime: 2);

    ///
    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWindow, gapTime: 2);

    ///
    getCrosswordPuzzleAction?.onOpenSolvingRowA2J2(contentItemUnit: contentItemUnit, gapTime: 10);
    getCrosswordPuzzleAction?.onOpenSolvedRowA2J2(contentItemUnit: contentItemUnit, gapTime: 10);

    ///
    getCrosswordPuzzleAction?.onOpenSolvingRowA3J3(contentItemUnit: contentItemUnit, gapTime: 10);
    getCrosswordPuzzleAction?.onOpenSolvedRowA3J3(contentItemUnit: contentItemUnit, gapTime: 10);

    ///
    getCrosswordPuzzleAction?.onOpenSolvingRowA4J4(contentItemUnit: contentItemUnit, gapTime: 10);
    getCrosswordPuzzleAction?.onOpenSolvedRowA4J4(contentItemUnit: contentItemUnit, gapTime: 10);

    ///
    getCrosswordPuzzleAction?.onOpenSolvingRowA5J5(contentItemUnit: contentItemUnit, gapTime: 10);
    getCrosswordPuzzleAction?.onOpenSolvedRowA5J5(contentItemUnit: contentItemUnit, gapTime: 10);

    ///
    getCrosswordPuzzleAction?.onOpenSolvingRowA6J6(contentItemUnit: contentItemUnit, gapTime: 10);
    getCrosswordPuzzleAction?.onOpenSolvedSquare(
      contentItemUnit: contentItemUnit,
      openSolvedData: OpenSolvedModel(square: CrosswordPuzzleSquareEnum.sqrE6),
      gapTime: 10,
    );
    getCrosswordPuzzleAction?.onOpenSolvedSquare(
      contentItemUnit: contentItemUnit,
      openSolvedData: OpenSolvedModel(square: CrosswordPuzzleSquareEnum.sqrG6),
      gapTime: 10,
    );
    getCrosswordPuzzleAction?.onOpenSolvedRowA6J6(contentItemUnit: contentItemUnit, gapTime: 10);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: '1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 _150',
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWindow,
        characterId: SystemCharacter.characterA02Id,
      ),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: 'assets/images/interesting_knowledge/knowledge_01.jpg', //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWindow,
        characterId: SystemCharacter.characterA02Id,
      ),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
    getCommonAction?.onCreateNewMessage(
      contentItemUnit: contentItemUnit,
      messageData: StepItemContentAsNewMessageConversation(
        message: null,
        imageSource: null, //
        windowId: SystemWindow.fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWindow,
        characterId: SystemCharacter.characterA02Id,
      ),
      gapTime: 5,
    );

    getCommonAction?.onFinishWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromBottomEndPositionAsOneCharacterConversationWindow, gapTime: 2);
    getCommonAction?.onStartWindow(contentItemUnit: contentItemUnit, windowId: SystemWindow.fromBottomEndPositionAsPomodoroCycleWindow, gapTime: 2);

    /// ----- | ----- | -----
    /// TODO: Step [MAIN]
    /// ----- | ----- | -----
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
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: null,
                imageSource: 'assets/images/interesting_knowledge/knowledge_01.jpg', //
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                message: '1234567890 _10',
                imageSource: null, //
                windowId: SystemWindow.fromCenterStartPositionAsTwoCharacterPlayingChessWindow,
                characterId: SystemCharacter.characterA01Id,
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
                message: '1234567890 1234567890 😮😮😮😮😮 _20',
                imageSource: null, //
                windowId: SystemWindow.fromCenterStartPositionAsTwoCharacterPlayingChessWindow,
                characterId: SystemCharacter.characterA01Id,
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
                message: '🦊🦊🦊🦊🦊 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 1234567890 🦚🦚🦚🦚🦚 _90',
                imageSource: null, //
                windowId: SystemWindow.fromCenterStartPositionAsTwoCharacterPlayingChessWindow,
                characterId: SystemCharacter.characterA02Id,
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
                imageSource: null, //
                windowId: SystemWindow.fromCenterStartPositionAsTwoCharacterPlayingChessWindow,
                characterId: SystemCharacter.characterA02Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onLegalMove(
      contentItemUnit: contentItemUnit,
      legalMoveData: LegalMoveModel(origin: ChessSquare.sqrB1),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onMove(
      contentItemUnit: contentItemUnit,
      moveData: MoveModel(origin: ChessSquare.sqrB1, destination: ChessSquare.sqrC3),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onLegalMove(
      contentItemUnit: contentItemUnit,
      legalMoveData: LegalMoveModel(origin: ChessSquare.sqrG2),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onLegalMove(
      contentItemUnit: contentItemUnit,
      legalMoveData: LegalMoveModel(origin: ChessSquare.sqrD1),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onCapture(
      contentItemUnit: contentItemUnit,
      captureData: CaptureModel(origin: ChessSquare.sqrD1, destination: ChessSquare.sqrD7),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onLegalMove(
      contentItemUnit: contentItemUnit,
      legalMoveData: LegalMoveModel(origin: ChessSquare.sqrD7),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onCapture(
      contentItemUnit: contentItemUnit,
      captureData: CaptureModel(origin: ChessSquare.sqrD7, destination: ChessSquare.sqrD8),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onLegalMove(
      contentItemUnit: contentItemUnit,
      legalMoveData: LegalMoveModel(origin: ChessSquare.sqrA7),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onPawnPromotion(
      contentItemUnit: contentItemUnit,
      pawnPromotionData: PawnPromotionModel(origin: ChessSquare.sqrA7, destination: ChessSquare.sqrA2, isPromoteToQueen: true),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onLegalMove(
      contentItemUnit: contentItemUnit,
      legalMoveData: LegalMoveModel(origin: ChessSquare.sqrC3),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onMove(
      contentItemUnit: contentItemUnit,
      moveData: MoveModel(origin: ChessSquare.sqrC3, destination: ChessSquare.sqrB5),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onCastling(
      contentItemUnit: contentItemUnit,
      castlingData: CaptureModel(origin: ChessSquare.sqrE8, destination: ChessSquare.sqrA8),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onSpecifyDisplay(
      contentItemUnit: contentItemUnit,
      specifyDisplayData: SpecifyDisplayModel(origin: ChessSquare.sqrF1),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onSpecifyDisplay(
      contentItemUnit: contentItemUnit,
      specifyDisplayData: SpecifyDisplayModel(origin: ChessSquare.sqrH8),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onSpecifyDisplay(contentItemUnit: contentItemUnit, specifyDisplayData: SpecifyDisplayModel(origin: null), gapTime: 5);

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onCheckmate(
      contentItemUnit: contentItemUnit,
      checkmateData: CheckmateModel(origin: ChessSquare.sqrE1),
      gapTime: 5,
    );

    /// ----- | ----- | -----
    /// TODO: Step [CUSTOM]
    /// ----- | ----- | -----
    getChessAction?.onCheckmate(contentItemUnit: contentItemUnit, checkmateData: CheckmateModel(origin: null), gapTime: 5);

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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA02Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: null,
                imageSource: 'assets/images/interesting_knowledge/knowledge_01.jpg', //
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
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
            ..setStepItemContent(
              value: StepItemContentAsNewMessageConversation(
                message: null,
                imageSource: 'assets/images/interesting_knowledge/knowledge_01.jpg', //
                windowId: SystemWindow.fromCenterStartPositionAsOneCharacterConversationWindow,
                characterId: SystemCharacter.characterA01Id,
              ),
              isPriorityOverride: true,
            ),
        ),
      )
      ..addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    /// -----
    /// TODO: [CLOSE TWO CHARACTER CONVERSATION WINDOW]
    /// -----
    // getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow, contentItemUnit: contentItemUnit);
    // getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow, contentItemUnit: contentItemUnit); // TEST

    contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.addGap(flowController: getFunctionalSequentialExecutionController?.getFlowController, seconds: 5);

    // getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onStartFromCenterStartPositionAsOneCharacterConversationAsOpenWindow, contentItemUnit: contentItemUnit); // TEST

    return;
  }
}
