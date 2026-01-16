import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_bottom_end_position_as_one_character_conversation_functional_feature/models/from_bottom_end_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/models/from_center_start_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_conversation_functional_feature/models/from_center_start_position_as_two_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_playing_chess_functional_feature/models/from_center_start_position_as_two_character_playing_chess_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_top_end_position_as_one_character_conversation_functional_feature/models/from_top_end_position_as_one_character_conversation_functional_feature.dart';
import 'package:frame_creator_v2/state_managements/mixins/feature_mixin.dart';

class FunctionalFeatureManagement with ExecutionCore, FeatureMixin {

  /// -----
  /// TODO:
  /// -----
  FromBottomEndPositionAsOneCharacterConversationFunctionalFeature? _fromBottomEndPositionAsOneCharacterConversationFunctionalFeature;
  FromBottomEndPositionAsOneCharacterConversationFunctionalFeature? get getFromBottomEndPositionAsOneCharacterConversationFunctionalFeature => _fromBottomEndPositionAsOneCharacterConversationFunctionalFeature;
  void setFromBottomEndPositionAsOneCharacterConversationFunctionalFeature({required FromBottomEndPositionAsOneCharacterConversationFunctionalFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _fromBottomEndPositionAsOneCharacterConversationFunctionalFeature = value;
    } else {
      _fromBottomEndPositionAsOneCharacterConversationFunctionalFeature ??= value;
    }

    ///
    return;
  }


  /// -----
  /// TODO:
  /// -----
  FromCenterStartPositionAsOneCharacterConversationFunctionalFeature? _fromCenterStartPositionAsOneCharacterConversationFunctionalFeature;
  FromCenterStartPositionAsOneCharacterConversationFunctionalFeature? get getFromCenterStartPositionAsOneCharacterConversationFunctionalFeature => _fromCenterStartPositionAsOneCharacterConversationFunctionalFeature;
  void setFromCenterStartPositionAsOneCharacterConversationFunctionalFeature({required FromCenterStartPositionAsOneCharacterConversationFunctionalFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _fromCenterStartPositionAsOneCharacterConversationFunctionalFeature = value;
    } else {
      _fromCenterStartPositionAsOneCharacterConversationFunctionalFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  FromCenterStartPositionAsTwoCharacterConversationFunctionalFeature? _fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature;
  FromCenterStartPositionAsTwoCharacterConversationFunctionalFeature? get getFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature => _fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature;
  void setFromCenterStartPositionAsTwoCharacterConversationFunctionalFeature({required FromCenterStartPositionAsTwoCharacterConversationFunctionalFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature = value;
    } else {
      _fromCenterStartPositionAsTwoCharacterConversationFunctionalFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  FromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature? _fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature;
  FromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature? get getFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature => _fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature;
  void setFromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature({required FromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature = value;
    } else {
      _fromCenterStartPositionAsTwoCharacterPlayingChessFunctionalFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  FromTopEndPositionAsOneCharacterConversationFunctionalFeature? _fromTopEndPositionAsOneCharacterConversationFunctionalFeature;
  FromTopEndPositionAsOneCharacterConversationFunctionalFeature? get getFromTopEndPositionAsOneCharacterConversationFunctionalFeature => _fromTopEndPositionAsOneCharacterConversationFunctionalFeature;
  void setFromTopEndPositionAsOneCharacterConversationFunctionalFeature({required FromTopEndPositionAsOneCharacterConversationFunctionalFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _fromTopEndPositionAsOneCharacterConversationFunctionalFeature = value;
    } else {
      _fromTopEndPositionAsOneCharacterConversationFunctionalFeature ??= value;
    }

    ///
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
