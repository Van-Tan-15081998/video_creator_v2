mixin CharacterMixin {
  /// -----
  /// TODO: Mã Định Danh Nhân Vật BottomLeft
  /// -----
  String? _bottomLeftCharacterId;
  String? get getBottomLeftCharacterId => _bottomLeftCharacterId;
  void setBottomLeftCharacterId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bottomLeftCharacterId = value;
    } else {
      _bottomLeftCharacterId ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Mã Định Danh Nhân Vật BottomRight
  /// -----
  String? _bottomRightCharacterId;
  String? get getBottomRightCharacterId => _bottomRightCharacterId;
  void setBottomRightCharacterId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bottomRightCharacterId = value;
    } else {
      _bottomRightCharacterId ??= value;
    }

    return;
  }
}