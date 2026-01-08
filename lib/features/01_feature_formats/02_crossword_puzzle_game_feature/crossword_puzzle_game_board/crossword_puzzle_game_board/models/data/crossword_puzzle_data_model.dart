import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class CrosswordPuzzleDataModel with ExecutionCore {
  CrosswordPuzzleDataModel({required String? parentId}) {
    setParentId(value: parentId, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _parentId;
  String? get getParentId => _parentId;
  void setParentId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _parentId = value;
    } else {
      _parentId ??= value;
    }

    getCrosswordPuzzleWordUnitSS01?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS01]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS02?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS02]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS03?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS03]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS04?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS04]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS05?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS05]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS06?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS06]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS07?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS07]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS08?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS08]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS09?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS09]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS10?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS10]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS11?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS11]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS12?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS12]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS13?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS13]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS14?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS14]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS15?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS15]', isPriorityOverride: true);
    getCrosswordPuzzleWordUnitSS16?.getCrosswordPuzzleWordUnitDataModel?.setId(value: '$getParentId _[CPWU_SS16]', isPriorityOverride: true);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _title;
  String? get getTitle => _title;
  void setTitle({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _title = value;
    } else {
      _title ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _topicSpecificImage;
  String? get getTopicSpecificImage => _topicSpecificImage;
  void setTopicSpecificImage({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicSpecificImage = value;
    } else {
      _topicSpecificImage ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS01 => _crosswordPuzzleWordUnitSS01;
  void setCrosswordPuzzleWordUnitSS01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS01 = value;
    } else {
      _crosswordPuzzleWordUnitSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS02 => _crosswordPuzzleWordUnitSS02;
  void setCrosswordPuzzleWordUnitSS02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS02 = value;
    } else {
      _crosswordPuzzleWordUnitSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS03 => _crosswordPuzzleWordUnitSS03;
  void setCrosswordPuzzleWordUnitSS03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS03 = value;
    } else {
      _crosswordPuzzleWordUnitSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS04 => _crosswordPuzzleWordUnitSS04;
  void setCrosswordPuzzleWordUnitSS04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS04 = value;
    } else {
      _crosswordPuzzleWordUnitSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS05 => _crosswordPuzzleWordUnitSS05;
  void setCrosswordPuzzleWordUnitSS05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS05 = value;
    } else {
      _crosswordPuzzleWordUnitSS05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS06 => _crosswordPuzzleWordUnitSS06;
  void setCrosswordPuzzleWordUnitSS06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS06 = value;
    } else {
      _crosswordPuzzleWordUnitSS06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS07 => _crosswordPuzzleWordUnitSS07;
  void setCrosswordPuzzleWordUnitSS07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS07 = value;
    } else {
      _crosswordPuzzleWordUnitSS07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS08 => _crosswordPuzzleWordUnitSS08;
  void setCrosswordPuzzleWordUnitSS08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS08 = value;
    } else {
      _crosswordPuzzleWordUnitSS08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS09 => _crosswordPuzzleWordUnitSS09;
  void setCrosswordPuzzleWordUnitSS09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS09 = value;
    } else {
      _crosswordPuzzleWordUnitSS09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS10 => _crosswordPuzzleWordUnitSS10;
  void setCrosswordPuzzleWordUnitSS10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS10 = value;
    } else {
      _crosswordPuzzleWordUnitSS10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS11;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS11 => _crosswordPuzzleWordUnitSS11;
  void setCrosswordPuzzleWordUnitSS11({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS11 = value;
    } else {
      _crosswordPuzzleWordUnitSS11 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS12;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS12 => _crosswordPuzzleWordUnitSS12;
  void setCrosswordPuzzleWordUnitSS12({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS12 = value;
    } else {
      _crosswordPuzzleWordUnitSS12 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS13;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS13 => _crosswordPuzzleWordUnitSS13;
  void setCrosswordPuzzleWordUnitSS13({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS13 = value;
    } else {
      _crosswordPuzzleWordUnitSS13 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS14;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS14 => _crosswordPuzzleWordUnitSS14;
  void setCrosswordPuzzleWordUnitSS14({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS14 = value;
    } else {
      _crosswordPuzzleWordUnitSS14 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS15;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS15 => _crosswordPuzzleWordUnitSS15;
  void setCrosswordPuzzleWordUnitSS15({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS15 = value;
    } else {
      _crosswordPuzzleWordUnitSS15 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSS16;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSS16 => _crosswordPuzzleWordUnitSS16;
  void setCrosswordPuzzleWordUnitSS16({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSS16 = value;
    } else {
      _crosswordPuzzleWordUnitSS16 ??= value;
    }

    return;
  }

  ///
  ///
  ///
  ///
  ///
  ///

  /// -----
  /// TODO: A01
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA01 => _crosswordPuzzleWordUnitSSA01;
  void setCrosswordPuzzleWordUnitSSA01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA01 = value;
    } else {
      _crosswordPuzzleWordUnitSSA01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A02
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA02 => _crosswordPuzzleWordUnitSSA02;
  void setCrosswordPuzzleWordUnitSSA02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA02 = value;
    } else {
      _crosswordPuzzleWordUnitSSA02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A03
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA03 => _crosswordPuzzleWordUnitSSA03;
  void setCrosswordPuzzleWordUnitSSA03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA03 = value;
    } else {
      _crosswordPuzzleWordUnitSSA03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A04
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA04 => _crosswordPuzzleWordUnitSSA04;
  void setCrosswordPuzzleWordUnitSSA04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA04 = value;
    } else {
      _crosswordPuzzleWordUnitSSA04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A05
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA05 => _crosswordPuzzleWordUnitSSA05;
  void setCrosswordPuzzleWordUnitSSA05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA05 = value;
    } else {
      _crosswordPuzzleWordUnitSSA05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A06
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA06 => _crosswordPuzzleWordUnitSSA06;
  void setCrosswordPuzzleWordUnitSSA06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA06 = value;
    } else {
      _crosswordPuzzleWordUnitSSA06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A07
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA07 => _crosswordPuzzleWordUnitSSA07;
  void setCrosswordPuzzleWordUnitSSA07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA07 = value;
    } else {
      _crosswordPuzzleWordUnitSSA07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A08
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA08 => _crosswordPuzzleWordUnitSSA08;
  void setCrosswordPuzzleWordUnitSSA08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA08 = value;
    } else {
      _crosswordPuzzleWordUnitSSA08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A09
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA09 => _crosswordPuzzleWordUnitSSA09;
  void setCrosswordPuzzleWordUnitSSA09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA09 = value;
    } else {
      _crosswordPuzzleWordUnitSSA09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: A10
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSA10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSA10 => _crosswordPuzzleWordUnitSSA10;
  void setCrosswordPuzzleWordUnitSSA10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSA10 = value;
    } else {
      _crosswordPuzzleWordUnitSSA10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B01
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB01 => _crosswordPuzzleWordUnitSSB01;
  void setCrosswordPuzzleWordUnitSSB01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB01 = value;
    } else {
      _crosswordPuzzleWordUnitSSB01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B02
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB02 => _crosswordPuzzleWordUnitSSB02;
  void setCrosswordPuzzleWordUnitSSB02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB02 = value;
    } else {
      _crosswordPuzzleWordUnitSSB02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B03
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB03 => _crosswordPuzzleWordUnitSSB03;
  void setCrosswordPuzzleWordUnitSSB03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB03 = value;
    } else {
      _crosswordPuzzleWordUnitSSB03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B04
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB04 => _crosswordPuzzleWordUnitSSB04;
  void setCrosswordPuzzleWordUnitSSB04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB04 = value;
    } else {
      _crosswordPuzzleWordUnitSSB04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B05
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB05 => _crosswordPuzzleWordUnitSSB05;
  void setCrosswordPuzzleWordUnitSSB05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB05 = value;
    } else {
      _crosswordPuzzleWordUnitSSB05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B06
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB06 => _crosswordPuzzleWordUnitSSB06;
  void setCrosswordPuzzleWordUnitSSB06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB06 = value;
    } else {
      _crosswordPuzzleWordUnitSSB06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B07
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB07 => _crosswordPuzzleWordUnitSSB07;
  void setCrosswordPuzzleWordUnitSSB07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB07 = value;
    } else {
      _crosswordPuzzleWordUnitSSB07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B08
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB08 => _crosswordPuzzleWordUnitSSB08;
  void setCrosswordPuzzleWordUnitSSB08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB08 = value;
    } else {
      _crosswordPuzzleWordUnitSSB08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B09
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB09 => _crosswordPuzzleWordUnitSSB09;
  void setCrosswordPuzzleWordUnitSSB09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB09 = value;
    } else {
      _crosswordPuzzleWordUnitSSB09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: B10
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSB10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSB10 => _crosswordPuzzleWordUnitSSB10;
  void setCrosswordPuzzleWordUnitSSB10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSB10 = value;
    } else {
      _crosswordPuzzleWordUnitSSB10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C01
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC01 => _crosswordPuzzleWordUnitSSC01;
  void setCrosswordPuzzleWordUnitSSC01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC01 = value;
    } else {
      _crosswordPuzzleWordUnitSSC01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C02
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC02 => _crosswordPuzzleWordUnitSSC02;
  void setCrosswordPuzzleWordUnitSSC02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC02 = value;
    } else {
      _crosswordPuzzleWordUnitSSC02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C03
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC03 => _crosswordPuzzleWordUnitSSC03;
  void setCrosswordPuzzleWordUnitSSC03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC03 = value;
    } else {
      _crosswordPuzzleWordUnitSSC03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C04
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC04 => _crosswordPuzzleWordUnitSSC04;
  void setCrosswordPuzzleWordUnitSSC04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC04 = value;
    } else {
      _crosswordPuzzleWordUnitSSC04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C05
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC05 => _crosswordPuzzleWordUnitSSC05;
  void setCrosswordPuzzleWordUnitSSC05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC05 = value;
    } else {
      _crosswordPuzzleWordUnitSSC05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C06
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC06 => _crosswordPuzzleWordUnitSSC06;
  void setCrosswordPuzzleWordUnitSSC06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC06 = value;
    } else {
      _crosswordPuzzleWordUnitSSC06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C07
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC07 => _crosswordPuzzleWordUnitSSC07;
  void setCrosswordPuzzleWordUnitSSC07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC07 = value;
    } else {
      _crosswordPuzzleWordUnitSSC07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C08
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC08 => _crosswordPuzzleWordUnitSSC08;
  void setCrosswordPuzzleWordUnitSSC08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC08 = value;
    } else {
      _crosswordPuzzleWordUnitSSC08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C09
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC09 => _crosswordPuzzleWordUnitSSC09;
  void setCrosswordPuzzleWordUnitSSC09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC09 = value;
    } else {
      _crosswordPuzzleWordUnitSSC09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: C10
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSC10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSC10 => _crosswordPuzzleWordUnitSSC10;
  void setCrosswordPuzzleWordUnitSSC10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSC10 = value;
    } else {
      _crosswordPuzzleWordUnitSSC10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D01
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD01 => _crosswordPuzzleWordUnitSSD01;
  void setCrosswordPuzzleWordUnitSSD01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD01 = value;
    } else {
      _crosswordPuzzleWordUnitSSD01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D02
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD02 => _crosswordPuzzleWordUnitSSD02;
  void setCrosswordPuzzleWordUnitSSD02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD02 = value;
    } else {
      _crosswordPuzzleWordUnitSSD02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D03
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD03 => _crosswordPuzzleWordUnitSSD03;
  void setCrosswordPuzzleWordUnitSSD03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD03 = value;
    } else {
      _crosswordPuzzleWordUnitSSD03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D04
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD04 => _crosswordPuzzleWordUnitSSD04;
  void setCrosswordPuzzleWordUnitSSD04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD04 = value;
    } else {
      _crosswordPuzzleWordUnitSSD04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D05
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD05 => _crosswordPuzzleWordUnitSSD05;
  void setCrosswordPuzzleWordUnitSSD05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD05 = value;
    } else {
      _crosswordPuzzleWordUnitSSD05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D06
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD06 => _crosswordPuzzleWordUnitSSD06;
  void setCrosswordPuzzleWordUnitSSD06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD06 = value;
    } else {
      _crosswordPuzzleWordUnitSSD06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D07
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD07 => _crosswordPuzzleWordUnitSSD07;
  void setCrosswordPuzzleWordUnitSSD07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD07 = value;
    } else {
      _crosswordPuzzleWordUnitSSD07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D08
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD08 => _crosswordPuzzleWordUnitSSD08;
  void setCrosswordPuzzleWordUnitSSD08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD08 = value;
    } else {
      _crosswordPuzzleWordUnitSSD08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D09
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD09 => _crosswordPuzzleWordUnitSSD09;
  void setCrosswordPuzzleWordUnitSSD09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD09 = value;
    } else {
      _crosswordPuzzleWordUnitSSD09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: D10
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSD10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSD10 => _crosswordPuzzleWordUnitSSD10;
  void setCrosswordPuzzleWordUnitSSD10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSD10 = value;
    } else {
      _crosswordPuzzleWordUnitSSD10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E01
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE01 => _crosswordPuzzleWordUnitSSE01;
  void setCrosswordPuzzleWordUnitSSE01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE01 = value;
    } else {
      _crosswordPuzzleWordUnitSSE01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E02
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE02 => _crosswordPuzzleWordUnitSSE02;
  void setCrosswordPuzzleWordUnitSSE02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE02 = value;
    } else {
      _crosswordPuzzleWordUnitSSE02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E03
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE03 => _crosswordPuzzleWordUnitSSE03;
  void setCrosswordPuzzleWordUnitSSE03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE03 = value;
    } else {
      _crosswordPuzzleWordUnitSSE03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E04
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE04 => _crosswordPuzzleWordUnitSSE04;
  void setCrosswordPuzzleWordUnitSSE04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE04 = value;
    } else {
      _crosswordPuzzleWordUnitSSE04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E05
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE05 => _crosswordPuzzleWordUnitSSE05;
  void setCrosswordPuzzleWordUnitSSE05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE05 = value;
    } else {
      _crosswordPuzzleWordUnitSSE05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E06
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE06 => _crosswordPuzzleWordUnitSSE06;
  void setCrosswordPuzzleWordUnitSSE06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE06 = value;
    } else {
      _crosswordPuzzleWordUnitSSE06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E07
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE07 => _crosswordPuzzleWordUnitSSE07;
  void setCrosswordPuzzleWordUnitSSE07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE07 = value;
    } else {
      _crosswordPuzzleWordUnitSSE07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E08
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE08 => _crosswordPuzzleWordUnitSSE08;
  void setCrosswordPuzzleWordUnitSSE08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE08 = value;
    } else {
      _crosswordPuzzleWordUnitSSE08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E09
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE09 => _crosswordPuzzleWordUnitSSE09;
  void setCrosswordPuzzleWordUnitSSE09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE09 = value;
    } else {
      _crosswordPuzzleWordUnitSSE09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: E10
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSE10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSE10 => _crosswordPuzzleWordUnitSSE10;
  void setCrosswordPuzzleWordUnitSSE10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSE10 = value;
    } else {
      _crosswordPuzzleWordUnitSSE10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F01
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF01 => _crosswordPuzzleWordUnitSSF01;
  void setCrosswordPuzzleWordUnitSSF01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF01 = value;
    } else {
      _crosswordPuzzleWordUnitSSF01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F02
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF02 => _crosswordPuzzleWordUnitSSF02;
  void setCrosswordPuzzleWordUnitSSF02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF02 = value;
    } else {
      _crosswordPuzzleWordUnitSSF02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F03
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF03 => _crosswordPuzzleWordUnitSSF03;
  void setCrosswordPuzzleWordUnitSSF03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF03 = value;
    } else {
      _crosswordPuzzleWordUnitSSF03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F04
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF04 => _crosswordPuzzleWordUnitSSF04;
  void setCrosswordPuzzleWordUnitSSF04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF04 = value;
    } else {
      _crosswordPuzzleWordUnitSSF04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F05
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF05 => _crosswordPuzzleWordUnitSSF05;
  void setCrosswordPuzzleWordUnitSSF05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF05 = value;
    } else {
      _crosswordPuzzleWordUnitSSF05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F06
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF06 => _crosswordPuzzleWordUnitSSF06;
  void setCrosswordPuzzleWordUnitSSF06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF06 = value;
    } else {
      _crosswordPuzzleWordUnitSSF06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F07
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF07 => _crosswordPuzzleWordUnitSSF07;
  void setCrosswordPuzzleWordUnitSSF07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF07 = value;
    } else {
      _crosswordPuzzleWordUnitSSF07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F08
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF08 => _crosswordPuzzleWordUnitSSF08;
  void setCrosswordPuzzleWordUnitSSF08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF08 = value;
    } else {
      _crosswordPuzzleWordUnitSSF08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F09
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF09 => _crosswordPuzzleWordUnitSSF09;
  void setCrosswordPuzzleWordUnitSSF09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF09 = value;
    } else {
      _crosswordPuzzleWordUnitSSF09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: F10
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSF10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSF10 => _crosswordPuzzleWordUnitSSF10;
  void setCrosswordPuzzleWordUnitSSF10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSF10 = value;
    } else {
      _crosswordPuzzleWordUnitSSF10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G01
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG01;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG01 => _crosswordPuzzleWordUnitSSG01;
  void setCrosswordPuzzleWordUnitSSG01({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG01 = value;
    } else {
      _crosswordPuzzleWordUnitSSG01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G02
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG02;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG02 => _crosswordPuzzleWordUnitSSG02;
  void setCrosswordPuzzleWordUnitSSG02({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG02 = value;
    } else {
      _crosswordPuzzleWordUnitSSG02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G03
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG03;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG03 => _crosswordPuzzleWordUnitSSG03;
  void setCrosswordPuzzleWordUnitSSG03({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG03 = value;
    } else {
      _crosswordPuzzleWordUnitSSG03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G04
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG04;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG04 => _crosswordPuzzleWordUnitSSG04;
  void setCrosswordPuzzleWordUnitSSG04({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG04 = value;
    } else {
      _crosswordPuzzleWordUnitSSG04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G05
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG05;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG05 => _crosswordPuzzleWordUnitSSG05;
  void setCrosswordPuzzleWordUnitSSG05({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG05 = value;
    } else {
      _crosswordPuzzleWordUnitSSG05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G06
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG06;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG06 => _crosswordPuzzleWordUnitSSG06;
  void setCrosswordPuzzleWordUnitSSG06({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG06 = value;
    } else {
      _crosswordPuzzleWordUnitSSG06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G07
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG07;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG07 => _crosswordPuzzleWordUnitSSG07;
  void setCrosswordPuzzleWordUnitSSG07({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG07 = value;
    } else {
      _crosswordPuzzleWordUnitSSG07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G08
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG08;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG08 => _crosswordPuzzleWordUnitSSG08;
  void setCrosswordPuzzleWordUnitSSG08({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG08 = value;
    } else {
      _crosswordPuzzleWordUnitSSG08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G09
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG09;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG09 => _crosswordPuzzleWordUnitSSG09;
  void setCrosswordPuzzleWordUnitSSG09({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG09 = value;
    } else {
      _crosswordPuzzleWordUnitSSG09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: G10
  /// -----
  CrosswordPuzzleWordUnit? _crosswordPuzzleWordUnitSSG10;
  CrosswordPuzzleWordUnit? get getCrosswordPuzzleWordUnitSSG10 => _crosswordPuzzleWordUnitSSG10;
  void setCrosswordPuzzleWordUnitSSG10({required CrosswordPuzzleWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitSSG10 = value;
    } else {
      _crosswordPuzzleWordUnitSSG10 ??= value;
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

      setCrosswordPuzzleWordUnitSS01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS10]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS11(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS11]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS12(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS12]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS13(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS13]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS14(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS14]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS15(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS15]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSS16(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SS16]'), isPriorityOverride: true);

      setCrosswordPuzzleWordUnitSSA01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSA10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSA10]'), isPriorityOverride: true);

      setCrosswordPuzzleWordUnitSSB01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSB10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSB10]'), isPriorityOverride: true);

      setCrosswordPuzzleWordUnitSSC01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSC10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSC10]'), isPriorityOverride: true);

      setCrosswordPuzzleWordUnitSSD01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSD10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSD10]'), isPriorityOverride: true);

      setCrosswordPuzzleWordUnitSSE01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSE10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSE10]'), isPriorityOverride: true);

      setCrosswordPuzzleWordUnitSSF01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSF10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSF10]'), isPriorityOverride: true);

      setCrosswordPuzzleWordUnitSSG01(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG01]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG02(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG02]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG03(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG03]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG04(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG04]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG05(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG05]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG06(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG06]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG07(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG07]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG08(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG08]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG09(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG09]'), isPriorityOverride: true);
      setCrosswordPuzzleWordUnitSSG10(value: CrosswordPuzzleWordUnit(id: '$getParentId _[CPWU_SSG10]'), isPriorityOverride: true);

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

      getCrosswordPuzzleWordUnitSS01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS10?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS11?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS12?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS13?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS14?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS15?.onSetupRoot();
      getCrosswordPuzzleWordUnitSS16?.onSetupRoot();

      getCrosswordPuzzleWordUnitSSA01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSA10?.onSetupRoot();

      getCrosswordPuzzleWordUnitSSB01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSB10?.onSetupRoot();

      getCrosswordPuzzleWordUnitSSC01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSC10?.onSetupRoot();

      getCrosswordPuzzleWordUnitSSD01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSD10?.onSetupRoot();

      getCrosswordPuzzleWordUnitSSE01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSE10?.onSetupRoot();

      getCrosswordPuzzleWordUnitSSF01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSF10?.onSetupRoot();

      getCrosswordPuzzleWordUnitSSG01?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG02?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG03?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG04?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG05?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG06?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG07?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG08?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG09?.onSetupRoot();
      getCrosswordPuzzleWordUnitSSG10?.onSetupRoot();
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

      getCrosswordPuzzleWordUnitSS01?.onInitRoot();
      getCrosswordPuzzleWordUnitSS02?.onInitRoot();
      getCrosswordPuzzleWordUnitSS03?.onInitRoot();
      getCrosswordPuzzleWordUnitSS04?.onInitRoot();
      getCrosswordPuzzleWordUnitSS05?.onInitRoot();
      getCrosswordPuzzleWordUnitSS06?.onInitRoot();
      getCrosswordPuzzleWordUnitSS07?.onInitRoot();
      getCrosswordPuzzleWordUnitSS08?.onInitRoot();
      getCrosswordPuzzleWordUnitSS09?.onInitRoot();
      getCrosswordPuzzleWordUnitSS10?.onInitRoot();
      getCrosswordPuzzleWordUnitSS11?.onInitRoot();
      getCrosswordPuzzleWordUnitSS12?.onInitRoot();
      getCrosswordPuzzleWordUnitSS13?.onInitRoot();
      getCrosswordPuzzleWordUnitSS14?.onInitRoot();
      getCrosswordPuzzleWordUnitSS15?.onInitRoot();
      getCrosswordPuzzleWordUnitSS16?.onInitRoot();

      getCrosswordPuzzleWordUnitSSA01?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA02?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA03?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA04?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA05?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA06?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA07?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA08?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA09?.onInitRoot();
      getCrosswordPuzzleWordUnitSSA10?.onInitRoot();

      getCrosswordPuzzleWordUnitSSB01?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB02?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB03?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB04?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB05?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB06?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB07?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB08?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB09?.onInitRoot();
      getCrosswordPuzzleWordUnitSSB10?.onInitRoot();

      getCrosswordPuzzleWordUnitSSC01?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC02?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC03?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC04?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC05?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC06?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC07?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC08?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC09?.onInitRoot();
      getCrosswordPuzzleWordUnitSSC10?.onInitRoot();

      getCrosswordPuzzleWordUnitSSD01?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD02?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD03?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD04?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD05?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD06?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD07?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD08?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD09?.onInitRoot();
      getCrosswordPuzzleWordUnitSSD10?.onInitRoot();

      getCrosswordPuzzleWordUnitSSE01?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE02?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE03?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE04?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE05?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE06?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE07?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE08?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE09?.onInitRoot();
      getCrosswordPuzzleWordUnitSSE10?.onInitRoot();

      getCrosswordPuzzleWordUnitSSF01?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF02?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF03?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF04?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF05?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF06?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF07?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF08?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF09?.onInitRoot();
      getCrosswordPuzzleWordUnitSSF10?.onInitRoot();

      getCrosswordPuzzleWordUnitSSG01?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG02?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG03?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG04?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG05?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG06?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG07?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG08?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG09?.onInitRoot();
      getCrosswordPuzzleWordUnitSSG10?.onInitRoot();
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

class CrosswordPuzzleWordUnit with ExecutionCore {
  CrosswordPuzzleWordUnit({required String? id}) {
    setCrosswordPuzzleWordUnitDataModel(value: CrosswordPuzzleWordUnitDataModel(), isPriorityOverride: true);

    getCrosswordPuzzleWordUnitDataModel?.setId(value: id, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordUnitDataModel? _crosswordPuzzleWordUnitDataModel;
  CrosswordPuzzleWordUnitDataModel? get getCrosswordPuzzleWordUnitDataModel => _crosswordPuzzleWordUnitDataModel;
  void setCrosswordPuzzleWordUnitDataModel({required CrosswordPuzzleWordUnitDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordUnitDataModel = value;
    } else {
      _crosswordPuzzleWordUnitDataModel ??= value;
    }

    return;
  }
}

class CrosswordPuzzleWordUnitDataModel with ExecutionCore {
  CrosswordPuzzleWordUnitDataModel() {
    setExploratoryStatusAsDefault();
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

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _word;
  String? get getWord => _word;
  void setWord({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _word = value;
    } else {
      _word ??= value;
    }

    return;
  }

  void clear() {
    // setWord(value: '', isPriorityOverride: true);
    // setId(value: '', isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _topicSpecificImage;
  String? get getTopicSpecificImage => _topicSpecificImage;
  void setTopicSpecificImage({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicSpecificImage = value;
    } else {
      _topicSpecificImage ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _showStatus;
  String? get getShowStatus => _showStatus;
  void setShowStatus({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _showStatus = value;
    } else {
      _showStatus ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isCompleteTotally;
  bool? get getIsCompleteTotally => _isCompleteTotally;
  void setIsCompleteTotally({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isCompleteTotally = value;
    } else {
      _isCompleteTotally ??= value;
    }

    return;
  }

  ///
  /// TODO: Chữ Cái Này Thuộc Một Từ Trong Game
  ///
  bool? _isBelongToAWord;
  bool? get getIsBelongToAWord => _isBelongToAWord;
  void setIsBelongToAWord({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isBelongToAWord = value;
    } else {
      _isBelongToAWord ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Trạng Thái Khám Phá
  /// -----
  String? _exploratoryStatus;
  String? get getExploratoryStatus => _exploratoryStatus;
  void setExploratoryStatus({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _exploratoryStatus = value;
    } else {
      _exploratoryStatus ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Exploring
  /// -----
  void setExploratoryStatusAsExploring() {
    setExploratoryStatus(value: '[EXPLORING]', isPriorityOverride: true);
  }

  bool isExploratoryStatusAsExploring() {
    if (getExploratoryStatus == '[EXPLORING]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Default
  /// -----
  setExploratoryStatusAsDefault() {
    setExploratoryStatus(value: '[DEFAULT]', isPriorityOverride: true);
  }

  bool isExploratoryStatusAsDefault() {
    if (getExploratoryStatus == '[DEFAULT]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Explored
  /// -----
  void setExploratoryStatusAsExplored() {
    setExploratoryStatus(value: '[EXPLORED]', isPriorityOverride: true);
  }

  bool isExploratoryStatusAsExplored() {
    if (getExploratoryStatus == '[EXPLORED]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Preparing
  /// -----
  void setExploratoryStatusAsPreparing() {
    setExploratoryStatus(value: '[PREPARING]', isPriorityOverride: true);
  }

  bool isExploratoryStatusAsPreparing() {
    if (getExploratoryStatus == '[PREPARING]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Switching
  /// -----
  void setExploratoryStatusAsSwitching() {
    setExploratoryStatus(value: '[SWITCHING]', isPriorityOverride: true);
  }

  bool isExploratoryStatusAsSwitching() {
    if (getExploratoryStatus == '[SWITCHING]') {
      return true;
    }
    return false;
  }

  ///
  /// TODO:
  ///
  bool isBelongToAWord() {
    if (getIsBelongToAWord == true) {
      return true;
    }
    return false;
  }

  void hide() {
    if (getIsCompleteTotally != true) {
      setShowStatus(value: '[HIDE]', isPriorityOverride: true);
    }
  }

  bool isHide() {
    if (getShowStatus == '[HIDE]') {
      return true;
    }

    return false;
  }

  void hiding() {
    if (getIsCompleteTotally != true) {
      setShowStatus(value: '[HIDING]', isPriorityOverride: true);
    }
  }

  bool isHiding() {
    if (getShowStatus == '[HIDING]') {
      return true;
    }

    return false;
  }

  void show() {
    setShowStatus(value: '[SHOW]', isPriorityOverride: true);
  }

  bool isShow() {
    if (getShowStatus == '[SHOW]') {
      return true;
    }

    return false;
  }

  void showing() {
    setShowStatus(value: '[SHOWING]', isPriorityOverride: true);
  }

  bool isShowing() {
    if (getShowStatus == '[SHOWING]') {
      return true;
    }

    return false;
  }

  ///
  /// hidden underneath
  ///
  void hiddenUnderneath() {
    setShowStatus(value: '[HIDDEN_UNDERNEATH]', isPriorityOverride: true);
  }

  bool isHiddenUnderneath() {
    if (getShowStatus == '[HIDDEN_UNDERNEATH]') {
      return true;
    }

    return false;
  }

  void switchToExploratoryStatusAsPreparing() {
    if (isExploratoryStatusAsSwitching() == true) {
      setExploratoryStatusAsPreparing();
    }
  }

  ///
  /// un hidden underneath
  ///
  void unHiddenUnderneath() {
    setShowStatus(value: '[UNHIDDEN_UNDERNEATH]', isPriorityOverride: true);
  }

  bool isUnHiddenUnderneath() {
    if (getShowStatus == '[UNHIDDEN_UNDERNEATH]') {
      return true;
    }

    return false;
  }

  ///
  /// complete
  ///
  void showComplete() {
    setShowStatus(value: '[SHOW_COMPLETE]', isPriorityOverride: true);
  }

  bool isShowComplete() {
    if (getShowStatus == '[SHOW_COMPLETE]') {
      return true;
    }

    return false;
  }
}
