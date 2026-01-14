import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/04_content_item_sequential_execution/content_item_sequential_execution.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/01_start/first_start_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/01_start/first_start_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/01_start/first_start_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/02_finish/last_finish_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/02_finish/last_finish_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/02_finish/last_finish_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_1st_From_Done_First_Start_To_Go_Pomodoro_Stay_Focused_SS01.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_2nd_From_Done_Pomodoro_Stay_Focused_SS01_To_Go_Pomodoro_Break_Time_SS01.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_3rd_From_Done_Pomodoro_Break_Time_SS01_To_Go_Pomodoro_Stay_Focused_SS02.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_4th_From_Done_Pomodoro_Stay_Focused_SS02_To_Go_Pomodoro_Break_Time_SS02.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_5th_From_Done_Pomodoro_Break_Time_SS02_To_Go_Pomodoro_Stay_Focused_SS03.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_6th_From_Done_Pomodoro_Stay_Focused_SS03_To_Go_Pomodoro_Break_Time_SS03.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_7th_From_Done_Pomodoro_Break_Time_SS03_To_Go_Pomodoro_Stay_Focused_SS04.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_8th_From_Done_Pomodoro_Stay_Focused_SS04_To_Go_Pomodoro_Break_Time_SS04.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/03_bridge/bridge_script_frame_as_9th_From_Done_Pomodoro_Break_Time_SS04_To_Go_Last_Finish.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss01/pomodoro_break_time_ss01_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss01/pomodoro_break_time_ss01_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss01/pomodoro_break_time_ss01_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss02/pomodoro_break_time_ss02_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss02/pomodoro_break_time_ss02_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss02/pomodoro_break_time_ss02_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss03/pomodoro_break_time_ss03_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss03/pomodoro_break_time_ss03_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss03/pomodoro_break_time_ss03_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss04/pomodoro_break_time_ss04_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss04/pomodoro_break_time_ss04_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/04_break_time/break_time_ss04/pomodoro_break_time_ss04_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss01/pomodoro_stay_focused_ss01_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss01/pomodoro_stay_focused_ss01_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss01/pomodoro_stay_focused_ss01_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss02/pomodoro_stay_focused_ss02_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss02/pomodoro_stay_focused_ss02_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss02/pomodoro_stay_focused_ss02_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss03/pomodoro_stay_focused_ss03_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss03/pomodoro_stay_focused_ss03_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss03/pomodoro_stay_focused_ss03_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss04/pomodoro_stay_focused_ss04_script_frame_1st_as_go.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss04/pomodoro_stay_focused_ss04_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/05_stay_focused/stay_focused_ss04/pomodoro_stay_focused_ss04_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/system_sequential_execution_script.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

abstract class FunctionalSequentialExecutionScript with ExecutionCore {
  ///
  /// TODO:
  ///
  FunctionalSequentialExecutionScript({
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

    /// -----
    /// TODO:
    /// -----
    setSystemSequentialExecutionScript(
      value: SystemSequentialExecutionScript(
        systemStateManagement: getSystemStateManagement,
        sequentialExecutionController: getSequentialExecutionController,
        contentItemSequentialExecution: getContentItemSequentialExecution,
        functionalSequentialExecutionController: getFunctionalSequentialExecutionController,
      ),
      isPriorityOverride: true,
    );

    onSetScriptFrame();
  }

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

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: SCRIPT FRAMES [START]
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  void onSetScriptFrame();

  // 01_start
  ///
  FirstStartScriptFrame1stAsGo? _firstStartScriptFrame1stAsGo;
  FirstStartScriptFrame1stAsGo? get getFirstStartScriptFrame1stAsGo => _firstStartScriptFrame1stAsGo;
  void setFirstStartScriptFrame1stAsGo({required FirstStartScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _firstStartScriptFrame1stAsGo = value;
    } else {
      _firstStartScriptFrame1stAsGo ??= value;
    }

    return;
  }

  ///
  FirstStartScriptFrame2ndAsMain? _firstStartScriptFrame2ndAsMain;
  FirstStartScriptFrame2ndAsMain? get getFirstStartScriptFrame2ndAsMain => _firstStartScriptFrame2ndAsMain;
  void setFirstStartScriptFrame2ndAsMain({required FirstStartScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _firstStartScriptFrame2ndAsMain = value;
    } else {
      _firstStartScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  ///
  FirstStartScriptFrame3rdAsDone? _firstStartScriptFrame3rdAsDone;
  FirstStartScriptFrame3rdAsDone? get getFirstStartScriptFrame3rdAsDone => _firstStartScriptFrame3rdAsDone;
  void setFirstStartScriptFrame3rdAsDone({required FirstStartScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _firstStartScriptFrame3rdAsDone = value;
    } else {
      _firstStartScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  // 02_finish
  ///
  LastFinishScriptFrame1stAsGo? _lastFinishScriptFrame1stAsGo;
  LastFinishScriptFrame1stAsGo? get getLastFinishScriptFrame1stAsGo => _lastFinishScriptFrame1stAsGo;
  void setLastFinishScriptFrame1stAsGo({required LastFinishScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _lastFinishScriptFrame1stAsGo = value;
    } else {
      _lastFinishScriptFrame1stAsGo ??= value;
    }

    return;
  }

  ///
  LastFinishScriptFrame2ndAsMain? _lastFinishScriptFrame2ndAsMain;
  LastFinishScriptFrame2ndAsMain? get getLastFinishScriptFrame2ndAsMain => _lastFinishScriptFrame2ndAsMain;
  void setLastFinishScriptFrame2ndAsMain({required LastFinishScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _lastFinishScriptFrame2ndAsMain = value;
    } else {
      _lastFinishScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  ///
  LastFinishScriptFrame3rdAsDone? _lastFinishScriptFrame3rdAsDone;
  LastFinishScriptFrame3rdAsDone? get getLastFinishScriptFrame3rdAsDone => _lastFinishScriptFrame3rdAsDone;
  void setLastFinishScriptFrame3rdAsDone({required LastFinishScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _lastFinishScriptFrame3rdAsDone = value;
    } else {
      _lastFinishScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  // 03_bridge
  ///
  BridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01? _bridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01;
  BridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01? get getBridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01 => _bridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01;
  void setBridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01({required BridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01 = value;
    } else {
      _bridgeScriptFrameAs1stFromDoneFirstStartToGoPomodoroStayFocusedSs01 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01? _bridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01;
  BridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01? get getBridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01 => _bridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01;
  void setBridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01({required BridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01 = value;
    } else {
      _bridgeScriptFrameAs2ndFromDonePomodoroStayFocusedSs01ToGoPomodoroBreakTimeSs01 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02? _bridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02;
  BridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02? get getBridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02 => _bridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02;
  void setBridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02({required BridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02 = value;
    } else {
      _bridgeScriptFrameAs3rdFromDonePomodoroBreakTimeSs01ToGoPomodoroStayFocusedSs02 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02? _bridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02;
  BridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02? get getBridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02 => _bridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02;
  void setBridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02({required BridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02 = value;
    } else {
      _bridgeScriptFrameAs4thFromDonePomodoroStayFocusedSs02ToGoPomodoroBreakTimeSs02 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03? _bridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03;
  BridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03? get getBridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03 => _bridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03;
  void setBridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03({required BridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03 = value;
    } else {
      _bridgeScriptFrameAs5thFromDonePomodoroBreakTimeSs02ToGoPomodoroStayFocusedSs03 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03? _bridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03;
  BridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03? get getBridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03 => _bridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03;
  void setBridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03({required BridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03 = value;
    } else {
      _bridgeScriptFrameAs6thFromDonePomodoroStayFocusedSs03ToGoPomodoroBreakTimeSs03 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04? _bridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04;
  BridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04? get getBridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04 => _bridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04;
  void setBridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04({required BridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04 = value;
    } else {
      _bridgeScriptFrameAs7thFromDonePomodoroBreakTimeSs03ToGoPomodoroStayFocusedSs04 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04? _bridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04;
  BridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04? get getBridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04 => _bridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04;
  void setBridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04({required BridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04 = value;
    } else {
      _bridgeScriptFrameAs8thFromDonePomodoroStayFocusedSs04ToGoPomodoroBreakTimeSs04 ??= value;
    }

    return;
  }

  ///
  BridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish? _bridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish;
  BridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish? get getBridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish => _bridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish;
  void setBridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish({required BridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish = value;
    } else {
      _bridgeScriptFrameAs9thFromDonePomodoroBreakTimeSs04ToGoLastFinish ??= value;
    }

    return;
  }

  // 04_break_time
  ///
  PomodoroBreakTimeSs01ScriptFrame1stAsGo? _pomodoroBreakTimeSs01ScriptFrame1stAsGo;
  PomodoroBreakTimeSs01ScriptFrame1stAsGo? get getPomodoroBreakTimeSs01ScriptFrame1stAsGo => _pomodoroBreakTimeSs01ScriptFrame1stAsGo;
  void setPomodoroBreakTimeSs01ScriptFrame1stAsGo({required PomodoroBreakTimeSs01ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs01ScriptFrame1stAsGo = value;
    } else {
      _pomodoroBreakTimeSs01ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs01ScriptFrame2ndAsMain? _pomodoroBreakTimeSs01ScriptFrame2ndAsMain;
  PomodoroBreakTimeSs01ScriptFrame2ndAsMain? get getPomodoroBreakTimeSs01ScriptFrame2ndAsMain => _pomodoroBreakTimeSs01ScriptFrame2ndAsMain;
  void setPomodoroBreakTimeSs01ScriptFrame2ndAsMain({required PomodoroBreakTimeSs01ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs01ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroBreakTimeSs01ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs01ScriptFrame3rdAsDone? _pomodoroBreakTimeSs01ScriptFrame3rdAsDone;
  PomodoroBreakTimeSs01ScriptFrame3rdAsDone? get getPomodoroBreakTimeSs01ScriptFrame3rdAsDone => _pomodoroBreakTimeSs01ScriptFrame3rdAsDone;
  void setPomodoroBreakTimeSs01ScriptFrame3rdAsDone({required PomodoroBreakTimeSs01ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs01ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroBreakTimeSs01ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  ///
  PomodoroBreakTimeSs02ScriptFrame1stAsGo? _pomodoroBreakTimeSs02ScriptFrame1stAsGo;
  PomodoroBreakTimeSs02ScriptFrame1stAsGo? get getPomodoroBreakTimeSs02ScriptFrame1stAsGo => _pomodoroBreakTimeSs02ScriptFrame1stAsGo;
  void setPomodoroBreakTimeSs02ScriptFrame1stAsGo({required PomodoroBreakTimeSs02ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs02ScriptFrame1stAsGo = value;
    } else {
      _pomodoroBreakTimeSs02ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs02ScriptFrame2ndAsMain? _pomodoroBreakTimeSs02ScriptFrame2ndAsMain;
  PomodoroBreakTimeSs02ScriptFrame2ndAsMain? get getPomodoroBreakTimeSs02ScriptFrame2ndAsMain => _pomodoroBreakTimeSs02ScriptFrame2ndAsMain;
  void setPomodoroBreakTimeSs02ScriptFrame2ndAsMain({required PomodoroBreakTimeSs02ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs02ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroBreakTimeSs02ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs02ScriptFrame3rdAsDone? _pomodoroBreakTimeSs02ScriptFrame3rdAsDone;
  PomodoroBreakTimeSs02ScriptFrame3rdAsDone? get getPomodoroBreakTimeSs02ScriptFrame3rdAsDone => _pomodoroBreakTimeSs02ScriptFrame3rdAsDone;
  void setPomodoroBreakTimeSs02ScriptFrame3rdAsDone({required PomodoroBreakTimeSs02ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs02ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroBreakTimeSs02ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  ///
  PomodoroBreakTimeSs03ScriptFrame1stAsGo? _pomodoroBreakTimeSs03ScriptFrame1stAsGo;
  PomodoroBreakTimeSs03ScriptFrame1stAsGo? get getPomodoroBreakTimeSs03ScriptFrame1stAsGo => _pomodoroBreakTimeSs03ScriptFrame1stAsGo;
  void setPomodoroBreakTimeSs03ScriptFrame1stAsGo({required PomodoroBreakTimeSs03ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs03ScriptFrame1stAsGo = value;
    } else {
      _pomodoroBreakTimeSs03ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs03ScriptFrame2ndAsMain? _pomodoroBreakTimeSs03ScriptFrame2ndAsMain;
  PomodoroBreakTimeSs03ScriptFrame2ndAsMain? get getPomodoroBreakTimeSs03ScriptFrame2ndAsMain => _pomodoroBreakTimeSs03ScriptFrame2ndAsMain;
  void setPomodoroBreakTimeSs03ScriptFrame2ndAsMain({required PomodoroBreakTimeSs03ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs03ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroBreakTimeSs03ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs03ScriptFrame3rdAsDone? _pomodoroBreakTimeSs03ScriptFrame3rdAsDone;
  PomodoroBreakTimeSs03ScriptFrame3rdAsDone? get getPomodoroBreakTimeSs03ScriptFrame3rdAsDone => _pomodoroBreakTimeSs03ScriptFrame3rdAsDone;
  void setPomodoroBreakTimeSs03ScriptFrame3rdAsDone({required PomodoroBreakTimeSs03ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs03ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroBreakTimeSs03ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  ///
  PomodoroBreakTimeSs04ScriptFrame1stAsGo? _pomodoroBreakTimeSs04ScriptFrame1stAsGo;
  PomodoroBreakTimeSs04ScriptFrame1stAsGo? get getPomodoroBreakTimeSs04ScriptFrame1stAsGo => _pomodoroBreakTimeSs04ScriptFrame1stAsGo;
  void setPomodoroBreakTimeSs04ScriptFrame1stAsGo({required PomodoroBreakTimeSs04ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs04ScriptFrame1stAsGo = value;
    } else {
      _pomodoroBreakTimeSs04ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs04ScriptFrame2ndAsMain? _pomodoroBreakTimeSs04ScriptFrame2ndAsMain;
  PomodoroBreakTimeSs04ScriptFrame2ndAsMain? get getPomodoroBreakTimeSs04ScriptFrame2ndAsMain => _pomodoroBreakTimeSs04ScriptFrame2ndAsMain;
  void setPomodoroBreakTimeSs04ScriptFrame2ndAsMain({required PomodoroBreakTimeSs04ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs04ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroBreakTimeSs04ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroBreakTimeSs04ScriptFrame3rdAsDone? _pomodoroBreakTimeSs04ScriptFrame3rdAsDone;
  PomodoroBreakTimeSs04ScriptFrame3rdAsDone? get getPomodoroBreakTimeSs04ScriptFrame3rdAsDone => _pomodoroBreakTimeSs04ScriptFrame3rdAsDone;
  void setPomodoroBreakTimeSs04ScriptFrame3rdAsDone({required PomodoroBreakTimeSs04ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroBreakTimeSs04ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroBreakTimeSs04ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  // 05_stay_focused
  ///
  PomodoroStayFocusedSs01ScriptFrame1stAsGo? _pomodoroStayFocusedSs01ScriptFrame1stAsGo;
  PomodoroStayFocusedSs01ScriptFrame1stAsGo? get getPomodoroStayFocusedSs01ScriptFrame1stAsGo => _pomodoroStayFocusedSs01ScriptFrame1stAsGo;
  void setPomodoroStayFocusedSs01ScriptFrame1stAsGo({required PomodoroStayFocusedSs01ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs01ScriptFrame1stAsGo = value;
    } else {
      _pomodoroStayFocusedSs01ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs01ScriptFrame2ndAsMain? _pomodoroStayFocusedSs01ScriptFrame2ndAsMain;
  PomodoroStayFocusedSs01ScriptFrame2ndAsMain? get getPomodoroStayFocusedSs01ScriptFrame2ndAsMain => _pomodoroStayFocusedSs01ScriptFrame2ndAsMain;
  void setPomodoroStayFocusedSs01ScriptFrame2ndAsMain({required PomodoroStayFocusedSs01ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs01ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroStayFocusedSs01ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs01ScriptFrame3rdAsDone? _pomodoroStayFocusedSs01ScriptFrame3rdAsDone;
  PomodoroStayFocusedSs01ScriptFrame3rdAsDone? get getPomodoroStayFocusedSs01ScriptFrame3rdAsDone => _pomodoroStayFocusedSs01ScriptFrame3rdAsDone;
  void setPomodoroStayFocusedSs01ScriptFrame3rdAsDone({required PomodoroStayFocusedSs01ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs01ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroStayFocusedSs01ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  ///
  PomodoroStayFocusedSs02ScriptFrame1stAsGo? _pomodoroStayFocusedSs02ScriptFrame1stAsGo;
  PomodoroStayFocusedSs02ScriptFrame1stAsGo? get getPomodoroStayFocusedSs02ScriptFrame1stAsGo => _pomodoroStayFocusedSs02ScriptFrame1stAsGo;
  void setPomodoroStayFocusedSs02ScriptFrame1stAsGo({required PomodoroStayFocusedSs02ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs02ScriptFrame1stAsGo = value;
    } else {
      _pomodoroStayFocusedSs02ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs02ScriptFrame2ndAsMain? _pomodoroStayFocusedSs02ScriptFrame2ndAsMain;
  PomodoroStayFocusedSs02ScriptFrame2ndAsMain? get getPomodoroStayFocusedSs02ScriptFrame2ndAsMain => _pomodoroStayFocusedSs02ScriptFrame2ndAsMain;
  void setPomodoroStayFocusedSs02ScriptFrame2ndAsMain({required PomodoroStayFocusedSs02ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs02ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroStayFocusedSs02ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs02ScriptFrame3rdAsDone? _pomodoroStayFocusedSs02ScriptFrame3rdAsDone;
  PomodoroStayFocusedSs02ScriptFrame3rdAsDone? get getPomodoroStayFocusedSs02ScriptFrame3rdAsDone => _pomodoroStayFocusedSs02ScriptFrame3rdAsDone;
  void setPomodoroStayFocusedSs02ScriptFrame3rdAsDone({required PomodoroStayFocusedSs02ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs02ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroStayFocusedSs02ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  ///
  PomodoroStayFocusedSs03ScriptFrame1stAsGo? _pomodoroStayFocusedSs03ScriptFrame1stAsGo;
  PomodoroStayFocusedSs03ScriptFrame1stAsGo? get getPomodoroStayFocusedSs03ScriptFrame1stAsGo => _pomodoroStayFocusedSs03ScriptFrame1stAsGo;
  void setPomodoroStayFocusedSs03ScriptFrame1stAsGo({required PomodoroStayFocusedSs03ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs03ScriptFrame1stAsGo = value;
    } else {
      _pomodoroStayFocusedSs03ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs03ScriptFrame2ndAsMain? _pomodoroStayFocusedSs03ScriptFrame2ndAsMain;
  PomodoroStayFocusedSs03ScriptFrame2ndAsMain? get getPomodoroStayFocusedSs03ScriptFrame2ndAsMain => _pomodoroStayFocusedSs03ScriptFrame2ndAsMain;
  void setPomodoroStayFocusedSs03ScriptFrame2ndAsMain({required PomodoroStayFocusedSs03ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs03ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroStayFocusedSs03ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs03ScriptFrame3rdAsDone? _pomodoroStayFocusedSs03ScriptFrame3rdAsDone;
  PomodoroStayFocusedSs03ScriptFrame3rdAsDone? get getPomodoroStayFocusedSs03ScriptFrame3rdAsDone => _pomodoroStayFocusedSs03ScriptFrame3rdAsDone;
  void setPomodoroStayFocusedSs03ScriptFrame3rdAsDone({required PomodoroStayFocusedSs03ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs03ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroStayFocusedSs03ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  ///
  PomodoroStayFocusedSs04ScriptFrame1stAsGo? _pomodoroStayFocusedSs04ScriptFrame1stAsGo;
  PomodoroStayFocusedSs04ScriptFrame1stAsGo? get getPomodoroStayFocusedSs04ScriptFrame1stAsGo => _pomodoroStayFocusedSs04ScriptFrame1stAsGo;
  void setPomodoroStayFocusedSs04ScriptFrame1stAsGo({required PomodoroStayFocusedSs04ScriptFrame1stAsGo? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs04ScriptFrame1stAsGo = value;
    } else {
      _pomodoroStayFocusedSs04ScriptFrame1stAsGo ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs04ScriptFrame2ndAsMain? _pomodoroStayFocusedSs04ScriptFrame2ndAsMain;
  PomodoroStayFocusedSs04ScriptFrame2ndAsMain? get getPomodoroStayFocusedSs04ScriptFrame2ndAsMain => _pomodoroStayFocusedSs04ScriptFrame2ndAsMain;
  void setPomodoroStayFocusedSs04ScriptFrame2ndAsMain({required PomodoroStayFocusedSs04ScriptFrame2ndAsMain? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs04ScriptFrame2ndAsMain = value;
    } else {
      _pomodoroStayFocusedSs04ScriptFrame2ndAsMain ??= value;
    }

    return;
  }

  PomodoroStayFocusedSs04ScriptFrame3rdAsDone? _pomodoroStayFocusedSs04ScriptFrame3rdAsDone;
  PomodoroStayFocusedSs04ScriptFrame3rdAsDone? get getPomodoroStayFocusedSs04ScriptFrame3rdAsDone => _pomodoroStayFocusedSs04ScriptFrame3rdAsDone;
  void setPomodoroStayFocusedSs04ScriptFrame3rdAsDone({required PomodoroStayFocusedSs04ScriptFrame3rdAsDone? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroStayFocusedSs04ScriptFrame3rdAsDone = value;
    } else {
      _pomodoroStayFocusedSs04ScriptFrame3rdAsDone ??= value;
    }

    return;
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: SCRIPT FRAMES [END]
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO:
  /// -----
  Future<void> onGenerateScript() async {
    /// -----
    /// TODO: Xác Định Những [ContentItemSection] Có Nội Dung
    /// -----
    await onGenerateScriptBindToContentItemSection();

    /// -----
    /// TODO: Tích Hợp Vào Luồng Điều Khiển Chính [FlowController]
    /// -----

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: Set Đến SystemTime
    /// -----

    await onGenerateScriptBindToFirstStartAsGo();
    await onGenerateScriptBindToFirstStartAsMain();
    await onGenerateScriptBindToFirstStartAsDone();

    await onGenerateScriptBindToLastFinishAsGo();
    await onGenerateScriptBindToLastFinishAsMain();
    await onGenerateScriptBindToLastFinishAsDone();

    getContentItemSequentialExecution?.getGoFirstStartContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getGoFirstStartSystemContentStage);
    getContentItemSequentialExecution?.getMainFirstStartContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getMainFirstStartSystemContentStage);
    getContentItemSequentialExecution?.getDoneFirstStartContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getDoneFirstStartSystemContentStage);

    getContentItemSequentialExecution?.getGoLastFinishContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getGoLastFinishSystemContentStage);
    getContentItemSequentialExecution?.getMainLastFinishContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getMainLastFinishSystemContentStage);
    getContentItemSequentialExecution?.getDoneLastFinishContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getDoneLastFinishSystemContentStage);

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    await onGenerateScriptBindToBridge1stFromDoneFirstStartToGoPomodoroStayFocusedSS01();
    await onGenerateScriptBindToBridge2ndFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01();
    await onGenerateScriptBindToBridge3rdFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02();
    await onGenerateScriptBindToBridge4thFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02();
    await onGenerateScriptBindToBridge5thFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03();
    await onGenerateScriptBindToBridge6thFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03();
    await onGenerateScriptBindToBridge7thFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04();
    await onGenerateScriptBindToBridge8thFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04();
    await onGenerateScriptBindToBridge9thFromDonePomodoroBreakTimeSS04ToGoLastFinish();

    getContentItemSequentialExecution?.getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(
      contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04SystemContentStage,
    );
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection?.onIntegrateScriptBindToFlowControllerAsSystem(contentStage: getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemSystemContentStage);

    /// -----
    /// TODO: Set Đến PomodoroBreakTime
    /// -----

    await onGenerateScriptBindToPomodoroBreakTimeSS01AsGo();
    await onGenerateScriptBindToPomodoroBreakTimeSS01AsMain();
    await onGenerateScriptBindToPomodoroBreakTimeSS01AsDone();

    await onGenerateScriptBindToPomodoroBreakTimeSS02AsGo();
    await onGenerateScriptBindToPomodoroBreakTimeSS02AsMain();
    await onGenerateScriptBindToPomodoroBreakTimeSS02AsDone();

    await onGenerateScriptBindToPomodoroBreakTimeSS03AsGo();
    await onGenerateScriptBindToPomodoroBreakTimeSS03AsMain();
    await onGenerateScriptBindToPomodoroBreakTimeSS03AsDone();

    await onGenerateScriptBindToPomodoroBreakTimeSS04AsGo();
    await onGenerateScriptBindToPomodoroBreakTimeSS04AsMain();
    await onGenerateScriptBindToPomodoroBreakTimeSS04AsDone();

    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS01);
    getContentItemSequentialExecution?.getMainBreakTimeContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroBreakTimeContentStageSS01);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS01);

    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS02);
    getContentItemSequentialExecution?.getMainBreakTimeContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroBreakTimeContentStageSS02);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS02);

    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS03);
    getContentItemSequentialExecution?.getMainBreakTimeContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroBreakTimeContentStageSS03);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS03);

    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroBreakTimeContentStageSS04);
    getContentItemSequentialExecution?.getMainBreakTimeContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroBreakTimeContentStageSS04);
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroBreakTimeContentStageSS04);

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
    /// TODO:
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: Set Đến PomodoroStayFocused
    /// -----

    await onGenerateScriptBindToPomodoroStayFocusedSS01AsGo();
    await onGenerateScriptBindToPomodoroStayFocusedSS01AsMain();
    await onGenerateScriptBindToPomodoroStayFocusedSS01AsDone();

    await onGenerateScriptBindToPomodoroStayFocusedSS02AsGo();
    await onGenerateScriptBindToPomodoroStayFocusedSS02AsMain();
    await onGenerateScriptBindToPomodoroStayFocusedSS02AsDone();

    await onGenerateScriptBindToPomodoroStayFocusedSS03AsGo();
    await onGenerateScriptBindToPomodoroStayFocusedSS03AsMain();
    await onGenerateScriptBindToPomodoroStayFocusedSS03AsDone();

    await onGenerateScriptBindToPomodoroStayFocusedSS04AsGo();
    await onGenerateScriptBindToPomodoroStayFocusedSS04AsMain();
    await onGenerateScriptBindToPomodoroStayFocusedSS04AsDone();

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS01);
    getContentItemSequentialExecution?.getMainStayFocusedContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS01);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS01);

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS02);
    getContentItemSequentialExecution?.getMainStayFocusedContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS02);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS02);

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS03);
    getContentItemSequentialExecution?.getMainStayFocusedContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS03);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS03);

    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getGoPomodoroStayFocusedContentStageSS04);
    getContentItemSequentialExecution?.getMainStayFocusedContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS04);
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getDonePomodoroStayFocusedContentStageSS04);

    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
    /// TODO:
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
    /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

    /// -----
    /// TODO: Generate & Integrate
    /// TODO: Tạo Kịch Bản CHi Tiết Cho Từng [ContentItemUnit]
    /// TODO: Bao Gồm Cả Việc Đưa Unit Nào Vào Section Nào
    /// -----
    await onGenerateScriptBindToContentItemUnitSS01();
    await onGenerateScriptBindToContentItemUnitSS02();
    await onGenerateScriptBindToContentItemUnitSS03();
    await onGenerateScriptBindToContentItemUnitSS04();
    await onGenerateScriptBindToContentItemUnitSS05();
    await onGenerateScriptBindToContentItemUnitSS06();
    await onGenerateScriptBindToContentItemUnitSS07();
    await onGenerateScriptBindToContentItemUnitSS08();
    await onGenerateScriptBindToContentItemUnitSS09();
    await onGenerateScriptBindToContentItemUnitSS10();

    await onGenerateScriptBindToContentItemUnitSS11();
    await onGenerateScriptBindToContentItemUnitSS12();
    await onGenerateScriptBindToContentItemUnitSS13();
    await onGenerateScriptBindToContentItemUnitSS14();
    await onGenerateScriptBindToContentItemUnitSS15();
    await onGenerateScriptBindToContentItemUnitSS16();
    await onGenerateScriptBindToContentItemUnitSS17();
    await onGenerateScriptBindToContentItemUnitSS18();
    await onGenerateScriptBindToContentItemUnitSS19();
    await onGenerateScriptBindToContentItemUnitSS20();

    await onGenerateScriptAsPomodoroContent();

    return;
  }

  /// -----
  /// TODO: Gắn Kết Kịch Bản Của Section Vào Một Pomodoro Theo Chỉ Định
  /// -----
  Future<void> onGenerateScriptAsPomodoroContent();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Section
  /// -----
  Future<void> onGenerateScriptBindToContentItemSection();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với First Start Section
  /// -----
  Future<void> onGenerateScriptBindToFirstStartAsMain();
  Future<void> onGenerateScriptBindToFirstStartAsGo();
  Future<void> onGenerateScriptBindToFirstStartAsDone();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Last Finish Section
  /// -----
  Future<void> onGenerateScriptBindToLastFinishAsMain();
  Future<void> onGenerateScriptBindToLastFinishAsGo();
  Future<void> onGenerateScriptBindToLastFinishAsDone();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN HỆ THỐNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  Future<void> onGenerateScriptBindToBridge1stFromDoneFirstStartToGoPomodoroStayFocusedSS01();
  Future<void> onGenerateScriptBindToBridge2ndFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01();
  Future<void> onGenerateScriptBindToBridge3rdFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02();
  Future<void> onGenerateScriptBindToBridge4thFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02();
  Future<void> onGenerateScriptBindToBridge5thFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03();
  Future<void> onGenerateScriptBindToBridge6thFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03();
  Future<void> onGenerateScriptBindToBridge7thFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04();
  Future<void> onGenerateScriptBindToBridge8thFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04();
  Future<void> onGenerateScriptBindToBridge9thFromDonePomodoroBreakTimeSS04ToGoLastFinish();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro BreakTime Section SS01
  /// -----
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsMain();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsGo();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsDone();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro BreakTime Section SS02
  /// -----
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsMain();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsGo();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsDone();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro BreakTime Section SS03
  /// -----
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsMain();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsGo();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsDone();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro BreakTime Section SS04
  /// -----
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsMain();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsGo();
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsDone();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG (Bao Gồm Các Unit Trong Các Section)
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro StayFocused Section SS01
  /// -----
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsMain();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsGo();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsDone();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro StayFocused Section SS02
  /// -----
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsMain();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsGo();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsDone();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro StayFocused Section SS03
  /// -----
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsMain();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsGo();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsDone();

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với Pomodoro StayFocused Section SS04
  /// -----
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsMain();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsGo();
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsDone();

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG (Bao Gồm Các Unit Trong Các Section)
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS01
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS01();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS02
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS02();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS03
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS03();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS04
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS04();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS05
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS05();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS06
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS06();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS07
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS07();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS08
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS08();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS09
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS09();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS10
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS10();

  ///

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS11
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS11();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS12
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS12();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS13
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS13();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS14
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS14();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS15
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS15();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS16
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS16();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS17
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS17();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS18
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS18();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS19
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS19();

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS20
  /// -----
  Future<void> onGenerateScriptBindToContentItemUnitSS20();

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
