import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/script/functional_sequential_execution_script.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';

class TopicAScript extends FunctionalSequentialExecutionScript {
  TopicAScript({required super.sequentialExecutionController, required super.contentItemSequentialExecution, required super.functionalSequentialExecutionController});

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

  // /// -----
  // /// TODO:
  // /// -----
  // @override
  // void onScriptPhraseSS01() {
  //   /// ----- | ----- | -----
  //   /// TODO: Step 1.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 1.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 2.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 2.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 3.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 3.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 4.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 4.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 5.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 5.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 6.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 6.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 7.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 7.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 8.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 8.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 9.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 9.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 10.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 10.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 11.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 11.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 12.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 12.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 13.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 13.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 14.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 14.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 15.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 15.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 16.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 16.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 17.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 17.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 18.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 18.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 19.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 19.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 20.0
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asCharacterFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 20.0');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         },
  //     ),
  //   );
  //
  //   /// ----- | ----- | -----
  //   /// TODO: Step 0.0 - GAP
  //   /// ----- | ----- | -----
  //   getFunctionalSequentialExecutionStepItemStateListAsStackPhraseSS01?.add(
  //     FunctionalSequentialExecutionStepItemState(
  //       stateModel: FunctionalSequentialExecutionStepItem.asGapFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
  //         ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
  //         ..onSetupRoot()
  //         ..onInitRoot()
  //         ..onStart = () {
  //           if (kDebugMode) {
  //             print('[Step] 0.0 - [GAP]');
  //           }
  //
  //           ///
  //         }
  //         ..onPerform = () {
  //           ///
  //         }
  //         ..getGapTime?.setSeconds(value: 5, isPriorityOverride: true),
  //     ),
  //   );
  //
  //   ///
  //   ///
  //   ///
  // }

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
  /// -----
  @override
  Future<void> onGenerateScriptAsPomodoroContent() async {
    /// TODO: Set [ContentItemSectionSS01] Và [ContentItemSectionSS02] Đến [PomodoroStayFocusedContentStageSS01]
    getContentItemSequentialExecution?.getContentItemSectionSS01?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS01);
    getContentItemSequentialExecution?.getContentItemSectionSS02?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS01);

    /// TODO: Set [ContentItemSectionSS03] Và [ContentItemSectionSS04] Đến [PomodoroStayFocusedContentStageSS02]
    getContentItemSequentialExecution?.getContentItemSectionSS03?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS02);
    getContentItemSequentialExecution?.getContentItemSectionSS04?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS03);

    /// TODO: Set [ContentItemSectionSS05] Và [ContentItemSectionSS06] Đến [PomodoroStayFocusedContentStageSS03]
    getContentItemSequentialExecution?.getContentItemSectionSS05?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS03);
    getContentItemSequentialExecution?.getContentItemSectionSS06?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS03);

    /// TODO: Set [ContentItemSectionSS07] Và [ContentItemSectionSS08] Đến [PomodoroStayFocusedContentStageSS04]
    getContentItemSequentialExecution?.getContentItemSectionSS07?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS04);
    getContentItemSequentialExecution?.getContentItemSectionSS08?.onIntegrateScriptBindToFlowControllerAsPomodoroContent(pomodoroContentStage: getContentItemSequentialExecution?.getPomodoroStayFocusedContentStageSS04);

    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS01() async {
    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS02() async {
    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS03() async {
    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToBreakTimeContentItemSectionSS04() async {
    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToFirstStartingContentItemSection() async {
    ///
    return;
  }

  @override
  Future<void> onGenerateScriptBindToLastEndingContentItemSection() async {
    ///
    return;
  }
}
