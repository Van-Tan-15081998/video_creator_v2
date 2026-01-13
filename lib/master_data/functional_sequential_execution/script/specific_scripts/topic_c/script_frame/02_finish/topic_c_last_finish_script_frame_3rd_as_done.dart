import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/02_finish/last_finish_script_frame_3rd_as_done.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/script_frame.dart';

/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// TODO: [DoneLastFinish] To []
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
class TopicCLastFinishScriptFrame3rdAsDone extends LastFinishScriptFrame3rdAsDone {
  /// -----
  /// TODO:
  /// -----
  TopicCLastFinishScriptFrame3rdAsDone({
    required super.systemStateManagement, //
    required super.sequentialExecutionController, //
    required super.contentItemSequentialExecution, //
    required super.functionalSequentialExecutionController,
  });

  /// -----
  /// TODO:
  /// -----
  @override
  void onSystemSequentialExecutionAs({required String? executionId, required ContentItemUnit? contentItemUnit}) {
    return;
  }
}

