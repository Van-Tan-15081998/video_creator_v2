import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/models/character_model.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/models/character_sprite_animation_management.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/models/character_state.dart';

class SystemCharacter with ExecutionCore {
  static const String characterA01Id = '[CHARACTER_A01]';
  static const String characterA02Id = '[CHARACTER_A02]';
  static const String characterA03Id = '[CHARACTER_A03]';
  static const String characterA04Id = '[CHARACTER_A04]';
  static const String characterA05Id = '[CHARACTER_A05]';

  // (-1,-1)                     (1,-1)
  // topStart     topCenter     topEnd
  // +------------+------------+
  // |            |            |
  // |            |            |
  // |            |            |
  // centerStart     center     centerEnd
  // |            |            |
  // |            |            |
  // |            |            |
  // +------------+------------+
  // bottomStart  bottomCenter  bottomEnd
  // (-1,1)                      (1,1)
  ///
  /// TODO: Mã định danh Character theo Vị trí trong Window
  ///
  static const String characterTopStart = '[CHARACTER_TOP_START]';
  static const String characterTopCenter = '[CHARACTER_TOP_CENTER]';
  static const String characterTopEnd = '[CHARACTER_TOP_END]';
  static const String characterCenterStart = '[CHARACTER_CENTER_START]';
  static const String characterCenter = '[CHARACTER_CENTER]';
  static const String characterCenterEnd = '[CHARACTER_CENTER_END]';
  static const String characterBottomStart = '[CHARACTER_BOTTOM_START]';
  static const String characterBottomCenter = '[CHARACTER_BOTTOM_CENTER]';
  static const String characterBottomEnd = '[CHARACTER_BOTTOM_END]';

  /// -----
  /// TODO:
  /// -----
  CharacterModel? _tommy;
  CharacterModel? get getTommy => _tommy;
  void setTommy({required CharacterModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _tommy = value;
    } else {
      _tommy ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CharacterState? _nathan;
  CharacterState? get getNathan => _nathan;
  void setNathan({required CharacterState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _nathan = value;
    } else {
      _nathan ??= value;
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
      setCharacterSpriteAnimationManagement(value: CharacterSpriteAnimationManagement(), isPriorityOverride: true);

      /// -----
      /// TODO:
      /// -----
      setTommy(
        value: CharacterModel(
          characterId: '[TOMMY_CHARACTER]',
          characterName: 'Tommy', //
          sizeDx: 269.0, //
          sizeDy: 230.0, //
          imageSource: 'assets/images/sprite_sheet/24A/monster24A.png',
          totalFrame: 91,
          framePerRow: 13,
          characterSpriteAnimationManagement: getCharacterSpriteAnimationManagement,
        ),
        isPriorityOverride: true,
      );

      /// -----
      /// TODO:
      /// -----
      setNathan(
        value: CharacterState(
          stateModel: CharacterModel(
            characterId: '[NATHAN_CHARACTER]',
            characterName: 'Nathan', //
            sizeDx: 260.0, //
            sizeDy: 250.0, //
            imageSource: 'assets/images/sprite_sheet/20A/monster20A.png',
            totalFrame: 91,
            framePerRow: 13,
            characterSpriteAnimationManagement: getCharacterSpriteAnimationManagement,
          ),
        ),
        isPriorityOverride: true,
      );

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
      await getCharacterSpriteAnimationManagement?.onSetupRoot();

      /// -----
      /// TODO:
      /// -----
      await getTommy?.onSetupRoot();
      await getNathan?.getStateModel?.onSetupRoot();
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
      await getCharacterSpriteAnimationManagement?.onInitRoot();

      /// -----
      /// TODO:
      /// -----
      await getTommy?.onInitRoot();
      await getNathan?.getStateModel?.onInitRoot();
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
