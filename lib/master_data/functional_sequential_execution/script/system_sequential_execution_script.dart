import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/content_item/01_content_item_unit/content_item_unit.dart';
import 'package:frame_creator_v2/master_data/content_item/04_content_item_sequential_execution/content_item_sequential_execution.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class SystemSequentialExecutionScript with ExecutionCore {
  ///
  /// TODO:
  ///
  SystemSequentialExecutionScript({
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
  }

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: [START]
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: Introductory Conversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO: Bắt Đầu Đoạn Hội Thoại Giới Thiệu Bằng Việc Mở Cửa Sổ
  static const String onStartIntroductoryConversationAsOpenWindow = '[ON_START_INTRODUCTORY_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO: Kết Thúc Đoạn Hội Thoại Giới Thiệu Bằng Việc Đóng Cửa Sổ
  static const String onFinishIntroductoryConversationAsCloseWindow = '[ON_FINISH_INTRODUCTORY_CONVERSATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: Two Character Conversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromCenterStartPositionAsTwoCharacterConversationAsOpenWindow = '[ON_START_FROM_CENTER_START_POSITION_AS_TWO_CHARACTER_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow = '[ON_FINISH_FROM_CENTER_START_POSITION_AS_TWO_CHARACTER_CONVERSATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: Two Character Conversation
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

  /// TODO:
  static const String onStartFromTopEndPositionAsOneCharacterConversationAsOpenWindow = '[ON_START_FROM_TOP_END_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_OPEN_WINDOW]';

  /// TODO:
  static const String onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow = '[ON_FINISH_FROM_TOP_END_POSITION_AS_ONE_CHARACTER_CONVERSATION_AS_CLOSE_WINDOW]';

  ///

  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// TODO: [END]
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
  /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

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
  /// TODO: Attach Root
  /// -----
  void onSystemSequentialExecutionAs({required String? executionId, required ContentItemUnit? contentItemUnit}) {
    switch (executionId) {
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: Introductory Conversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartIntroductoryConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartIntroductoryConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getIntroductoryConversationSystemFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishIntroductoryConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishIntroductoryConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getSystemFeatureManagement?.getIntroductoryConversationSystemFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From Center Start Position As Two Character Conversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromCenterStartPositionAsTwoCharacterConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromCenterStartPositionAsTwoCharacterConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// TODO: From Top End Position As One Character Conversation
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
      /// ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |

      ///
      case SystemSequentialExecutionScript.onStartFromTopEndPositionAsOneCharacterConversationAsOpenWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onStartFromTopEndPositionAsOneCharacterConversationAsOpenWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.onActivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;

      ///
      case SystemSequentialExecutionScript.onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow:
        {
          contentItemUnit?.getFunctionalSequentialExecutionContentItemUnit?.getFunctionalSequentialExecutionStepItemStateListAsStack?.add(
            FunctionalSequentialExecutionStepItemState(
              stateModel: FunctionalSequentialExecutionStepItem.asWindowFlow(flowController: getFunctionalSequentialExecutionController?.getFlowController)
                ..setPerformId(value: '[PERFORM_ID__]', isPriorityOverride: true)
                ..onSetupRoot()
                ..onInitRoot()
                ..onStart = () {
                  if (kDebugMode) {
                    print('__________[${SystemSequentialExecutionScript.onFinishFromTopEndPositionAsOneCharacterConversationAsCloseWindow}]');
                  }

                  ///
                }
                ..onPerform = () {
                  ///
                  getSequentialExecutionController?.getFunctionalFeatureManagement?.getFromTopEndPositionAsOneCharacterConversationFunctionalFeature?.onDeactivateWindow();

                  ///
                },
            ),
          );

          ///
        }
        break;
    }
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
}
