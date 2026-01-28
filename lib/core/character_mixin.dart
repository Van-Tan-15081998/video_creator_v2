mixin CharacterMixin {
  /// -----
  /// TODO: Mã Định Danh Nhân Vật TopStart
  /// -----
  String? _topStartCharacterId;
  String? get getTopStartCharacterId => _topStartCharacterId;
  void setTopStartCharacterId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topStartCharacterId = value;
    } else {
      _topStartCharacterId ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Mã Định Danh Nhân Vật BottomStart
  /// -----
  String? _bottomStartCharacterId;
  String? get getBottomStartCharacterId => _bottomStartCharacterId;
  void setBottomStartCharacterId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bottomStartCharacterId = value;
    } else {
      _bottomStartCharacterId ??= value;
    }

    return;
  }

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
