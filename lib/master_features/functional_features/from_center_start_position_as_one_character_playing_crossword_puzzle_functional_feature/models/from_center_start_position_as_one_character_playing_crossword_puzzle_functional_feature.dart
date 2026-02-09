import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/core/window_feature.dart';
import 'package:frame_creator_v2/master_features/constant_data/core_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/models/data/square_crossword_puzzle_board_management.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_playing_crossword_puzzle_functional_feature/widgets/from_center_start_position_as_one_character_playing_crossword_puzzle_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature extends CoreFeature with ExecutionCore, WindowFeature {
  FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature({required SystemStateManagement? systemStateManagement, required double? sizeDx, required double? sizeDy}) {
    setSystemStateManagement(value: systemStateManagement);
    setSizeDx(value: sizeDx, isPriorityOverride: true);
    setSizeDy(value: sizeDy, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  SquareCrosswordPuzzleBoardManagement? _squareCrosswordPuzzleBoardManagement;
  SquareCrosswordPuzzleBoardManagement? get getSquareCrosswordPuzzleBoardManagement => _squareCrosswordPuzzleBoardManagement;
  void setSquareCrosswordPuzzleBoardManagement({required SquareCrosswordPuzzleBoardManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _squareCrosswordPuzzleBoardManagement = value;
    } else {
      _squareCrosswordPuzzleBoardManagement ??= value;
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

      setSquareCrosswordPuzzleBoardManagement(value: SquareCrosswordPuzzleBoardManagement(systemStateManagement: getSystemStateManagement), isPriorityOverride: true);

      /// -----
      /// TODO:
      /// -----
      setWindowWidget(
        value: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              alignment: AlignmentDirectional.center, //
              children: [FromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleWidget(fromCenterStartPositionAsOneCharacterPlayingCrosswordPuzzleFunctionalFeature: this)],
            );
          },
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
      await getSquareCrosswordPuzzleBoardManagement?.onSetupRoot();
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
      await getSquareCrosswordPuzzleBoardManagement?.onInitRoot();
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
