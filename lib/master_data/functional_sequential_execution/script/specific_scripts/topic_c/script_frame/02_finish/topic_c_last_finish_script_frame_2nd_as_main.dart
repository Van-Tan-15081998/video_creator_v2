import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/02_finish/last_finish_script_frame_2nd_as_main.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/script_frame.dart';

/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// TODO: [LastFinish] To []
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
class TopicCLastFinishScriptFrame2ndAsMain extends LastFinishScriptFrame2ndAsMain {
  /// -----
  /// TODO:
  /// -----
  TopicCLastFinishScriptFrame2ndAsMain({
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
  }
}
