import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/step_item_content_abstract.dart';

/// -----
/// TODO:
/// -----
class StepItemContentAsNewMessageConversation extends StepItemContentAbstract {
  /// -----
  /// TODO:
  /// -----
  StepItemContentAsNewMessageConversation({required String? message, required String? imageSource, required String? windowId, required String? characterId}) {
    setMessage(value: message, isPriorityOverride: true);
    setImageSource(value: imageSource, isPriorityOverride: true);
    setWindowId(value: windowId, isPriorityOverride: true);
    setCharacterId(value: characterId, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _message;
  String? get getMessage => _message;
  void setMessage({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _message = value;
    } else {
      _message ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Mã Định Window
  /// -----
  String? _windowId;
  String? get getWindowId => _windowId;
  void setWindowId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _windowId = value;
    } else {
      _windowId ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Mã Định Danh Nhân Vật
  /// -----
  String? _characterId;
  String? get getCharacterId => _characterId;
  void setCharacterId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _characterId = value;
    } else {
      _characterId ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Đường Dẫn Nguồn Hình Ảnh
  /// -----
  String? _imageSource;
  String? get getImageSource => _imageSource;
  void setImageSource({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _imageSource = value;
    } else {
      _imageSource ??= value;
    }

    return;
  }
}
