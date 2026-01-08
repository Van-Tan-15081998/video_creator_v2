import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';

/// -----
/// TODO:
/// -----
class FunctionalSequentialExecutionStepItemState {
  /// -----
  /// TODO:
  /// -----
  FunctionalSequentialExecutionStepItem? _stateModel;
  FunctionalSequentialExecutionStepItem? get getStateModel => _stateModel;
  void setStateModel({required FunctionalSequentialExecutionStepItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stateModel = value;
    } else {
      _stateModel ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  FunctionalSequentialExecutionStepItemState({required FunctionalSequentialExecutionStepItem? stateModel}) {
    setStateModel(value: stateModel, isPriorityOverride: true);
  }

  void activateStepItem() {

  }
}
