import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/functional_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/01_start/topic_c_first_start_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/01_start/topic_c_first_start_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/01_start/topic_c_first_start_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/02_finish/topic_c_last_finish_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/02_finish/topic_c_last_finish_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/02_finish/topic_c_last_finish_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_1st_From_Done_First_Start_To_Go_Pomodoro_Stay_Focused_SS01.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_2nd_From_Done_Pomodoro_Stay_Focused_SS01_To_Go_Pomodoro_Break_Time_SS01.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_3rd_From_Done_Pomodoro_Break_Time_SS01_To_Go_Pomodoro_Stay_Focused_SS02.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_4th_From_Done_Pomodoro_Stay_Focused_SS02_To_Go_Pomodoro_Break_Time_SS02.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_5th_From_Done_Pomodoro_Break_Time_SS02_To_Go_Pomodoro_Stay_Focused_SS03.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_6th_From_Done_Pomodoro_Stay_Focused_SS03_To_Go_Pomodoro_Break_Time_SS03.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_7th_From_Done_Pomodoro_Break_Time_SS03_To_Go_Pomodoro_Stay_Focused_SS04.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_8th_From_Done_Pomodoro_Stay_Focused_SS04_To_Go_Pomodoro_Break_Time_SS04.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/03_bridge/topic_c_bridge_script_frame_as_9th_From_Done_Pomodoro_Break_Time_SS04_To_Go_Last_Finish.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss01/topic_c_pomodoro_break_time_ss01_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss01/topic_c_pomodoro_break_time_ss01_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss01/topic_c_pomodoro_break_time_ss01_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss02/topic_c_pomodoro_break_time_ss02_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss02/topic_c_pomodoro_break_time_ss02_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss02/topic_c_pomodoro_break_time_ss02_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss03/topic_c_pomodoro_break_time_ss03_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss03/topic_c_pomodoro_break_time_ss03_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss03/topic_c_pomodoro_break_time_ss03_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss04/topic_c_pomodoro_break_time_ss04_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss04/topic_c_pomodoro_break_time_ss04_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/04_break_time/break_time_ss04/topic_c_pomodoro_break_time_ss04_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss01/topic_c_pomodoro_stay_focused_ss01_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss01/topic_c_pomodoro_stay_focused_ss01_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss01/topic_c_pomodoro_stay_focused_ss01_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss02/topic_c_pomodoro_stay_focused_ss02_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss02/topic_c_pomodoro_stay_focused_ss02_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss02/topic_c_pomodoro_stay_focused_ss02_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss03/topic_c_pomodoro_stay_focused_ss03_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss03/topic_c_pomodoro_stay_focused_ss03_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss03/topic_c_pomodoro_stay_focused_ss03_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss04/topic_c_pomodoro_stay_focused_ss04_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss04/topic_c_pomodoro_stay_focused_ss04_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/specific_scripts/topic_c/script_frame/05_stay_focused/stay_focused_ss04/topic_c_pomodoro_stay_focused_ss04_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/system_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/details/step_item_content_as_new_message_conversation.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';

class TopicBScript extends FunctionalSequentialExecutionScript {
  TopicBScript({required super.systemStateManagement, required super.sequentialExecutionController, required super.contentItemSequentialExecution, required super.functionalSequentialExecutionController});

  /// -----
  /// TODO:
  /// -----
  @override
  void onSetScriptFrame() {
    // 01_start
    setFirstStartScriptFrame1stAsGo(
      value: TopicCFirstStartScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setFirstStartScriptFrame2ndAsMain(
      value: TopicCFirstStartScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setFirstStartScriptFrame3rdAsDone(
      value: TopicCFirstStartScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    // 02_finish
    setLastFinishScriptFrame1stAsGo(
      value: TopicCLastFinishScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setLastFinishScriptFrame2ndAsMain(
      value: TopicCLastFinishScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setLastFinishScriptFrame3rdAsDone(
      value: TopicCLastFinishScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    // 03_bridge
    setBridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01(
      value: TopicCBridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01(
      value: TopicCBridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02(
      value: TopicCBridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02(
      value: TopicCBridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03(
      value: TopicCBridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03(
      value: TopicCBridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04(
      value: TopicCBridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04(
      value: TopicCBridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setBridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish(
      value: TopicCBridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    // 04_break_time
    setPomodoroBreakTimeSs01ScriptFrame1stAsGo(
      value: TopicCPomodoroBreakTimeSs01ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs01ScriptFrame2ndAsMain(
      value: TopicCPomodoroBreakTimeSs01ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs01ScriptFrame3rdAsDone(
      value: TopicCPomodoroBreakTimeSs01ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    setPomodoroBreakTimeSs02ScriptFrame1stAsGo(
      value: TopicCPomodoroBreakTimeSs02ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs02ScriptFrame2ndAsMain(
      value: TopicCPomodoroBreakTimeSs02ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs02ScriptFrame3rdAsDone(
      value: TopicCPomodoroBreakTimeSs02ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    setPomodoroBreakTimeSs03ScriptFrame1stAsGo(
      value: TopicCPomodoroBreakTimeSs03ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs03ScriptFrame2ndAsMain(
      value: TopicCPomodoroBreakTimeSs03ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs03ScriptFrame3rdAsDone(
      value: TopicCPomodoroBreakTimeSs03ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    setPomodoroBreakTimeSs04ScriptFrame1stAsGo(
      value: TopicCPomodoroBreakTimeSs04ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs04ScriptFrame2ndAsMain(
      value: TopicCPomodoroBreakTimeSs04ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroBreakTimeSs04ScriptFrame3rdAsDone(
      value: TopicCPomodoroBreakTimeSs04ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    // 05_stay_focused
    setPomodoroStayFocusedSs01ScriptFrame1stAsGo(
      value: TopicCPomodoroStayFocusedSs01ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs01ScriptFrame2ndAsMain(
      value: TopicCPomodoroStayFocusedSs01ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs01ScriptFrame3rdAsDone(
      value: TopicCPomodoroStayFocusedSs01ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    setPomodoroStayFocusedSs02ScriptFrame1stAsGo(
      value: TopicCPomodoroStayFocusedSs02ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs02ScriptFrame2ndAsMain(
      value: TopicCPomodoroStayFocusedSs02ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs02ScriptFrame3rdAsDone(
      value: TopicCPomodoroStayFocusedSs02ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    setPomodoroStayFocusedSs03ScriptFrame1stAsGo(
      value: TopicCPomodoroStayFocusedSs03ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs03ScriptFrame2ndAsMain(
      value: TopicCPomodoroStayFocusedSs03ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs03ScriptFrame3rdAsDone(
      value: TopicCPomodoroStayFocusedSs03ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    setPomodoroStayFocusedSs04ScriptFrame1stAsGo(
      value: TopicCPomodoroStayFocusedSs04ScriptFrame1stAsGo(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs04ScriptFrame2ndAsMain(
      value: TopicCPomodoroStayFocusedSs04ScriptFrame2ndAsMain(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );
    setPomodoroStayFocusedSs04ScriptFrame3rdAsDone(
      value: TopicCPomodoroStayFocusedSs04ScriptFrame3rdAsDone(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    ///
    return;
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Section
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemSection() async {
    ///
    /// TODO: Xác Định Các Section Sẽ Có Nội Dung (Nội Dung = Tất Cả Các Content Item Unit Trong Section)
    ///

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----

    /// -----
    /// TODO: Content Item Section SS01
    /// -----

    getContentItemSequentialExecution?.getContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

    /// TODO: Kịch Bản Bắt Đầu Section SS01
    getContentItemSequentialExecution?.getContentItemSectionSS01?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[START SECTION SS01][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
            getSequentialExecutionController?.getHelpfulAdviceFeature?.onActivateWindow();
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// TODO: Kịch Bản Kết Thúc Section SS01
    getContentItemSequentialExecution?.getContentItemSectionSS01?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END SECTION SS01][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----

    /// -----
    /// TODO: Content Item Section SS02
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

    /// TODO: Kịch Bản Bắt Đầu Section SS02
    getContentItemSequentialExecution?.getContentItemSectionSS02?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[START SECTION SS02][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// TODO: Kịch Bản Kết Thúc Section SS02
    getContentItemSequentialExecution?.getContentItemSectionSS02?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END SECTION SS02][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----

    /// -----
    /// TODO: Content Item Section SS03
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

    /// TODO: Kịch Bản Bắt Đầu Section SS03
    getContentItemSequentialExecution?.getContentItemSectionSS03?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[START SECTION SS03][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// TODO: Kịch Bản Kết Thúc Section SS03
    getContentItemSequentialExecution?.getContentItemSectionSS03?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END SECTION SS03][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----

    /// -----
    /// TODO: Content Item Section SS04
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

    /// TODO: Kịch Bản Bắt Đầu Section SS04
    getContentItemSequentialExecution?.getContentItemSectionSS04?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[START SECTION SS04][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// TODO: Kịch Bản Kết Thúc Section SS04
    getContentItemSequentialExecution?.getContentItemSectionSS04?.setFunctionalSequentialExecutionStepItemStateAsStartSection(
      value: FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END SECTION SS04][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | -----

    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS01
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS01() async {
    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: [GAP]
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__GAP]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 1, isPriorityOverride: true),
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [Content Item Section SS01]
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS01?.getContentItemUnitListAsStack?.add(contentItemUnit);

    return;

    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS02
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS02() async {
    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: [GAP]
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__GAP]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 1, isPriorityOverride: true),
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [Content Item Section SS02]
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS02?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS03
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS03() async {
    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: [GAP]
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__GAP]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 1, isPriorityOverride: true),
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [Content Item Section SS01]
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS03?.getContentItemUnitListAsStack?.add(contentItemUnit);

    return;

    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS04
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS04() async {
    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: [GAP]
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__GAP]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 1, isPriorityOverride: true),
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [Content Item Section SS01]
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS04?.getContentItemUnitListAsStack?.add(contentItemUnit);

    return;

    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS05
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS05() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS06
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS06() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS07
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS07() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS08
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS08() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS09
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS09() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS10
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS10() async {
    ///
  }

  ///

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS11
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS11() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS12
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS12() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS13
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS13() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS14
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS14() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS15
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS15() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS16
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS16() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS17
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS17() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS18
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS18() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS19
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS19() async {
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS20
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS20() async {
    ///
  }

  /// -----
  /// TODO: Gắn Kết Kịch Bản Của Section Vào Một Pomodoro Theo Chỉ Định
  /// TODO: [Có Thể Thay Đổi Tùy Vào Kịch Bản]
  /// -----
  @override
  Future<void> onGenerateScriptAsPomodoroContent() async {
    /// TODO: Set [ContentItemSectionSS01] Và [ContentItemSectionSS02] Đến [PomodoroStayFocusedContentStageSS01]
    getContentItemSequentialExecution?.getContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS01);
    getContentItemSequentialExecution?.getContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS01);

    /// TODO: Set [ContentItemSectionSS03] Và [ContentItemSectionSS04] Đến [PomodoroStayFocusedContentStageSS02]
    getContentItemSequentialExecution?.getContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS02);
    getContentItemSequentialExecution?.getContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS03);

    /// TODO: Set [ContentItemSectionSS05] Và [ContentItemSectionSS06] Đến [PomodoroStayFocusedContentStageSS03]
    getContentItemSequentialExecution?.getContentItemSectionSS05?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS03);
    getContentItemSequentialExecution?.getContentItemSectionSS06?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS03);

    /// TODO: Set [ContentItemSectionSS07] Và [ContentItemSectionSS08] Đến [PomodoroStayFocusedContentStageSS04]
    getContentItemSequentialExecution?.getContentItemSectionSS07?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS04);
    getContentItemSequentialExecution?.getContentItemSectionSS08?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS04);

    ///
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

  @override
  Future<void> onGenerateScriptBindToFirstStartAsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoFirstStartContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[GO_FIRST_START][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoFirstStartSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [GoFirstStart Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoFirstStartContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToFirstStartAsMain() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getFirstStartContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 2.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 2.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 3.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 3.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 4.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 4.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 5.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[FIRST_START][Step] 5.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getFirstStartSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [FirstStart Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getFirstStartContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToFirstStartAsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneFirstStartContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_FIRST_START][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDoneFirstStartSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneFirstStart Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneFirstStartContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Last Finish Section
  /// TODO: Section Kết Thúc Của Video
  /// -----

  @override
  Future<void> onGenerateScriptBindToLastFinishAsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoLastFinishContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[GO_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoLastFinishSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [GoLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoLastFinishContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToLastFinishAsMain() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getLastFinishContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 2.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 2.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 3.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 3.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 4.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 4.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 5.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[LAST_FINISH][Step] 5.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getLastFinishSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [LastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getLastFinishContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToLastFinishAsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneLastFinishContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDoneLastFinishSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneLastFinishContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Bridge From - DoneFirstStartSystemItem - To - GoPomodoroStayFocusedSS01
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge1stFromDoneFirstStartToGoPomodoroStayFocusedSS01() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///
    ///
    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// -----
    /// TODO: [OPEN INTRODUCTORY CONVERSATION WINDOW]
    /// -----
    getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onStartIntroductoryConversationAsOpenWindow, contentItemUnit: contentItemUnit);

    /// ----- | ----- | -----
    /// TODO: Step GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID_GAP_]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[]');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID_GAP_]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// -----
    /// TODO: [CLOSE INTRODUCTORY CONVERSATION WINDOW]
    /// -----
    getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onFinishIntroductoryConversationAsCloseWindow, contentItemUnit: contentItemUnit);

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[]');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS01 - To - GoPomodoroBreakTimeSS01
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge2ndFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///
    ///
    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroStayFocusedSS01 - To - GoPomodoroBreakTimeSS01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS01 - To - GoPomodoroStayFocusedSS02
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge3rdFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroBreakTimeSS01 - To - GoPomodoroStayFocusedSS02][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS02 - To - GoPomodoroBreakTimeSS02
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge4thFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroStayFocusedSS02 - To - GoPomodoroBreakTimeSS02][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS02 - To - GoPomodoroStayFocusedSS03
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge5thFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroBreakTimeSS02 - To - GoPomodoroStayFocusedSS03][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS03 - To - GoPomodoroBreakTimeSS03
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge6thFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroStayFocusedSS03 - To - GoPomodoroBreakTimeSS03][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS03 - To - GoPomodoroStayFocusedSS04
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge7thFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroBreakTimeSS03 - To - GoPomodoroStayFocusedSS04][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroStayFocusedSS04 - To - GoPomodoroBreakTimeSS04
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge8thFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroStayFocusedSS04 - To - GoPomodoroBreakTimeSS04][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Bridge From - DonePomodoroBreakTimeSS04 - To - GoLastFinishSystemItem
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge9thFromDonePomodoroBreakTimeSS04ToGoLastFinish() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[Bridge From - DonePomodoroBreakTimeSS04 - To - GoLastFinishSystemItem][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS01
  /// -----

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS01?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS01?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS01?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS02
  /// -----
  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS02?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS02?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS02?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS03
  /// -----
  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS03?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS03?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS03?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS04
  /// -----
  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS04?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS04?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS04?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG (Bao Gồm Các Unit Trong Các Section)
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS01
  /// -----

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS01?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// -----
    /// TODO: [OPEN TWO CHARACTER CONVERSATION WINDOW]
    /// -----
    getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onStartTwoCharacterConversationAsOpenWindow, contentItemUnit: contentItemUnit);

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asMessageFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[CONTENT_ITEM_SECTION_01][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
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
    );

    /// ----- | ----- | -----
    /// TODO: Step 0.0 - GAP
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 0.0 - [GAP]');
            }

            ///
          }
          ..onPerform = () {
            ///
          }
          ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
      ),
    );

    /// -----
    /// TODO: [CLOSE TWO CHARACTER CONVERSATION WINDOW]
    /// -----
    getSystemSequentialExecutionScript?.onSystemSequentialExecutionAs(executionId: SystemSequentialExecutionScript.onFinishTwoCharacterConversationAsCloseWindow, contentItemUnit: contentItemUnit);

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS01?.getContentItemUnitListAsStack?.add(contentItemUnit);

    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS01?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS01?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS02
  /// -----

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS02?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS02?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS02?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS03
  /// -----

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS03?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS03?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS03?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với StayFocused Section SS04
  /// -----

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsGo() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS04?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsDone() async {
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    /// TODO: SYSTEM REQUIRED !!!
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

    ///

    /// -----
    /// TODO: Tạo ContentItemUnit
    /// -----
    ContentItemUnit contentItemUnit = ContentItemUnit();
    await contentItemUnit.onSetupRoot();
    await contentItemUnit.onInitRoot();

    /// ----- | ----- | -----
    /// TODO: Step 1.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            ///
          },
      ),
    );

    /// ----- | ----- | -----
    /// TODO: Step End
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[END]__________[DONE_LAST_FINISH][Step] 1.0');
            }

            ///
          }
          ..onPerform = () {
            if (kDebugMode) {
              print('[ON_PERFORM]__________[PERFORM_COMPLETED]'); // ok
            }

            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            /// [TODO: SYSTEM REQUIRED !!!]
            getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS04?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [DoneLastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS04?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO:
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

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
