import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/core/sequential_execution_structure.dart';
import 'package:frame_creator_v2/core/window_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/memory_game_board_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/script/memory_script_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board_scene_transition/models/memory_game_board_scene_transition_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/crossword_puzzle_game_board_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/script/crossword_puzzle_script_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board_scene_transition/models/crossword_puzzle_game_board_scene_transition_feature.dart';
import 'package:frame_creator_v2/features/background_image/models/background_image_feature.dart';
import 'package:frame_creator_v2/features/blackboard/models/blackboard_feature.dart';
import 'package:frame_creator_v2/features/break_time_space/models/break_time_space_feature.dart';
import 'package:frame_creator_v2/features/conversation/models/conversation_feature.dart';
import 'package:frame_creator_v2/features/countdown_timer/models/countdown_timer_feature.dart';
import 'package:frame_creator_v2/features/ending_conversation/models/ending_conversation_feature.dart';
import 'package:frame_creator_v2/features/flame_world/models/flame_world_feature.dart';
import 'package:frame_creator_v2/features/global_announcement/models/global_announcement_feature.dart';
import 'package:frame_creator_v2/features/helpful_advice/models/helpful_advice_feature.dart';
import 'package:frame_creator_v2/features/helpful_study_advice/models/helpful_study_advice_feature.dart';
import 'package:frame_creator_v2/features/helpful_study_advice_related_to_topic/models/helpful_study_advice_related_to_topic_feature.dart';
import 'package:frame_creator_v2/features/interesting_knowledge/models/interesting_knowledge_conversation_feature.dart';
import 'package:frame_creator_v2/features/introduction/models/introduction_feature.dart';
import 'package:frame_creator_v2/features/introductory_conversation/models/introductory_conversation_feature.dart';
import 'package:frame_creator_v2/features/pomodoro/models/pomodoro_feature.dart';
import 'package:frame_creator_v2/features/pomodoro_ending_conversation/models/pomodoro_ending_conversation_feature.dart';
import 'package:frame_creator_v2/features/pomodoro_starting_conversation/models/pomodoro_starting_conversation_feature.dart';
import 'package:frame_creator_v2/features/scene_transition/models/scene_transition_feature.dart';
import 'package:frame_creator_v2/features/system/models/system_feature.dart';
import 'package:frame_creator_v2/features/system_timeline/models/system_timeline_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_conversation/models/vocabulary_conversation_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/vocabulary_definition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_english_definition/models/vocabulary_english_definition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_list/models/vocabulary_list_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_list_overall/models/vocabulary_list_overall_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_paragraph/models/vocabulary_paragraph_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_scene_transition/models/vocabulary_scene_transition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_subject/models/vocabulary_subject_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_title/models/vocabulary_title_feature.dart';
import 'package:frame_creator_v2/master_data/content_item/04_content_item_sequential_execution/content_item_sequential_execution.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_bottom_end_position_as_one_character_conversation_functional_feature/models/from_bottom_end_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_corner_message_notification_functional_feature/models/from_center_position_as_the_corner_message_notification_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss02_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss02_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss03_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss03_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss04_functional_feature/models/from_center_position_as_the_introductory_section_pomodoro_ss04_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/models/from_center_start_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_conversation_functional_feature/models/from_center_start_position_as_two_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/from_center_start_position_as_two_character_playing_chess_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/models/from_top_end_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/functional_feature_management.dart';
import 'package:frame_creator_v2/master_features/system_features/from_bottom_end_position_as_pomodoro_cycle/models/from_bottom_end_position_as_pomodoro_cycle_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_end_position_as_countdown_timer/models/from_center_end_position_as_countdown_time_cycle_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_position_as_introductory_conversation/models/from_center_position_as_introductory_conversation_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_coming_up_system_feature/models/from_center_start_position_as_pomodoro_coming_up_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_starting_system_feature/models/from_center_start_position_as_pomodoro_starting_system_feature.dart';
import 'package:frame_creator_v2/master_features/system_features/system_feature_management.dart';
import 'package:frame_creator_v2/state_managements/mixins/feature_mixin.dart';
import 'package:frame_creator_v2/state_managements/mixins/master_feature_mixin.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/script_models/vocabulary_script_model.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_detail.dart';
import 'package:frame_creator_v2/system_config.dart';

class SequentialExecutionController with ExecutionCore, MasterFeatureMixin, FeatureMixin, WindowFeature {
  SequentialExecutionController({required SystemStateManagement? systemStateManagement, required double? sizeDx, required double? sizeDy}) {
    setSystemStateManagement(value: systemStateManagement);
    setSizeDx(value: sizeDx, isPriorityOverride: true);
    setSizeDy(value: sizeDy, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  SequentialExecutionDetail? _sequentialExecutionDetail;
  SequentialExecutionDetail? get getSequentialExecutionDetail => _sequentialExecutionDetail;
  void setSequentialExecutionDetail({required SequentialExecutionDetail? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sequentialExecutionDetail = value;
    } else {
      _sequentialExecutionDetail ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  ContentItemSequentialExecution? _contentItemSequentialExecution;
  ContentItemSequentialExecution? get getContentItemSequentialExecution => _contentItemSequentialExecution;
  void setContentItemSequentialExecution({required ContentItemSequentialExecution? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _contentItemSequentialExecution = value;
    } else {
      _contentItemSequentialExecution ??= value;
    }

    ///
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
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [START]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: Functional Feature Management
      /// ----- | ----- | ----- | ----- | ----- |
      getSystemStateManagement?.setFunctionalFeatureManagement(value: getFunctionalFeatureManagement);

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: System Feature Management
      /// ----- | ----- | ----- | ----- | ----- |
      getSystemStateManagement?.setSystemFeatureManagement(value: getSystemFeatureManagement);

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [END]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO:
      /// -----
      getSystemStateManagement?.setContentItemSequentialExecution(value: getContentItemSequentialExecution, isPriorityOverride: true);

      /// -----
      /// TODO:
      /// -----
      getSystemStateManagement?.setIntroductionFeature(value: getIntroductionFeature, isPriorityOverride: true);

      getSystemStateManagement?.setIntroductoryConversationFeature(value: getIntroductoryConversationFeature, isPriorityOverride: true);
      getSystemStateManagement?.setEndingConversationFeature(value: getEndingConversationFeature, isPriorityOverride: true);

      getSystemStateManagement?.setBackgroundImageFeature(value: getBackgroundImageFeature, isPriorityOverride: true);

      getSystemStateManagement?.setBreakTimeSpaceFeature(value: getBreakTimeSpaceFeature, isPriorityOverride: true);

      getSystemStateManagement?.setCountdownTimerFeature(value: getCountdownTimerFeature, isPriorityOverride: true);

      getSystemStateManagement?.setPomodoroFeature(value: getPomodoroFeature, isPriorityOverride: true);

      getSystemStateManagement?.setPomodoroEndingConversationFeature(value: getPomodoroEndingConversationFeature, isPriorityOverride: true);

      getSystemStateManagement?.setPomodoroStartingConversationFeature(value: getPomodoroStartingConversationFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularySubjectFeature(value: getVocabularySubjectFeature, isPriorityOverride: true);

      getSystemStateManagement?.setConversationFeature(value: getConversationFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyListFeature(value: getVocabularyListFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyListOverallFeature(value: getVocabularyListOverallFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyDefinitionFeature(value: getVocabularyDefinitionFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyEnglishDefinitionFeature(value: getVocabularyEnglishDefinitionFeature, isPriorityOverride: true);

      getSystemStateManagement?.setHelpfulAdviceFeature(value: getHelpfulAdviceFeature, isPriorityOverride: true);
      getSystemStateManagement?.setHelpfulStudyAdviceFeature(value: getHelpfulStudyAdviceFeature, isPriorityOverride: true);
      getSystemStateManagement?.setHelpfulStudyAdviceRelatedToTopicFeature(value: getHelpfulStudyAdviceRelatedToTopicFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyConversationFeature(value: getVocabularyConversationFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyParagraphFeature(value: getVocabularyParagraphFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyTitleFeature(value: getVocabularyTitleFeature, isPriorityOverride: true);

      getSystemStateManagement?.setInterestingKnowledgeConversationFeature(value: getInterestingKnowledgeConversationFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularyScript(value: getVocabularyScript, isPriorityOverride: true);
      getSystemStateManagement?.setMemoryScript(value: getMemoryScript, isPriorityOverride: true);

      getSystemStateManagement?.setGlobalAnnouncementFeature(value: getGlobalAnnouncementFeature, isPriorityOverride: true);

      getSystemStateManagement?.setFlameWorldFeature(value: getFlameWorldFeature, isPriorityOverride: true);

      getSystemStateManagement?.setSceneTransitionFeature(value: getSceneTransitionFeature, isPriorityOverride: true);

      getSystemStateManagement?.setVocabularySceneTransitionFeature(value: getVocabularySceneTransitionFeature, isPriorityOverride: true);

      getSystemStateManagement?.setSystemTimelineFeature(value: getSystemTimelineFeature, isPriorityOverride: true);

      ///
      ///
      ///
      getSystemStateManagement?.setMemoryGameBoardFeature(value: getMemoryGameBoardFeature, isPriorityOverride: true);
      getSystemStateManagement?.setMemoryGameBoardSceneTransitionFeature(value: getMemoryGameBoardSceneTransitionFeature, isPriorityOverride: true);

      ///
      ///
      ///
      getSystemStateManagement?.setCrosswordPuzzleGameBoardFeature(value: getCrosswordPuzzleGameBoardFeature, isPriorityOverride: true);
      getSystemStateManagement?.setCrosswordPuzzleGameBoardSceneTransitionFeature(value: getCrosswordPuzzleGameBoardSceneTransitionFeature, isPriorityOverride: true);

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
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      setFunctionalFeatureManagement(value: FunctionalFeatureManagement(), isPriorityOverride: true);
      setSystemFeatureManagement(value: SystemFeatureManagement(), isPriorityOverride: true);

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [START]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: Functional Feature Management
      /// ----- | ----- | ----- | ----- | ----- |
      setFromBottomEndPositionAsOneCharacterConversationFunctionalFeature(value: FromBottomEndPositionAsOneCharacterConversationFunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.setSizeDy(value: getSizeDy - (getSizeDy * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setFromCenterStartPositionAsOneCharacterConversationFunctionalFeature(value: FromCenterStartPositionAsOneCharacterConversationFunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature(value: FromCenterStartPositionAsTwoCharacterConversationFunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature(value: FromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature(value: FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFromTopEndPositionAsOneCharacterConversationFunctionalFeature(value: FromTopEndPositionAsOneCharacterConversationFunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      ///
      setFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature(value: FromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature(value: FromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature(value: FromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature(value: FromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      ///
      setFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature(value: FromCenterPositionAsTheCornerMessageNotificationFunctionalFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      ///
      ///
      ///
      getFunctionalFeatureManagement?.setFromBottomEndPositionAsOneCharacterConversationFunctionalFeature(value: getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterStartPositionAsOneCharacterConversationFunctionalFeature(value: getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature(value: getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature(value: getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature(value: getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromTopEndPositionAsOneCharacterConversationFunctionalFeature(value: getFromTopEndPositionAsOneCharacterConversationFunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature(value: getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature(value: getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature(value: getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature(value: getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature, isPriorityOverride: true);
      getFunctionalFeatureManagement?.setFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature(value: getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature, isPriorityOverride: true);

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: System Feature Management
      /// ----- | ----- | ----- | ----- | ----- |
      setFromBottomEndPositionAsPomodoroCycleSystemFeature(value: FromBottomEndPositionAsPomodoroCycleSystemFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromBottomEndPositionAsPomodoroCycleSystemFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromBottomEndPositionAsPomodoroCycleSystemFeature?.setSizeDy(value: getSizeDy - (getSizeDy * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromBottomEndPositionAsPomodoroCycleSystemFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getFromBottomEndPositionAsPomodoroCycleSystemFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setFromCenterEndPositionAsCountdownTimeCycleSystemFeature(value: FromCenterEndPositionAsCountdownTimeCycleSystemFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.setSizeDy(value: getSizeDy * 0.6 - (getSizeDy * 0.4 + 15.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.setTopPosition(value: 15.0 + (getSizeDy * 0.4 + 15.0), isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setFromCenterPositionAsIntroductoryConversationSystemFeature(value: FromCenterPositionAsIntroductoryConversationSystemFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterPositionAsIntroductoryConversationSystemFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterPositionAsIntroductoryConversationSystemFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterPositionAsIntroductoryConversationSystemFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getFromCenterPositionAsIntroductoryConversationSystemFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// TODO: Pomodoro Starting
      setFromCenterStartPositionAsPomodoroStartingSystemFeature(value: FromCenterStartPositionAsPomodoroStartingSystemFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterStartPositionAsPomodoroStartingSystemFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterStartPositionAsPomodoroStartingSystemFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterStartPositionAsPomodoroStartingSystemFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterStartPositionAsPomodoroStartingSystemFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// TODO: Pomodoro Coming up
      setFromCenterStartPositionAsPomodoroComingUpSystemFeature(value: FromCenterStartPositionAsPomodoroComingUpSystemFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      ///
      ///
      ///
      getSystemFeatureManagement?.setFromBottomEndPositionAsPomodoroCycleSystemFeature(value: getFromBottomEndPositionAsPomodoroCycleSystemFeature, isPriorityOverride: true);
      getSystemFeatureManagement?.setFromCenterEndPositionAsCountdownTimeCycleSystemFeature(value: getFromCenterEndPositionAsCountdownTimeCycleSystemFeature, isPriorityOverride: true);
      getSystemFeatureManagement?.setFromCenterPositionAsIntroductoryConversationSystemFeature(value: getFromCenterPositionAsIntroductoryConversationSystemFeature, isPriorityOverride: true);
      getSystemFeatureManagement?.setFromCenterStartPositionAsPomodoroStartingSystemFeature(value: getFromCenterStartPositionAsPomodoroStartingSystemFeature, isPriorityOverride: true);
      getSystemFeatureManagement?.setFromCenterStartPositionAsPomodoroComingUpSystemFeature(value: getFromCenterStartPositionAsPomodoroComingUpSystemFeature, isPriorityOverride: true);

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [END]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO:
      /// -----
      setSequentialExecutionDetail(value: SequentialExecutionDetail(sequentialExecutionController: this));

      ///
      /// TODO: Bắt Đầu Dựa Theo Format Video
      /// TODO: Mở Comment Theo Format Đang Áp Dụng
      ///

      if (SystemConfig.isFormatVocabularyList == true) {
        setVocabularyScript(value: VocabularyScriptModel(sequentialExecutionController: this));
      }
      if (SystemConfig.isFormatMemoryGameBoard == true) {
        setMemoryScript(value: MemoryScriptModel(sequentialExecutionController: this));
      }

      if (SystemConfig.isFormatCrosswordPuzzleGameBoard == true) {
        setCrosswordPuzzleScript(value: CrosswordPuzzleScriptModel(sequentialExecutionController: this));
      }

      /// -----
      /// TODO:
      /// -----
      setSystemFeature(value: SystemFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getSystemFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getSystemFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getSystemFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getSystemFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// -----
      /// TODO:
      /// -----
      setIntroductionFeature(
        value: IntroductionFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            getIntroductionFeature?.onDeactivateWindow();
          },
        ),
        isPriorityOverride: true,
      );
      getIntroductionFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getIntroductionFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getIntroductionFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getIntroductionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// -----
      /// TODO:
      /// -----
      setIntroductoryConversationFeature(
        value: IntroductoryConversationFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            ///
          },
        ),
        isPriorityOverride: true,
      );
      getIntroductoryConversationFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getIntroductoryConversationFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getIntroductoryConversationFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getIntroductoryConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// -----
      /// TODO:
      /// -----
      setEndingConversationFeature(
        value: EndingConversationFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            ///
          },
        ),
        isPriorityOverride: true,
      );
      getEndingConversationFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getEndingConversationFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getEndingConversationFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getEndingConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// -----
      /// TODO:
      /// -----
      setBreakTimeSpaceFeature(
        value: BreakTimeSpaceFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            ///
          },
        ),
        isPriorityOverride: true,
      );
      getBreakTimeSpaceFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getBreakTimeSpaceFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getBreakTimeSpaceFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getBreakTimeSpaceFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setBackgroundImageFeature(value: BackgroundImageFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getBackgroundImageFeature?.setSizeDx(value: getSizeDx, isPriorityOverride: true, isSetActiveSizeDx: true);
      getBackgroundImageFeature?.setSizeDy(value: getSizeDy, isPriorityOverride: true, isSetActiveSizeDy: true);
      getBackgroundImageFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getBackgroundImageFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setCountdownTimerFeature(value: CountdownTimerFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getCountdownTimerFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDx: true);
      getCountdownTimerFeature?.setSizeDy(value: getSizeDy * 0.6 - (getSizeDy * 0.4 + 15.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getCountdownTimerFeature?.setTopPosition(value: 15.0 + (getSizeDy * 0.4 + 15.0), isPriorityOverride: true, isSetActiveTopPosition: true);
      getCountdownTimerFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setPomodoroFeature(value: PomodoroFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getPomodoroFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getPomodoroFeature?.setSizeDy(value: getSizeDy - (getSizeDy * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDy: true);
      getPomodoroFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getPomodoroFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setPomodoroEndingConversationFeature(value: PomodoroEndingConversationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getPomodoroEndingConversationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getPomodoroEndingConversationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getPomodoroEndingConversationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getPomodoroEndingConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setPomodoroStartingConversationFeature(value: PomodoroStartingConversationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getPomodoroStartingConversationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getPomodoroStartingConversationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getPomodoroStartingConversationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getPomodoroStartingConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularySubjectFeature(value: VocabularySubjectFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularySubjectFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularySubjectFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularySubjectFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularySubjectFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setConversationFeature(value: ConversationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getConversationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getConversationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getConversationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyListFeature(value: VocabularyListFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyListFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyListFeature?.setSizeDy(value: getSizeDy * 1.0 - (getSizeDy * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyListFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getVocabularyListFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setHelpfulStudyAdviceFeature(value: HelpfulStudyAdviceFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getHelpfulStudyAdviceFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getHelpfulStudyAdviceFeature?.setSizeDy(value: getSizeDy * 1.0 - (getSizeDy * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getHelpfulStudyAdviceFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getHelpfulStudyAdviceFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setHelpfulStudyAdviceRelatedToTopicFeature(value: HelpfulStudyAdviceRelatedToTopicFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getHelpfulStudyAdviceRelatedToTopicFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getHelpfulStudyAdviceRelatedToTopicFeature?.setSizeDy(value: getSizeDy * 1.0 - (getSizeDy * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getHelpfulStudyAdviceRelatedToTopicFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getHelpfulStudyAdviceRelatedToTopicFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyListOverallFeature(value: VocabularyListOverallFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyListOverallFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyListOverallFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyListOverallFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getVocabularyListOverallFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyDefinitionFeature(
        value: VocabularyDefinitionFeature(systemStateManagement: getSystemStateManagement, sequentialExecutionController: this, sizeDx: null, sizeDy: null),
        isPriorityOverride: true,
      );
      getVocabularyDefinitionFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyDefinitionFeature?.setSizeDy(value: getSizeDy * 0.6, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyDefinitionFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyDefinitionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyEnglishDefinitionFeature(value: VocabularyEnglishDefinitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyEnglishDefinitionFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyEnglishDefinitionFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyEnglishDefinitionFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyEnglishDefinitionFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setHelpfulAdviceFeature(value: HelpfulAdviceFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getHelpfulAdviceFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getHelpfulAdviceFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getHelpfulAdviceFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getHelpfulAdviceFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setVocabularyConversationFeature(value: VocabularyConversationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyConversationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyConversationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyConversationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyParagraphFeature(value: VocabularyParagraphFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyParagraphFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyParagraphFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyParagraphFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyParagraphFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularySceneTransitionFeature(value: VocabularySceneTransitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularySceneTransitionFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularySceneTransitionFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularySceneTransitionFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getVocabularySceneTransitionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyTitleFeature(value: VocabularyTitleFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyTitleFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyTitleFeature?.setSizeDy(value: getSizeDy * 0.6, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyTitleFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyTitleFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setInterestingKnowledgeConversationFeature(value: InterestingKnowledgeConversationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getInterestingKnowledgeConversationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getInterestingKnowledgeConversationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getInterestingKnowledgeConversationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getInterestingKnowledgeConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setGlobalAnnouncementFeature(value: GlobalAnnouncementFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getGlobalAnnouncementFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getGlobalAnnouncementFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getGlobalAnnouncementFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getGlobalAnnouncementFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFlameWorldFeature(value: FlameWorldFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFlameWorldFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFlameWorldFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFlameWorldFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFlameWorldFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setSceneTransitionFeature(
        value: SceneTransitionFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            getSceneTransitionFeature?.onDeactivateWindow();
          },
        ),
        isPriorityOverride: true,
      );
      getSceneTransitionFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getSceneTransitionFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getSceneTransitionFeature?.setBottomPosition(value: 0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getSceneTransitionFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setSystemTimelineFeature(value: SystemTimelineFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getSystemTimelineFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getSystemTimelineFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getSystemTimelineFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getSystemTimelineFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setBlackboardFeature(value: BlackboardFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getBlackboardFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getBlackboardFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getBlackboardFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getBlackboardFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      ///
      ///
      ///
      setMemoryGameBoardFeature(
        value: MemoryGameBoardFeature(systemStateManagement: getSystemStateManagement, sequentialExecutionController: this, sizeDx: null, sizeDy: null),
        isPriorityOverride: true,
      );
      getMemoryGameBoardFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getMemoryGameBoardFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getMemoryGameBoardFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getMemoryGameBoardFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setMemoryGameBoardSceneTransitionFeature(value: MemoryGameBoardSceneTransitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getMemoryGameBoardSceneTransitionFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getMemoryGameBoardSceneTransitionFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getMemoryGameBoardSceneTransitionFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getMemoryGameBoardSceneTransitionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      ///
      ///
      ///
      setCrosswordPuzzleGameBoardFeature(
        value: CrosswordPuzzleGameBoardFeature(systemStateManagement: getSystemStateManagement, sequentialExecutionController: this, sizeDx: null, sizeDy: null),
        isPriorityOverride: true,
      );
      getCrosswordPuzzleGameBoardFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getCrosswordPuzzleGameBoardFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getCrosswordPuzzleGameBoardFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getCrosswordPuzzleGameBoardFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setCrosswordPuzzleGameBoardSceneTransitionFeature(value: CrosswordPuzzleGameBoardSceneTransitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getCrosswordPuzzleGameBoardSceneTransitionFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getCrosswordPuzzleGameBoardSceneTransitionFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getCrosswordPuzzleGameBoardSceneTransitionFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getCrosswordPuzzleGameBoardSceneTransitionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setContentItemSequentialExecution(
        value: ContentItemSequentialExecution(systemStateManagement: getSystemStateManagement, sequentialExecutionController: this),
        isPriorityOverride: true,
      );

      setWindowWidget(
        value: LayoutBuilder(
          builder: (context, constraints) {
            // return Container();

            return Stack(
              children: [
                /// TODO: BlackboardFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getBackgroundImageFeature?.getWindowWidget ?? Container()),

                /// TODO: GlobalAnnouncementFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getGlobalAnnouncementFeature?.getWindowWidget ?? Container()),

                /// TODO: BlackboardFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getBlackboardFeature?.getWindowWidget ?? Container()),

                /// TODO: CountdownTimerFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getCountdownTimerFeature?.getWindowWidget ?? Container()),

                /// TODO: PomodoroFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getPomodoroFeature?.getWindowWidget ?? Container()),

                /// TODO: PomodoroEndingConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getPomodoroEndingConversationFeature?.getWindowWidget ?? Container()),

                /// TODO: PomodoroStartingConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getPomodoroStartingConversationFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularySubjectFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularySubjectFeature?.getWindowWidget ?? Container()),

                /// TODO: ConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getConversationFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyListFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyListFeature?.getWindowWidget ?? Container()),

                /// TODO: HelpfulStudyAdviceFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getHelpfulStudyAdviceFeature?.getWindowWidget ?? Container()),

                /// TODO: HelpfulStudyAdviceRelatedToTopicFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getHelpfulStudyAdviceRelatedToTopicFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyListOverallFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyListOverallFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyDefinitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyDefinitionFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyEnglishDefinitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyEnglishDefinitionFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyConversationFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyParagraphFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyParagraphFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyTitleFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyTitleFeature?.getWindowWidget ?? Container()),

                /// TODO: InterestingKnowledgeConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getInterestingKnowledgeConversationFeature?.getWindowWidget ?? Container()),

                ///
                ///
                ///

                /// TODO: MemoryGameBoardFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getMemoryGameBoardFeature?.getWindowWidget ?? Container()),

                /// TODO: CrosswordPuzzleGameBoardFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getCrosswordPuzzleGameBoardFeature?.getWindowWidget ?? Container()),

                ///
                ///
                ///

                /// TODO: FlameWorldFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFlameWorldFeature?.getWindowWidget ?? Container()),

                /// TODO: SceneTransitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getSceneTransitionFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularySceneTransitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularySceneTransitionFeature?.getWindowWidget ?? Container()),

                /// TODO: MemoryGameBoardSceneTransitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getMemoryGameBoardSceneTransitionFeature?.getWindowWidget ?? Container()),

                /// TODO: CrosswordPuzzleGameBoardSceneTransitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getCrosswordPuzzleGameBoardSceneTransitionFeature?.getWindowWidget ?? Container()),

                /// TODO: SystemTimelineFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getSystemTimelineFeature?.getWindowWidget ?? Container()),

                /// TODO: BreakTimeSpaceFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getBreakTimeSpaceFeature?.getWindowWidget ?? Container()),

                /// TODO: HelpfulAdviceFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getHelpfulAdviceFeature?.getWindowWidget ?? Container()),

                /// TODO: IntroductoryConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getIntroductoryConversationFeature?.getWindowWidget ?? Container()),

                /// TODO: EndingConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getEndingConversationFeature?.getWindowWidget ?? Container()),

                /// TODO: IntroductionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getIntroductionFeature?.getWindowWidget ?? Container()),

                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// TODO: Feature Management
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// TODO: Feature Management Details [START]
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

                /// ----- | ----- | ----- | ----- | ----- |
                /// TODO: Functional Feature Management
                /// ----- | ----- | ----- | ----- | ----- |

                /// TODO:
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.getWindowWidget ?? Container()),

                /// ----- | ----- | ----- | ----- | ----- |
                /// TODO: System Feature Management
                /// ----- | ----- | ----- | ----- | ----- |

                /// TODO:
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromBottomEndPositionAsPomodoroCycleSystemFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterPositionAsIntroductoryConversationSystemFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterStartPositionAsPomodoroStartingSystemFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.getWindowWidget ?? Container()),

                /// TODO:
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.getWindowWidget ?? Container()),
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getWindowWidget ?? Container()),

                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// TODO: Feature Management Details [END]
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
                /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
              ],
            );
          },
        ),
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
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      await getFunctionalFeatureManagement?.onSetupRoot();
      await getSystemFeatureManagement?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [START]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: Functional Feature Management
      /// ----- | ----- | ----- | ----- | ----- |

      /// TODO:
      await getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.onSetupRoot();
      await getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.onSetupRoot();
      await getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.onSetupRoot();
      await getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.onSetupRoot();
      await getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.onSetupRoot();
      await getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.onSetupRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.onSetupRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.onSetupRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.onSetupRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.onSetupRoot();
      await getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: System Feature Management
      /// ----- | ----- | ----- | ----- | ----- |

      /// TODO:
      await getFromBottomEndPositionAsPomodoroCycleSystemFeature?.onSetupRoot();
      await getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.onSetupRoot();
      await getFromCenterPositionAsIntroductoryConversationSystemFeature?.onSetupRoot();
      await getFromCenterStartPositionAsPomodoroStartingSystemFeature?.onSetupRoot();
      await getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [END]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO:
      /// -----
      await getSequentialExecutionDetail?.onSetupRoot();
      await getVocabularyScript?.onSetupRoot();

      /// -----
      /// TODO:
      /// -----
      await getSystemFeature?.onSetupRoot();
      await getIntroductionFeature?.onSetupRoot();
      await getBreakTimeSpaceFeature?.onSetupRoot();
      await getIntroductoryConversationFeature?.onSetupRoot();
      await getEndingConversationFeature?.onSetupRoot();
      await getBackgroundImageFeature?.onSetupRoot();
      await getCountdownTimerFeature?.onSetupRoot();
      await getPomodoroFeature?.onSetupRoot();
      await getPomodoroEndingConversationFeature?.onSetupRoot();
      await getPomodoroStartingConversationFeature?.onSetupRoot();
      await getVocabularySubjectFeature?.onSetupRoot();
      await getConversationFeature?.onSetupRoot();
      await getVocabularyListFeature?.onSetupRoot();
      await getHelpfulStudyAdviceFeature?.onSetupRoot();
      await getHelpfulStudyAdviceRelatedToTopicFeature?.onSetupRoot();
      await getVocabularyListOverallFeature?.onSetupRoot();
      await getVocabularyDefinitionFeature?.onSetupRoot();
      await getVocabularyTitleFeature?.onSetupRoot();
      await getVocabularyEnglishDefinitionFeature?.onSetupRoot();
      await getHelpfulAdviceFeature?.onSetupRoot();
      await getVocabularyConversationFeature?.onSetupRoot();
      await getVocabularyParagraphFeature?.onSetupRoot();
      await getVocabularySceneTransitionFeature?.onSetupRoot();
      await getInterestingKnowledgeConversationFeature?.onSetupRoot();
      await getGlobalAnnouncementFeature?.onSetupRoot();
      await getFlameWorldFeature?.onSetupRoot();
      await getSceneTransitionFeature?.onSetupRoot();
      await getSystemTimelineFeature?.onSetupRoot();
      await getBlackboardFeature?.onSetupRoot();

      ///
      await getMemoryGameBoardFeature?.onSetupRoot();
      await getMemoryGameBoardSceneTransitionFeature?.onSetupRoot();

      ///
      await getCrosswordPuzzleGameBoardFeature?.onSetupRoot();
      await getCrosswordPuzzleGameBoardSceneTransitionFeature?.onSetupRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [START]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: Functional Feature Management
      /// ----- | ----- | ----- | ----- | ----- |

      /// TODO:
      getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature
        ?..setConditionActiveByRightDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromTopEndPositionAsOneCharacterConversationFunctionalFeature
        ?..setConditionActiveByRightDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: System Feature Management
      /// ----- | ----- | ----- | ----- | ----- |

      /// TODO:
      getFromBottomEndPositionAsPomodoroCycleSystemFeature
        ?..setConditionActiveByBottomDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterEndPositionAsCountdownTimeCycleSystemFeature
        ?..setConditionActiveByRightDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterPositionAsIntroductoryConversationSystemFeature
        ?..setConditionActiveByBottomDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterStartPositionAsPomodoroStartingSystemFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      /// TODO:
      getFromCenterStartPositionAsPomodoroComingUpSystemFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [END]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      getIntroductionFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getBreakTimeSpaceFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getIntroductoryConversationFeature
        ?..setConditionActiveByBottomDirection()
        ..onDeactivateWindow();
      getEndingConversationFeature
        ?..setConditionActiveByBottomDirection()
        ..onDeactivateWindow();
      getBackgroundImageFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getCountdownTimerFeature
        ?..setConditionActiveByRightDirection()
        ..onDeactivateWindow();
      getPomodoroFeature
        ?..setConditionActiveByBottomDirection()
        ..onDeactivateWindow();
      getPomodoroEndingConversationFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getPomodoroStartingConversationFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getVocabularySubjectFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getConversationFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getVocabularyListFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getHelpfulStudyAdviceFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getHelpfulStudyAdviceRelatedToTopicFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getVocabularyListOverallFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getVocabularyDefinitionFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getVocabularyTitleFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      getVocabularyEnglishDefinitionFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getHelpfulAdviceFeature
        ?..setConditionActiveByRightDirection()
        ..onDeactivateWindow();
      getVocabularyConversationFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getVocabularyParagraphFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getVocabularySceneTransitionFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getInterestingKnowledgeConversationFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      getGlobalAnnouncementFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getFlameWorldFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getSceneTransitionFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getSystemTimelineFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getBlackboardFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      ///
      ///
      ///
      getMemoryGameBoardFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getMemoryGameBoardSceneTransitionFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      ///
      ///
      ///
      getCrosswordPuzzleGameBoardFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getCrosswordPuzzleGameBoardSceneTransitionFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      ///
      ///
      ///
      await getContentItemSequentialExecution?.onSetupRoot();
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
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      await getFunctionalFeatureManagement?.onInitRoot();
      await getSystemFeatureManagement?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [START]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: Functional Feature Management
      /// ----- | ----- | ----- | ----- | ----- |

      /// TODO:
      await getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature?.onInitRoot();
      await getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature?.onInitRoot();
      await getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.onInitRoot();
      await getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature?.onInitRoot();
      await getFromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature?.onInitRoot();
      await getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.onInitRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS01FunctionalFeature?.onInitRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS02FunctionalFeature?.onInitRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS03FunctionalFeature?.onInitRoot();
      await getFromCenterPositionAsTheIntroductorySectionPomodoroSS04FunctionalFeature?.onInitRoot();
      await getFromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- |
      /// TODO: System Feature Management
      /// ----- | ----- | ----- | ----- | ----- |

      /// TODO:
      await getFromBottomEndPositionAsPomodoroCycleSystemFeature?.onInitRoot();
      await getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.onInitRoot();
      await getFromCenterPositionAsIntroductoryConversationSystemFeature?.onInitRoot();
      await getFromCenterStartPositionAsPomodoroStartingSystemFeature?.onInitRoot();
      await getFromCenterStartPositionAsPomodoroComingUpSystemFeature?.onInitRoot();

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Feature Management Details [END]
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      /// -----
      /// TODO:
      /// -----
      await getSequentialExecutionDetail?.onInitRoot();
      await getVocabularyScript?.onInitRoot();

      /// -----
      /// TODO:
      /// -----
      await getSystemFeature?.onInitRoot();
      await getIntroductionFeature?.onInitRoot();
      await getBreakTimeSpaceFeature?.onInitRoot();
      await getIntroductoryConversationFeature?.onInitRoot();
      await getEndingConversationFeature?.onInitRoot();
      await getBackgroundImageFeature?.onInitRoot();
      await getCountdownTimerFeature?.onInitRoot();
      await getPomodoroFeature?.onInitRoot();
      await getPomodoroEndingConversationFeature?.onInitRoot();
      await getPomodoroStartingConversationFeature?.onInitRoot();
      await getVocabularySubjectFeature?.onInitRoot();
      await getConversationFeature?.onInitRoot();
      await getVocabularyListFeature?.onInitRoot();
      await getHelpfulStudyAdviceFeature?.onInitRoot();
      await getHelpfulStudyAdviceRelatedToTopicFeature?.onInitRoot();
      await getVocabularyListOverallFeature?.onInitRoot();
      await getVocabularyDefinitionFeature?.onInitRoot();
      await getVocabularyTitleFeature?.onInitRoot();
      await getVocabularyEnglishDefinitionFeature?.onInitRoot();
      await getHelpfulAdviceFeature?.onInitRoot();
      await getVocabularyConversationFeature?.onInitRoot();
      await getVocabularyParagraphFeature?.onInitRoot();
      await getVocabularySceneTransitionFeature?.onInitRoot();
      await getInterestingKnowledgeConversationFeature?.onInitRoot();
      await getGlobalAnnouncementFeature?.onInitRoot();
      await getFlameWorldFeature?.onInitRoot();
      await getSceneTransitionFeature?.onInitRoot();
      await getSystemTimelineFeature?.onInitRoot();
      await getBlackboardFeature?.onInitRoot();

      ///
      await getMemoryGameBoardFeature?.onInitRoot();
      await getMemoryGameBoardSceneTransitionFeature?.onInitRoot();

      ///
      await getCrosswordPuzzleGameBoardFeature?.onInitRoot();
      await getCrosswordPuzzleGameBoardSceneTransitionFeature?.onInitRoot();

      ///
      ///
      ///
      await getContentItemSequentialExecution?.onInitRoot();
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

  Future<void> start() async {
    // getVocabularyScript?.onStartVocabularyDefinitionSS01();

    getContentItemSequentialExecution?.onReady();
    getContentItemSequentialExecution?.onStart();

    return;

    SequentialExecutionStructure? cauTrucThucThiTuanTuSS010 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS020 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS030 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS040 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS050 = SequentialExecutionStructure.onMacDinh();

    cauTrucThucThiTuanTuSS010.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
          getPomodoroFeature?.onActivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS020.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
          getPomodoroFeature?.onDeactivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS030.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 15) {
          getPomodoroFeature?.onActivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS040.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
          getPomodoroFeature?.onDeactivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS050.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 25) {
          getPomodoroFeature?.onActivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS010.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS020.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS020.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS030.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS030.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS040.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS040.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS050.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS050.onThucThiHoanTat = () async {
      getCountdownTimerFeature?.onActivateWindow();
    };

    await cauTrucThucThiTuanTuSS010.onThucThiTuanTu(interval: const Duration(milliseconds: 1000));

    return;
  }

  void updateSeconds() {
    // getPomodoroFeature?.getPomodoroTime?.onUpdate();

    ///
    // getVocabularyDefinitionFeature?.getVocabularyTime?.onUpdate();

    ///
    // getMemoryGameBoardFeature?.getMemoryTime?.onUpdate();

    ///
    // getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.onUpdate();

    // getSequentialExecutionDetail?.onUpdate();

    ///
    getContentItemSequentialExecution?.onUpdate();

    /// TODO: 00:00:01
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getBackgroundImageFeature?.onActivateWindow();
      getSystemFeatureManagement?.getFromBottomEndPositionAsPomodoroCycleSystemFeature?.onActivateWindow();
      getSystemFeatureManagement?.getFromCenterEndPositionAsCountdownTimeCycleSystemFeature?.onActivateWindow();

      // getFunctionalFeatureManagement?.getTwoCharacterConversationFunctionalFeature?.onActivateWindow();
    }

    return;

    /// TODO: 00:00:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      getGlobalAnnouncementFeature?.onActivateWindow();
      getBackgroundImageFeature?.onActivateWindow();
      // getIntroductionFeature?.onActivateWindow();

      ///
    }

    /// TODO: 00:00:05
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      getCountdownTimerFeature?.onActivateWindow();
      getPomodoroFeature?.onActivateWindow();

      // getPomodoroFeature?.getPomodoroTime?.pause();
      getSystemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.pause();

      // getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

      ///
    }

    /// TODO: 00:00:10
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
      // getPomodoroFeature?.getPomodoroTime?.resume();
      getSystemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.resume();

      ///
    }

    /// TODO: 00:00:20
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
      ///
    }

    /// TODO: 00:00:30
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      ///
    }

    /// TODO: 00:00:40
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 40) {
      ///
    }

    /// TODO: 00:00:50
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 50) {
      ///
    }

    /// TODO: 00:01:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      ///
    }

    /// TODO: 00:01:10
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
      ///
    }

    /// TODO: 00:01:20
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
      ///
    }

    /// TODO: 00:01:30
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      ///
    }

    /// TODO: 00:01:40
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 40) {
      ///
    }

    /// TODO: 00:01:50
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 50) {
      ///
    }

    /// TODO: 00:02:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      ///
    }

    /// TODO: 00:02:10
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
      ///
    }

    /// TODO: 00:02:20
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
      ///
    }

    /// TODO: 00:02:30
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      ///
    }

    /// TODO: 00:02:40
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 40) {
      ///
    }

    /// TODO: 00:02:50
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 50) {
      ///
    }

    /// TODO: 00:03:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 3 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      ///
    }

    return;

    ///
    /// TODO: GlobalAnnouncementFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getGlobalAnnouncementFeature?.onActivateWindow();
    }

    ///
    /// TODO: BackgroundImageFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getBreakTimeSpaceFeature?.onActivateWindow();
    }

    ///
    /// TODO: BackgroundImageFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getBackgroundImageFeature?.onActivateWindow();
    }

    ///
    /// TODO: BlackboardFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getBlackboardFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularyDefinitionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      // getVocabularyDefinitionFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularyEnglishDefinitionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getVocabularyEnglishDefinitionFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularyListFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getVocabularyListFeature?.onActivateWindow();
    }

    ///
    /// TODO: ConversationFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getConversationFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularySubjectFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getVocabularySubjectFeature?.onActivateWindow();
    }

    ///
    /// TODO: PomodoroFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getPomodoroFeature?.onActivateWindow();
    }

    ///
    /// TODO: CountdownTimerFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getCountdownTimerFeature?.onActivateWindow();
      getCountdownTimerFeature?.onActivateWindowOnCorner(isBottomRight: true, marginBottom: 15.0);
    }

    ///
    /// TODO: SceneTransitionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 3 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 4 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 5 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }

    ///
    /// TODO: IntroductoryConversationFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getIntroductoryConversationFeature?.onActivateWindow();
    }

    ///
    /// TODO: IntroductoryConversationFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      // getIntroductoryConversationFeature?.onDeactivateWindow();
    }

    ///
    /// TODO: IntroductionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 15) {
      // getIntroductionFeature?.onActivateWindow();
    }

    ///
    return;
  }

  void updateMilliSeconds() {
    // getVocabularyDefinitionFeature?.getVocabularyTime?.onUpdate();

    ///
    return;
  }
}
