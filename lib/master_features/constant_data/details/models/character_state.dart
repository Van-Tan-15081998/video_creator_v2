import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/models/character_model.dart';

class CharacterState with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  CharacterModel? _stateModel;
  CharacterModel? get getStateModel => _stateModel;
  void setStateModel({required CharacterModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stateModel = value;
    } else {
      _stateModel ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CharacterState({required CharacterModel? stateModel}) {
    setStateModel(value: stateModel, isPriorityOverride: true);
  }
}
