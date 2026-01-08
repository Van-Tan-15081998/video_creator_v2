import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';

class CharacterFlowPatternWidget extends StatefulWidget {
  const CharacterFlowPatternWidget({super.key});

  @override
  State<CharacterFlowPatternWidget> createState() => _CharacterFlowPatternWidgetState();
}

class _CharacterFlowPatternWidgetState extends State<CharacterFlowPatternWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  /// -----
  /// TODO:
  /// -----
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
  FunctionalSequentialExecutionStepItemState? _functionalSequentialExecutionStepItemState;
  FunctionalSequentialExecutionStepItemState? get getFunctionalSequentialExecutionStepItemState => _functionalSequentialExecutionStepItemState;
  void setFunctionalSequentialExecutionStepItemState({required FunctionalSequentialExecutionStepItemState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionStepItemState = value;
    } else {
      _functionalSequentialExecutionStepItemState ??= value;
    }

    return;
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _ticker = createTicker((Duration elapsed) {
        if (getFunctionalSequentialExecutionController?.getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
          /// -----
          /// TODO: Set
          /// -----
          setFunctionalSequentialExecutionStepItemState(value: getFunctionalSequentialExecutionController?.getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first, isPriorityOverride: true);

          /// -----
          /// TODO: Clear Stack
          /// -----
          getFunctionalSequentialExecutionController?.getFlowController?.getCharacterFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.removeAt(0);

          /// -----
          /// TODO: Kiểm Tra Loại Flow
          /// -----
          if (getFunctionalSequentialExecutionStepItemState?.getStateModel?.getFlowType?.isTypeAsCharacterFlow() == true) {
            ///
          }
        }
      })..start();

      ///
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
