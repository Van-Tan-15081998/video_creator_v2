mixin WindowMixin {
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
}