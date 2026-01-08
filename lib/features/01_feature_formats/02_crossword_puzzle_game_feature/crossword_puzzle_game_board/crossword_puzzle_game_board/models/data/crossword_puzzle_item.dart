import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_status.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_word_item.dart';

class CrosswordPuzzleItem with ExecutionCore {
  CrosswordPuzzleItem({
    required String? id, //
    required double? totalMinutes,
    required CrosswordPuzzleItem? currentCrosswordPuzzleItem, //
    required CrosswordPuzzleWordUnit? currentCrosswordPuzzleWordUnit, //
    required List<CrosswordPuzzleItem>? currentCrosswordPuzzleItemStack, //
    required this.onComplete,
  }) {
    setId(value: id, isPriorityOverride: true);
    setTotalMinutes(value: totalMinutes, isPriorityOverride: true);
    setCurrentCrosswordPuzzleItem(value: currentCrosswordPuzzleItem, isPriorityOverride: true);
    setCurrentCrosswordPuzzleWordUnit(value: currentCrosswordPuzzleWordUnit, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _id;
  String? get getId => _id;
  void setId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _id = value;
    } else {
      _id ??= value;
    }

    getCrosswordPuzzleDataModel?.setParentId(value: getId, isPriorityOverride: true);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalMinutes;
  double? get getTotalMinutes => _totalMinutes;
  void setTotalMinutes({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalMinutes = value;
    } else {
      _totalMinutes ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalRemainingMinutes;
  double? get getTotalRemainingMinutes => _totalRemainingMinutes;
  void setTotalRemainingMinutes({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalRemainingMinutes = value;
    } else {
      _totalRemainingMinutes ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalSeconds;
  double? get getTotalSeconds => _totalSeconds;
  void setTotalSeconds({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalSeconds = value;
    } else {
      _totalSeconds ??= value;
    }

    setTotalRemainingSeconds(value: getTotalSeconds, isPriorityOverride: true);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalRemainingSeconds;
  double? get getTotalRemainingSeconds => _totalRemainingSeconds;
  void setTotalRemainingSeconds({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalRemainingSeconds = value;
    } else {
      _totalRemainingSeconds ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _percentComplete;
  double? get getPercentComplete => _percentComplete;
  void setPercentComplete({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _percentComplete = value;
    } else {
      _percentComplete ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleStatus? _status;
  CrosswordPuzzleStatus? get getStatus => _status;
  void setStatus({required CrosswordPuzzleStatus? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _status = value;
    } else {
      _status ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  bool? _isPaused;
  bool get getIsPaused => _isPaused ?? false;
  void setIsPaused({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPaused = value;
    } else {
      _isPaused ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleDataModel? _crosswordPuzzleDataModel;
  CrosswordPuzzleDataModel? get getCrosswordPuzzleDataModel => _crosswordPuzzleDataModel;
  void setCrosswordPuzzleDataModel({required CrosswordPuzzleDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleDataModel = value;
    } else {
      _crosswordPuzzleDataModel ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _currentCrosswordPuzzleItem;
  CrosswordPuzzleItem? get getCurrentCrosswordPuzzleItem => _currentCrosswordPuzzleItem;
  void setCurrentCrosswordPuzzleItem({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleItem = value;
    } else {
      _currentCrosswordPuzzleItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _currentCrosswordPuzzleWordUnit;
  CrosswordPuzzleWordUnit? get getCurrentCrosswordPuzzleWordUnit => _currentCrosswordPuzzleWordUnit;
  void setCurrentCrosswordPuzzleWordUnit({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleWordUnit = value;
    } else {
      _currentCrosswordPuzzleWordUnit ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<CrosswordPuzzleItem>? _currentCrosswordPuzzleItemStack;
  List<CrosswordPuzzleItem>? get getCurrentCrosswordPuzzleItemStack => _currentCrosswordPuzzleItemStack;
  void setCurrentCrosswordPuzzleItemStack({required List<CrosswordPuzzleItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleItemStack = value;
    } else {
      _currentCrosswordPuzzleItemStack ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<CrosswordPuzzleItem?>? _currentCrosswordPuzzleItemList;
  List<CrosswordPuzzleItem?>? get getCurrentCrosswordPuzzleItemList => _currentCrosswordPuzzleItemList;
  void setCurrentCrosswordPuzzleItemList({required List<CrosswordPuzzleItem?> value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleItemList = value;
    } else {
      _currentCrosswordPuzzleItemList ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  bool? _isActive;
  bool get getIsActive => _isActive ?? false;
  void setIsActive({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isActive = value;
    } else {
      _isActive ??= value;
    }

    return;
  }

  ///
  ///
  ///
  ///
  ///
  ///

  ///
  /// TODO: Từ Hiện Tại Trong Game (Màn)
  ///
  CrosswordPuzzleWordItem? _currentCrosswordPuzzleWordItem;
  CrosswordPuzzleWordItem? get getCurrentCrosswordPuzzleWordItem => _currentCrosswordPuzzleWordItem;
  void setCurrentCrosswordPuzzleWordItem({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleWordItem = value;
    } else {
      _currentCrosswordPuzzleWordItem ??= value;
    }

    return;
  }

  ///
  /// TODO: Từ Thứ Nhất Trong Game (Màn)
  ///
  CrosswordPuzzleWordItem? _crosswordPuzzleWordItemSS01;
  CrosswordPuzzleWordItem? get getCrosswordPuzzleWordItemSS01 => _crosswordPuzzleWordItemSS01;
  void setCrosswordPuzzleWordItemSS01({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordItemSS01 = value;
    } else {
      _crosswordPuzzleWordItemSS01 ??= value;
    }

    return;
  }

  ///
  /// TODO: Từ Thứ Hai Trong Game (Màn)
  ///
  CrosswordPuzzleWordItem? _crosswordPuzzleWordItemSS02;
  CrosswordPuzzleWordItem? get getCrosswordPuzzleWordItemSS02 => _crosswordPuzzleWordItemSS02;
  void setCrosswordPuzzleWordItemSS02({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordItemSS02 = value;
    } else {
      _crosswordPuzzleWordItemSS02 ??= value;
    }

    return;
  }

  ///
  /// TODO: Từ Thứ Ba Trong Game (Màn)
  ///
  CrosswordPuzzleWordItem? _crosswordPuzzleWordItemSS03;
  CrosswordPuzzleWordItem? get getCrosswordPuzzleWordItemSS03 => _crosswordPuzzleWordItemSS03;
  void setCrosswordPuzzleWordItemSS03({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordItemSS03 = value;
    } else {
      _crosswordPuzzleWordItemSS03 ??= value;
    }

    return;
  }

  ///
  /// TODO: Từ Thứ Tư Trong Game (Màn)
  ///
  CrosswordPuzzleWordItem? _crosswordPuzzleWordItemSS04;
  CrosswordPuzzleWordItem? get getCrosswordPuzzleWordItemSS04 => _crosswordPuzzleWordItemSS04;
  void setCrosswordPuzzleWordItemSS04({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordItemSS04 = value;
    } else {
      _crosswordPuzzleWordItemSS04 ??= value;
    }

    return;
  }

  ///
  /// TODO: Từ Thứ Năm Trong Game (Màn)
  ///
  CrosswordPuzzleWordItem? _crosswordPuzzleWordItemSS05;
  CrosswordPuzzleWordItem? get getCrosswordPuzzleWordItemSS05 => _crosswordPuzzleWordItemSS05;
  void setCrosswordPuzzleWordItemSS05({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordItemSS05 = value;
    } else {
      _crosswordPuzzleWordItemSS05 ??= value;
    }

    return;
  }

  ///
  /// TODO: Từ Thứ Sáu Trong Game (Màn)
  ///
  CrosswordPuzzleWordItem? _crosswordPuzzleWordItemSS06;
  CrosswordPuzzleWordItem? get getCrosswordPuzzleWordItemSS06 => _crosswordPuzzleWordItemSS06;
  void setCrosswordPuzzleWordItemSS06({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordItemSS06 = value;
    } else {
      _crosswordPuzzleWordItemSS06 ??= value;
    }

    return;
  }

  void start() {
    setIsPaused(value: false, isPriorityOverride: true);
  }

  void pause() {
    setIsPaused(value: true, isPriorityOverride: true);
  }

  void stop() {
    setIsPaused(value: true, isPriorityOverride: true);
  }

  void resume() {
    setIsPaused(value: false, isPriorityOverride: true);
  }

  VoidCallback? onComplete;

  /// -----
  /// TODO:
  /// -----
  void onStart() {
    getStatus?.setStatusActive();
    getCurrentCrosswordPuzzleItemStack?.add(this);
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    if (getIsPaused == true) {
      ///
    } else if (getIsPaused == false) {
      if (getStatus?.isActive() == true) {
        if ((getTotalRemainingSeconds ?? 0) > 0) {
          double totalRemainingSecondsUpdate = (getTotalRemainingSeconds ?? 0) - 1;

          setTotalRemainingSeconds(value: totalRemainingSecondsUpdate, isPriorityOverride: true);

          ///
          double percentComplete = ((getTotalSeconds ?? 1) - (getTotalRemainingSeconds ?? 1)) / (getTotalSeconds ?? 1) * 100;
          setPercentComplete(value: percentComplete, isPriorityOverride: true);

          double totalSeconds = ((getTotalSeconds ?? 0) - (getTotalRemainingSeconds ?? 0)).abs();

          if (kDebugMode) {
            print('totalSeconds: $totalSeconds');
          }

          if (totalSeconds == 1) {
            getCurrentCrosswordPuzzleItem?.getCurrentCrosswordPuzzleItemList?.add(this);
            setIsActive(value: true, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.setId(value: getId, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.setTitle(value: getCrosswordPuzzleDataModel?.getTitle, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.setTopicSpecificImage(value: getCrosswordPuzzleDataModel?.getTopicSpecificImage, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.setCurrentCrosswordPuzzleWordItem(value: getCurrentCrosswordPuzzleWordItem, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS11?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS11?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS12?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS12?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS13?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS13?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS14?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS14?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS15?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS15?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS16?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS16?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);

            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG01?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG01?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG02?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG02?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG03?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG03?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG04?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG04?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG05?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG05?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG06?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG06?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG07?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG07?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG08?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG08?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG09?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG09?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
            getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG10?.setCrosswordPuzzleWordUnitDataModel(value: getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG10?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
          }

          if (totalSeconds == 1) {
            /// -----
            /// -----
            /// TODO: Giả Lập
            /// -----
            /// -----
            getCrosswordPuzzleWordItemSS01
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS01
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS01
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS01
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS01
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05)
              ..setBelongToAWord();

            getCrosswordPuzzleWordItemSS02
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS02
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS02
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS02
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS02
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09)
              ..setBelongToAWord();

            getCrosswordPuzzleWordItemSS03
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS03
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS03
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS03
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS03
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06)
              ..setBelongToAWord();

            getCrosswordPuzzleWordItemSS04
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS04
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS04
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS04
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS04
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS04
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS04
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07)
              ..setBelongToAWord();

            getCrosswordPuzzleWordItemSS05
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS05
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS05
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS05
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS05
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10)
              ..setBelongToAWord();

            getCrosswordPuzzleWordItemSS06
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS06
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS06
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS06
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07)
              ..setBelongToAWord();
            getCrosswordPuzzleWordItemSS06
              ?..getCrosswordPuzzleWordUnitList?.add(getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08)
              ..setBelongToAWord();

            // getCrosswordPuzzleWordItemSS01?.setPrepareExplore();
            // getCrosswordPuzzleWordItemSS02?.setPrepareExplore();
            // getCrosswordPuzzleWordItemSS03?.setPrepareExplore();
            // getCrosswordPuzzleWordItemSS04?.setPrepareExplore();
            // getCrosswordPuzzleWordItemSS05?.setPrepareExplore();
            // getCrosswordPuzzleWordItemSS06?.setPrepareExplore();

            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsDefault();
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsDefault();
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsDefault();
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsDefault();
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsDefault();
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsDefault();

            ///
            getCrosswordPuzzleWordItemSS01?.setCrosswordPuzzleEngSentence(value: 'Puzzle 1: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);
            getCrosswordPuzzleWordItemSS01?.setCrosswordPuzzleVieSentence(value: 'Câu đố 1: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);

            getCrosswordPuzzleWordItemSS02?.setCrosswordPuzzleEngSentence(value: 'Puzzle 2: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);
            getCrosswordPuzzleWordItemSS02?.setCrosswordPuzzleVieSentence(value: 'Câu đố 2: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);

            getCrosswordPuzzleWordItemSS03?.setCrosswordPuzzleEngSentence(value: 'Puzzle 3: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);
            getCrosswordPuzzleWordItemSS03?.setCrosswordPuzzleVieSentence(value: 'Câu đố 3: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);

            getCrosswordPuzzleWordItemSS04?.setCrosswordPuzzleEngSentence(value: 'Puzzle 4: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);
            getCrosswordPuzzleWordItemSS04?.setCrosswordPuzzleVieSentence(value: 'Câu đố 4: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);

            getCrosswordPuzzleWordItemSS05?.setCrosswordPuzzleEngSentence(value: 'Puzzle 5: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);
            getCrosswordPuzzleWordItemSS05?.setCrosswordPuzzleVieSentence(value: 'Câu đố 5: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);

            getCrosswordPuzzleWordItemSS06?.setCrosswordPuzzleEngSentence(value: 'Puzzle 6: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);
            getCrosswordPuzzleWordItemSS06?.setCrosswordPuzzleVieSentence(value: 'Câu đố 6: Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.', isPriorityOverride: true);
          }

          if (totalSeconds == 2) {
            showWordList();
          }

          if (totalSeconds == 5) {
            /// Set Current
            // getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsExploring();
            // getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCrosswordPuzzleWordItemSS01?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);
            // getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCrosswordPuzzleWordItemSS01?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);
            //
            // getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsSwitching();
            // getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsSwitching();
            // getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsSwitching();
            // getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsSwitching();
            // getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsSwitching();
            // hideWordListInPreparing();
          }

          /// TODO: Đoạn Dẫn
          int hookTimeStartIntroCrosswordPuzzleWordItemSS01 = 5;
          int hookTimeStartIntroCrosswordPuzzleWordItemSS02 = 120;
          int hookTimeStartIntroCrosswordPuzzleWordItemSS03 = 240;
          int hookTimeStartIntroCrosswordPuzzleWordItemSS04 = 370;
          int hookTimeStartIntroCrosswordPuzzleWordItemSS05 = 490;
          int hookTimeStartIntroCrosswordPuzzleWordItemSS06 = 610;

          /// TODO: Mở Các Ô Chữ Chính Và Ẩn Các Ô Chữ Khác
          int hookTimeStartOpenCrosswordPuzzleWordItemSS01 = 0 + 10;
          int hookTimeStartOpenCrosswordPuzzleWordItemSS02 = 120 + 10;
          int hookTimeStartOpenCrosswordPuzzleWordItemSS03 = 240 + 10;
          int hookTimeStartOpenCrosswordPuzzleWordItemSS04 = 370 + 10;
          int hookTimeStartOpenCrosswordPuzzleWordItemSS05 = 490 + 10;
          int hookTimeStartOpenCrosswordPuzzleWordItemSS06 = 610 + 10;

          /// TODO: Bắt Đầu Hiển Thị Câu Đố [ENG]
          int hookTimeStartEngSentenceCrosswordPuzzleWordItemSS01 = 30;
          int hookTimeStartEngSentenceCrosswordPuzzleWordItemSS02 = 150;
          int hookTimeStartEngSentenceCrosswordPuzzleWordItemSS03 = 270;
          int hookTimeStartEngSentenceCrosswordPuzzleWordItemSS04 = 400;
          int hookTimeStartEngSentenceCrosswordPuzzleWordItemSS05 = 520;
          int hookTimeStartEngSentenceCrosswordPuzzleWordItemSS06 = 640;

          /// TODO: Bắt Đầu Hiển Thị Câu Đố [VIE]
          int hookTimeStartVieSentenceCrosswordPuzzleWordItemSS01 = 70;
          int hookTimeStartVieSentenceCrosswordPuzzleWordItemSS02 = 190;
          int hookTimeStartVieSentenceCrosswordPuzzleWordItemSS03 = 310;
          int hookTimeStartVieSentenceCrosswordPuzzleWordItemSS04 = 440;
          int hookTimeStartVieSentenceCrosswordPuzzleWordItemSS05 = 560;
          int hookTimeStartVieSentenceCrosswordPuzzleWordItemSS06 = 680;

          /// TODO: Bắt Đầu Hiển Thị Câu Gợi Ý
          int hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS01 = 79;
          int hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS02 = 200;
          int hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS03 = 320;
          int hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS04 = 450;
          int hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS05 = 570;
          int hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS06 = 690;

          /// TODO: Bắt Đầu Hiển Thị Đáp Án
          int hookTimeStartAnswerCrosswordPuzzleWordItemSS01 = 79;
          int hookTimeStartAnswerCrosswordPuzzleWordItemSS02 = 200;
          int hookTimeStartAnswerCrosswordPuzzleWordItemSS03 = 320;
          int hookTimeStartAnswerCrosswordPuzzleWordItemSS04 = 450;
          int hookTimeStartAnswerCrosswordPuzzleWordItemSS05 = 570;
          int hookTimeStartAnswerCrosswordPuzzleWordItemSS06 = 690;

          /// TODO: Bắt Đầu Hiển Thị Nội Dung Tìm Hiểu Thêm
          int hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS01 = 90;
          int hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS02 = 210;
          int hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS03 = 330;
          int hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS04 = 460;
          int hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS05 = 580;
          int hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS06 = 700;

          /// TODO: Tắt Hiển Thị Câu Đố [ENG] & [VIE]
          int hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS01 = 90 - 5;
          int hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS02 = 210 - 5;
          int hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS03 = 330 - 5;
          int hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS04 = 460 - 5;
          int hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS05 = 580 - 5;
          int hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS06 = 700 - 5;

          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// TODO: Chu Trình Câu Đố 1
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||

          /// -----
          /// TODO: [Chu Trình Câu Đố 1] => Đoạn Dẫn ----- (0s - 29s)
          /// -----
          if (totalSeconds == hookTimeStartIntroCrosswordPuzzleWordItemSS01) {
            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsSwitching();

            ///
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsSwitching();

            ///
          }
          if (totalSeconds == hookTimeStartOpenCrosswordPuzzleWordItemSS01) {
            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsExploring();

            hideWordListInPreparing();
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 1] => Bắt Đầu Hiển Thị Câu Đố [ENG] ----- (30s - 89s)
          /// -----
          if (totalSeconds == hookTimeStartEngSentenceCrosswordPuzzleWordItemSS01) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCrosswordPuzzleWordItemSS01?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 1] => Bắt Đầu Hiển Thị Câu Đố [VIE] ----- (70s - 89s)
          /// -----
          if (totalSeconds == hookTimeStartVieSentenceCrosswordPuzzleWordItemSS01) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCrosswordPuzzleWordItemSS01?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 1] => Bắt Đầu Hiển Thị Câu Gợi Ý ----- (79s - 89s)
          /// -----
          if (totalSeconds == hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS01) {
            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 1] => Bắt Đầu Hiển Thị Đáp Án
          /// -----
          if (totalSeconds == hookTimeStartAnswerCrosswordPuzzleWordItemSS01) {
            getCrosswordPuzzleWordItemSS01?.showAnswerAsComplete();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 1] => Tắt Hiển Thị Câu Đố [ENG] & [VIE]
          /// -----
          if (totalSeconds == hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS01) {
            getCurrentCrosswordPuzzleWordItem?.clearCrosswordPuzzleEngVieSentence();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 1] => Bắt Đầu Hiển Thị Nội Dung Tìm Hiểu Thêm ----- (90s - 119s)
          /// -----
          if (totalSeconds == hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS01) {
            ///
          }

          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// TODO: Chu Trình Câu Đố 2
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||

          /// -----
          /// TODO: [Chu Trình Câu Đố 2] => Đoạn Dẫn ----- (120s - 149s)
          /// -----
          if (totalSeconds == hookTimeStartIntroCrosswordPuzzleWordItemSS02) {
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsSwitching();

            ///
            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsSwitching();

            ///
          }
          if (totalSeconds == hookTimeStartOpenCrosswordPuzzleWordItemSS02) {
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsExploring();

            hideWordListInPreparing();
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 2] => Bắt Đầu Hiển Thị Câu Đố [ENG] ----- (150s - 209)
          /// -----
          if (totalSeconds == hookTimeStartEngSentenceCrosswordPuzzleWordItemSS02) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCrosswordPuzzleWordItemSS02?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 2] => Bắt Đầu Hiển Thị Câu Đố [VIE] ----- (190s - 209s)
          /// -----
          if (totalSeconds == hookTimeStartVieSentenceCrosswordPuzzleWordItemSS02) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCrosswordPuzzleWordItemSS02?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 2] => Bắt Đầu Hiển Thị Câu Gợi Ý ----- (200s - 209s)
          /// -----
          if (totalSeconds == hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS02) {
            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 2] => Bắt Đầu Hiển Thị Đáp Án
          /// -----
          if (totalSeconds == hookTimeStartAnswerCrosswordPuzzleWordItemSS02) {
            getCrosswordPuzzleWordItemSS02?.showAnswerAsComplete();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 2] => Tắt Hiển Thị Câu Đố [ENG] & [VIE]
          /// -----
          if (totalSeconds == hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS02) {
            getCurrentCrosswordPuzzleWordItem?.clearCrosswordPuzzleEngVieSentence();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 2] => Bắt Đầu Hiển Thị Nội Dung Tìm Hiểu Thêm ----- (210s - 239s)
          /// -----
          if (totalSeconds == hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS02) {
            ///
          }

          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// TODO: Chu Trình Câu Đố 3
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||

          /// -----
          /// TODO: [Chu Trình Câu Đố 3] => Đoạn Dẫn ----- (240s - 269s)
          /// -----
          if (totalSeconds == hookTimeStartIntroCrosswordPuzzleWordItemSS03) {
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsSwitching();

            ///
            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsSwitching();

            ///
          }
          if (totalSeconds == hookTimeStartOpenCrosswordPuzzleWordItemSS03) {
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsExploring();

            hideWordListInPreparing();
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 3] => Bắt Đầu Hiển Thị Câu Đố [ENG] ----- (270s - 329s)
          /// -----
          if (totalSeconds == hookTimeStartEngSentenceCrosswordPuzzleWordItemSS03) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCrosswordPuzzleWordItemSS03?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 3] => Bắt Đầu Hiển Thị Câu Đố [VIE] ----- (310s - 329s)
          /// -----
          if (totalSeconds == hookTimeStartVieSentenceCrosswordPuzzleWordItemSS03) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCrosswordPuzzleWordItemSS03?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 3] => Bắt Đầu Hiển Thị Câu Gợi Ý ----- (320s - 329s)
          /// -----
          if (totalSeconds == hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS03) {
            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 3] => Bắt Đầu Hiển Thị Đáp Án
          /// -----
          if (totalSeconds == hookTimeStartAnswerCrosswordPuzzleWordItemSS03) {
            getCrosswordPuzzleWordItemSS03?.showAnswerAsComplete();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 3] => Tắt Hiển Thị Câu Đố [ENG] & [VIE]
          /// -----
          if (totalSeconds == hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS03) {
            getCurrentCrosswordPuzzleWordItem?.clearCrosswordPuzzleEngVieSentence();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 3] => Bắt Đầu Hiển Thị Nội Dung Tìm Hiểu Thêm ----- (330s - 369s)
          /// -----
          if (totalSeconds == hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS03) {
            ///
          }

          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// TODO: Chu Trình Câu Đố 4
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||

          /// -----
          /// TODO: [Chu Trình Câu Đố 4] => Đoạn Dẫn ----- (370s - 399s)
          /// -----
          if (totalSeconds == hookTimeStartIntroCrosswordPuzzleWordItemSS04) {
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsSwitching();

            ///
            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsSwitching();

            ///
          }
          if (totalSeconds == hookTimeStartOpenCrosswordPuzzleWordItemSS04) {
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsExploring();

            hideWordListInPreparing();
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 4] => Bắt Đầu Hiển Thị Câu Đố [ENG] ----- (400s - 459s)
          /// -----
          if (totalSeconds == hookTimeStartEngSentenceCrosswordPuzzleWordItemSS04) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCrosswordPuzzleWordItemSS04?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 4] => Bắt Đầu Hiển Thị Câu Đố [VIE] ----- (440s - 459s)
          /// -----
          if (totalSeconds == hookTimeStartVieSentenceCrosswordPuzzleWordItemSS04) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCrosswordPuzzleWordItemSS04?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 4] => Bắt Đầu Hiển Thị Câu Gợi Ý ----- (450s - 459s)
          /// -----
          if (totalSeconds == hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS04) {
            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 4] => Bắt Đầu Hiển Thị Đáp Án
          /// -----
          if (totalSeconds == hookTimeStartAnswerCrosswordPuzzleWordItemSS04) {
            getCrosswordPuzzleWordItemSS04?.showAnswerAsComplete();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 4] => Tắt Hiển Thị Câu Đố [ENG] & [VIE]
          /// -----
          if (totalSeconds == hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS04) {
            getCurrentCrosswordPuzzleWordItem?.clearCrosswordPuzzleEngVieSentence();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 4] => Bắt Đầu Hiển Thị Nội Dung Tìm Hiểu Thêm ----- (460s - 489s)
          /// -----
          if (totalSeconds == hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS04) {
            ///
          }

          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// TODO: Chu Trình Câu Đố 5
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||

          /// -----
          /// TODO: [Chu Trình Câu Đố 5] => Đoạn Dẫn ----- (490s - 519s)
          /// -----
          if (totalSeconds == hookTimeStartIntroCrosswordPuzzleWordItemSS05) {
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsSwitching();

            ///
            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsSwitching();

            ///
          }
          if (totalSeconds == hookTimeStartOpenCrosswordPuzzleWordItemSS05) {
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsExploring();

            hideWordListInPreparing();
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 5] => Bắt Đầu Hiển Thị Câu Đố [ENG] ----- (520s - 579s)
          /// -----
          if (totalSeconds == hookTimeStartEngSentenceCrosswordPuzzleWordItemSS05) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCrosswordPuzzleWordItemSS05?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 5] => Bắt Đầu Hiển Thị Câu Đố [VIE] ----- (560s - 579s)
          /// -----
          if (totalSeconds == hookTimeStartVieSentenceCrosswordPuzzleWordItemSS05) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCrosswordPuzzleWordItemSS05?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 5] => Bắt Đầu Hiển Thị Câu Gợi Ý ----- (570s - 579s)
          /// -----
          if (totalSeconds == hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS05) {
            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 5] => Bắt Đầu Hiển Thị Đáp Án
          /// -----
          if (totalSeconds == hookTimeStartAnswerCrosswordPuzzleWordItemSS05) {
            getCrosswordPuzzleWordItemSS05?.showAnswerAsComplete();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 5] => Tắt Hiển Thị Câu Đố [ENG] & [VIE]
          /// -----
          if (totalSeconds == hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS05) {
            getCurrentCrosswordPuzzleWordItem?.clearCrosswordPuzzleEngVieSentence();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 5] => Bắt Đầu Hiển Thị Nội Dung Tìm Hiểu Thêm ----- (580s - 609s)
          /// -----
          if (totalSeconds == hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS05) {
            ///
          }

          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// TODO: Chu Trình Câu Đố 6
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||
          /// ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- || ----- ||

          /// -----
          /// TODO: [Chu Trình Câu Đố 6] => Đoạn Dẫn ----- (610s - 639s)
          /// -----
          if (totalSeconds == hookTimeStartIntroCrosswordPuzzleWordItemSS06) {
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsSwitching();

            ///
            getCrosswordPuzzleWordItemSS01?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS02?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS03?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS04?.setExploratoryStatusAsSwitching();
            getCrosswordPuzzleWordItemSS05?.setExploratoryStatusAsSwitching();

            ///
          }
          if (totalSeconds == hookTimeStartOpenCrosswordPuzzleWordItemSS06) {
            getCrosswordPuzzleWordItemSS06?.setExploratoryStatusAsExploring();

            hideWordListInPreparing();
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 6] => Bắt Đầu Hiển Thị Câu Đố [ENG] ----- (640s - 699s)
          /// -----
          if (totalSeconds == hookTimeStartEngSentenceCrosswordPuzzleWordItemSS06) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCrosswordPuzzleWordItemSS06?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 6] => Bắt Đầu Hiển Thị Câu Đố [VIE] ----- (680s - 699s)
          /// -----
          if (totalSeconds == hookTimeStartVieSentenceCrosswordPuzzleWordItemSS06) {
            getCurrentCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCrosswordPuzzleWordItemSS06?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 6] => Bắt Đầu Hiển Thị Câu Gợi Ý ----- (690s - 699s)
          /// -----
          if (totalSeconds == hookTimeStartSuggestionSentenceCrosswordPuzzleWordItemSS06) {
            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 6] => Bắt Đầu Hiển Thị Đáp Án
          /// -----
          if (totalSeconds == hookTimeStartAnswerCrosswordPuzzleWordItemSS06) {
            getCrosswordPuzzleWordItemSS06?.showAnswerAsComplete();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 6] => Tắt Hiển Thị Câu Đố [ENG] & [VIE]
          /// -----
          if (totalSeconds == hookTimeCloseEngVieSentenceCrosswordPuzzleWordItemSS06) {
            getCurrentCrosswordPuzzleWordItem?.clearCrosswordPuzzleEngVieSentence();

            ///
          }

          /// -----
          /// TODO: [Chu Trình Câu Đố 6] => Bắt Đầu Hiển Thị Nội Dung Tìm Hiểu Thêm ----- (700s - 719s)
          /// -----
          if (totalSeconds == hookTimeStartMoreInformationSentenceCrosswordPuzzleWordItemSS06) {
            ///
          }

          ///
        } else if ((getTotalRemainingSeconds ?? 0) == 0) {
          getStatus?.setStatusComplete();

          ///
          setPercentComplete(value: 100, isPriorityOverride: true);

          ///
          onComplete?.call();
        }

        int totalRemainingMinutes = (getTotalRemainingSeconds ?? 0) ~/ 60;
        setTotalRemainingMinutes(value: totalRemainingMinutes.toDouble(), isPriorityOverride: true);

        if (kDebugMode) {
          print((getTotalRemainingSeconds ?? 1));
        }
      }
    }
  }

  void prepareShowAnswer() {
    Future.delayed(Duration(milliseconds: 100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 700), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 800), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 900), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1000), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
  }

  void showWordList() {
    Future.delayed(Duration(milliseconds: 100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 700), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG01?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 800), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG02?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 900), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG03?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1000), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG04?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG05?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG06?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG07?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG08?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG09?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG10?.getCrosswordPuzzleWordUnitDataModel?.hiddenUnderneath();
    });
  }

  void hideWordListInPreparing() {
    Future.delayed(Duration(milliseconds: 100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA10?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA09?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB10?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA08?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC10?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA07?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC09?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD10?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA06?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC08?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD09?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC07?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD08?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF10?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 700), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF09?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG10?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 800), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB04?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG09?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 900), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB03?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG08?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 1000), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB02?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE05?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG07?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 1100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB01?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE04?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG06?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 1200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC01?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE03?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG05?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 1300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE02?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF03?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG04?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 1400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE01?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF02?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG03?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF01?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG02?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
    Future.delayed(Duration(milliseconds: 1600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG01?.getCrosswordPuzzleWordUnitDataModel?.switchToExploratoryStatusAsPreparing();
    });
  }

  void showAnswer() {
    _randomCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.setIsCompleteTotally(value: true, isPriorityOverride: true);
    _randomCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel?.showComplete();
  }

  void returnToPrepare() {
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS11?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS12?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS13?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS14?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS15?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS16?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();

    Future.delayed(Duration(milliseconds: 1600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 1000), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG01?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 900), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG02?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 800), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG03?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 700), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSA10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG04?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 600), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSB10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG05?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 500), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSC10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG06?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 400), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSD10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG07?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 300), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSE10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG08?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 200), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSF10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG09?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 100), () {
      ///
      getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSSG10?.getCrosswordPuzzleWordUnitDataModel?.unHiddenUnderneath();
    });
  }

  CrosswordPuzzleWordUnit? _randomCrosswordPuzzleWordUnit;
  void onRandomCrosswordPuzzleWordUnit() {
    try {
      List<CrosswordPuzzleWordUnit?> crosswordPuzzleWordUnitList = [
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS01,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS02,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS03,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS04,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS05,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS06,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS07,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS08,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS09,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS10,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS11,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS12,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS13,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS14,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS15,
        getCurrentCrosswordPuzzleItem?.getCrosswordPuzzleDataModel?.getCrosswordPuzzleWordUnitSS16,
      ];

      List<CrosswordPuzzleWordUnit?> crosswordPuzzleWordUnitListNew = [];

      for (CrosswordPuzzleWordUnit? item in crosswordPuzzleWordUnitList) {
        if (item?.getCrosswordPuzzleWordUnitDataModel?.getIsCompleteTotally != true) {
          crosswordPuzzleWordUnitListNew.add(item);
        }
      }

      final Random random = Random();

      _randomCrosswordPuzzleWordUnit = crosswordPuzzleWordUnitListNew[random.nextInt(crosswordPuzzleWordUnitListNew.length)];

      getCurrentCrosswordPuzzleWordUnit?.setCrosswordPuzzleWordUnitDataModel(value: _randomCrosswordPuzzleWordUnit?.getCrosswordPuzzleWordUnitDataModel, isPriorityOverride: true);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    ///
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
      setTotalSeconds(value: (getTotalMinutes ?? 0) * 60);
      setTotalRemainingSeconds(value: getTotalSeconds);

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

      setCrosswordPuzzleDataModel(value: CrosswordPuzzleDataModel(parentId: getId), isPriorityOverride: true);

      setStatus(value: CrosswordPuzzleStatus.inActive(), isPriorityOverride: true);

      setCurrentCrosswordPuzzleItemList(value: [], isPriorityOverride: true);

      setCurrentCrosswordPuzzleWordItem(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);

      setCrosswordPuzzleWordItemSS01(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);
      setCrosswordPuzzleWordItemSS02(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);
      setCrosswordPuzzleWordItemSS03(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);
      setCrosswordPuzzleWordItemSS04(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);
      setCrosswordPuzzleWordItemSS05(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);
      setCrosswordPuzzleWordItemSS06(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);

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

      await getCrosswordPuzzleDataModel?.onSetupRoot();
      await getStatus?.onSetupRoot();

      getCurrentCrosswordPuzzleWordItem?.onSetupRoot();

      getCrosswordPuzzleWordItemSS01?.onSetupRoot();
      getCrosswordPuzzleWordItemSS02?.onSetupRoot();
      getCrosswordPuzzleWordItemSS03?.onSetupRoot();
      getCrosswordPuzzleWordItemSS04?.onSetupRoot();
      getCrosswordPuzzleWordItemSS05?.onSetupRoot();
      getCrosswordPuzzleWordItemSS06?.onSetupRoot();
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

      await getCrosswordPuzzleDataModel?.onInitRoot();
      await getStatus?.onInitRoot();

      getCurrentCrosswordPuzzleWordItem?.onInitRoot();

      getCrosswordPuzzleWordItemSS01?.onInitRoot();
      getCrosswordPuzzleWordItemSS02?.onInitRoot();
      getCrosswordPuzzleWordItemSS03?.onInitRoot();
      getCrosswordPuzzleWordItemSS04?.onInitRoot();
      getCrosswordPuzzleWordItemSS05?.onInitRoot();
      getCrosswordPuzzleWordItemSS06?.onInitRoot();
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
