import 'package:flame/components.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/models/character_sprite_animation_management.dart';

/// -----
/// TODO:
/// -----
class CharacterModel with ExecutionCore {
  CharacterModel({
    required String? characterId,
    required String? characterName,
    required double? sizeDx,
    required double? sizeDy,
    required String? imageSource,
    required double? totalFrame,
    required double? framePerRow,
    required CharacterSpriteAnimationManagement? characterSpriteAnimationManagement,
  }) {
    setCharacterId(value: characterId, isPriorityOverride: true);

    setSizeDx(value: sizeDx, isPriorityOverride: true);
    setSizeDy(value: sizeDy, isPriorityOverride: true);
    setImageSource(value: imageSource, isPriorityOverride: true);
    setTotalFrame(value: totalFrame, isPriorityOverride: true);
    setFramePerRow(value: framePerRow, isPriorityOverride: true);

    setCharacterName(value: characterName, isPriorityOverride: true);

    setCharacterSpriteAnimationManagement(value: characterSpriteAnimationManagement, isPriorityOverride: true);
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
  /// TODO: Tên Nhân Vật
  /// -----
  String? _characterName;
  String? get getCharacterName => _characterName;
  void setCharacterName({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _characterName = value;
    } else {
      _characterName ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalFrame;
  double? get getTotalFrame => _totalFrame;
  void setTotalFrame({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalFrame = value;
    } else {
      _totalFrame ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _framePerRow;
  double? get getFramePerRow => _framePerRow;
  void setFramePerRow({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _framePerRow = value;
    } else {
      _framePerRow ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _sizeDx;
  double? get getSizeDx => _sizeDx;
  void setSizeDx({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sizeDx = value;
    } else {
      _sizeDx ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _sizeDy;
  double? get getSizeDy => _sizeDy;
  void setSizeDy({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sizeDy = value;
    } else {
      _sizeDy ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
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

  /// -----
  /// TODO:
  /// -----
  SpriteAnimation? _spriteAnimation;
  SpriteAnimation? get getSpriteAnimation => _spriteAnimation;
  void setSpriteAnimation({required SpriteAnimation? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _spriteAnimation = value;
    } else {
      _spriteAnimation ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CharacterSpriteAnimationManagement? _characterSpriteAnimationManagement;
  CharacterSpriteAnimationManagement? get getCharacterSpriteAnimationManagement => _characterSpriteAnimationManagement;
  void setCharacterSpriteAnimationManagement({required CharacterSpriteAnimationManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _characterSpriteAnimationManagement = value;
    } else {
      _characterSpriteAnimationManagement ??= value;
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
      await getCharacterSpriteAnimationManagement?.onGenerateSpriteAnimation(stateModel: this);

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
