import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

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
}
