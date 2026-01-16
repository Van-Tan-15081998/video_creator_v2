import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/attributes/basic_character_flow_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/attributes/character_flow_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/attributes/image_slide_flow_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/attributes/message_flow_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/attributes/window_flow_controller.dart';

class FlowController with ExecutionCore {
  ///
  /// TODO:
  ///
  FlowController();

  ///
  /// TODO: Trạng thái tồn tại nội dung
  ///
  String? _type;
  String? get getType => _type;
  void setType({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _type = value;
    } else {
      _type ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  BasicCharacterFlowController? _characterFlowController;
  BasicCharacterFlowController? get getCharacterFlowController => _characterFlowController;
  void setCharacterFlowController({required BasicCharacterFlowController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _characterFlowController = value;
    } else {
      _characterFlowController ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ImageSlideFlowController? _imageSlideFlowController;
  ImageSlideFlowController? get getImageSlideFlowController => _imageSlideFlowController;
  void setImageSlideFlowController({required ImageSlideFlowController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _imageSlideFlowController = value;
    } else {
      _imageSlideFlowController ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MessageFlowController? _messageFlowController;
  MessageFlowController? get getMessageFlowController => _messageFlowController;
  void setMessageFlowController({required MessageFlowController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _messageFlowController = value;
    } else {
      _messageFlowController ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  WindowFlowController? _windowFlowController;
  WindowFlowController? get getWindowFlowController => _windowFlowController;
  void setWindowFlowController({required WindowFlowController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _windowFlowController = value;
    } else {
      _windowFlowController ??= value;
    }

    return;
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

      setCharacterFlowController(value: CharacterFlowController(), isPriorityOverride: true);
      setImageSlideFlowController(value: ImageSlideFlowController(), isPriorityOverride: true);
      setMessageFlowController(value: MessageFlowController(), isPriorityOverride: true);
      setWindowFlowController(value: WindowFlowController(), isPriorityOverride: true);

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

      await getCharacterFlowController?.onSetupRoot();
      await getImageSlideFlowController?.onSetupRoot();
      await getMessageFlowController?.onSetupRoot();
      await getWindowFlowController?.onSetupRoot();
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

      await getCharacterFlowController?.onInitRoot();
      await getImageSlideFlowController?.onInitRoot();
      await getMessageFlowController?.onInitRoot();
      await getWindowFlowController?.onInitRoot();
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
