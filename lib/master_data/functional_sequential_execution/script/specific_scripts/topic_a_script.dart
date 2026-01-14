import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/functional_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';

class TopicAScript extends FunctionalSequentialExecutionScript {
  TopicAScript({required super.systemStateManagement, required super.sequentialExecutionController, required super.contentItemSequentialExecution, required super.functionalSequentialExecutionController});

  /// -----
  /// TODO:
  /// -----
  @override
  void onSetScriptFrame() {
    ///
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
              print('[Unit 1][Step] 1.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
              print('[Unit 1][Step] 2.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
              print('[Unit 1][Step] 3.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
              print('[Unit 1][Step] 4.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
              print('[Unit 1][Step] 5.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 6.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 6.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 7.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 7.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 8.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 8.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 9.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 9.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 10.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 10.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 11.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 11.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 12.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 12.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 13.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 13.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 14.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 14.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 15.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 15.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 16.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 16.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 17.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 17.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 18.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 18.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 19.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 19.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Step 20.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 1][Step] 20.0');
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
              print('[Unit 1][Step] 0.0 - [GAP]');
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
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [Content Item Section SS01]
    /// -----
    getContentItemSequentialExecution?.getContentItemSectionSS01?.getContentItemUnitListAsStack?.add(contentItemUnit);

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
              print('[Unit 2][Step] 1.0');
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
              print('[Unit 2][Step] 2.0');
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
              print('[Unit 2][Step] 3.0');
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
              print('[Unit 2][Step] 4.0');
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
              print('[Unit 2][Step] 5.0');
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
    /// TODO: Step 6.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 6.0');
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
    /// TODO: Step 7.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 7.0');
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
    /// TODO: Step 8.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 8.0');
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
    /// TODO: Step 9.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 9.0');
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
    /// TODO: Step 10.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 10.0');
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
    /// TODO: Step 11.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 11.0');
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
    /// TODO: Step 12.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 12.0');
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
    /// TODO: Step 13.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 13.0');
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
    /// TODO: Step 14.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 14.0');
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
    /// TODO: Step 15.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 15.0');
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
    /// TODO: Step 16.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 16.0');
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
    /// TODO: Step 17.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 17.0');
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
    /// TODO: Step 18.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 18.0');
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
    /// TODO: Step 19.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 19.0');
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
    /// TODO: Step 20.0
    /// ----- | ----- | -----
    contentItemUnit.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
      FunctionalSequentialExecutionStepItemState(
        stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
          ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
          ..onSetupRoot()
          ..onInitRoot()
          ..onStart = () {
            if (kDebugMode) {
              print('[Unit 2][Step] 20.0');
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
    ///
  }

  /// -----
  /// TODO: Kịch Bản Gắn Kết Với Content Item Unit SS04
  /// -----
  @override
  Future<void> onGenerateScriptBindToContentItemUnitSS04() async {
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

  /// -----
  /// TODO: Gắn Kết Kịch Bản Của Section Vào Một Pomodoro Theo Chỉ Định
  /// TODO: [Có Thể Thay Đổi Tùy Vào Kịch Bản]
  /// -----
  @override
  Future<void> onGenerateScriptAsPomodoroContent() async {
    /// TODO: Set [ContentItemSectionSS01] Và [ContentItemSectionSS02] Đến [PomodoroStayFocusedContentStageSS01]
    getContentItemSequentialExecution?.getContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS01);
    getContentItemSequentialExecution?.getContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS01);

    /// TODO: Set [ContentItemSectionSS03] Và [ContentItemSectionSS04] Đến [PomodoroStayFocusedContentStageSS02]
    getContentItemSequentialExecution?.getContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS02);
    getContentItemSequentialExecution?.getContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS03);

    /// TODO: Set [ContentItemSectionSS05] Và [ContentItemSectionSS06] Đến [PomodoroStayFocusedContentStageSS03]
    getContentItemSequentialExecution?.getContentItemSectionSS05?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS03);
    getContentItemSequentialExecution?.getContentItemSectionSS06?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS03);

    /// TODO: Set [ContentItemSectionSS07] Và [ContentItemSectionSS08] Đến [PomodoroStayFocusedContentStageSS04]
    getContentItemSequentialExecution?.getContentItemSectionSS07?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS04);
    getContentItemSequentialExecution?.getContentItemSectionSS08?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(contentStage: getContentItemSequentialExecution?.getMainPomodoroStayFocusedContentStageSS04);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToFirstStartAsMain() async {
    getContentItemSequentialExecution?.getMainFirstStartContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
            getContentItemSequentialExecution?.getMainFirstStartSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [FirstStart Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getMainFirstStartContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToFirstStartAsGo() async {
    getContentItemSequentialExecution?.getGoFirstStartContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToFirstStartAsDone() async {
    getContentItemSequentialExecution?.getDoneFirstStartContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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

  @override
  Future<void> onGenerateScriptBindToLastFinishAsMain() async {
    getContentItemSequentialExecution?.getMainLastFinishContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
            getContentItemSequentialExecution?.getMainLastFinishSystemContentStage?.getActiveStatus?.setStatusAsPerformCompleted();

            ///
          },
      ),
    );

    /// -----
    /// TODO: Đưa Nội Dung [Content Item Unit] Vào [LastFinish Content Item Section]
    /// -----
    getContentItemSequentialExecution?.getMainLastFinishContentItemSection?.getContentItemUnitListAsStack?.add(contentItemUnit);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToLastFinishAsGo() async {
    getContentItemSequentialExecution?.getGoLastFinishContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToLastFinishAsDone() async {
    getContentItemSequentialExecution?.getDoneLastFinishContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  /// TODO: NHÓM SECTION THUỘC PHẦN NỘI DUNG
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// -----
  /// TODO: Tạo Kịch Bản Gắn Kết Với BreakTime Section SS01
  /// -----
  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsGo() async {
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS01AsDone() async {
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsGo() async {
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS02AsDone() async {
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsGo() async {
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS03AsDone() async {
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsGo() async {
    getContentItemSequentialExecution?.getGoBreakTimeContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroBreakTimeSS04AsDone() async {
    getContentItemSequentialExecution?.getDoneBreakTimeContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsGo() async {
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS01AsDone() async {
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS01?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsGo() async {
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS02AsDone() async {
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS02?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsGo() async {
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS03AsDone() async {
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS03?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsMain() async {
    /// -----
    /// TODO: Cập Nhật Dựa Trên Đơn Vị Thực Thi [POMODORO-ITEM]
    /// -----
    return;
  }

  @override
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsGo() async {
    getContentItemSequentialExecution?.getGoStayFocusedContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

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
  Future<void> onGenerateScriptBindToPomodoroStayFocusedSS04AsDone() async {
    getContentItemSequentialExecution?.getDoneStayFocusedContentItemSectionSS04?.getContentExistenceStatus?.setStatusAsExistingContent();

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

  /// -----
  /// TODO: Bridge From - DoneFirstStartSystemItem - To - GoPomodoroStayFocusedSS01
  /// -----
  @override
  Future<void> onGenerateScriptBindToBridge1stFromDoneFirstStartToGoPomodoroStayFocusedSS01() async {
    getContentItemSequentialExecution?.getBridgeFromDoneFirstStartSystemItemToGoPomodoroStayFocusedSS01ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS01ToGoPomodoroBreakTimeSS01ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS01ToGoPomodoroStayFocusedSS02ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS02ToGoPomodoroBreakTimeSS02ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS02ToGoPomodoroStayFocusedSS03ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS03ToGoPomodoroBreakTimeSS03ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS03ToGoPomodoroStayFocusedSS04ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroStayFocusedSS04ToGoPomodoroBreakTimeSS04ContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
    getContentItemSequentialExecution?.getBridgeFromDonePomodoroBreakTimeSS04ToGoLastFinishSystemItemContentItemSection?.getContentExistenceStatus?.setStatusAsExistingContent();

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
}
