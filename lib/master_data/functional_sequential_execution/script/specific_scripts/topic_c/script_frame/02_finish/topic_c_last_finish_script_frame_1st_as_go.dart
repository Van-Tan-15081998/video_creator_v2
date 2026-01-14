import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/script_frame/02_finish/last_finish_script_frame_1st_as_go.dart';

/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// TODO: [GoLastFinish] To []
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
/// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
class TopicCLastFinishScriptFrame1stAsGo extends LastFinishScriptFrame1stAsGo {
  /// -----
  /// TODO:
  /// -----
  TopicCLastFinishScriptFrame1stAsGo({
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
