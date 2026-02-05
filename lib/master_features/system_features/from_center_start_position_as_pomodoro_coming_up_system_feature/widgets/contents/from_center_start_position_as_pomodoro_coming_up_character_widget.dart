import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/flame_widget/from_center_start_position_as_one_character_conversation_character_flame_widget.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_coming_up_system_feature/widgets/contents/flame_widget/from_center_start_position_as_pomodoro_coming_up_character_flame_widget.dart';
import 'package:frame_creator_v2/master_features/system_features/from_center_start_position_as_pomodoro_starting_system_feature/widgets/contents/flame_widget/from_center_start_position_as_pomodoro_starting_character_flame_widget.dart';

class FromCenterStartPositionAsPomodoroComingUpCharacterWidget extends StatefulWidget {
  const FromCenterStartPositionAsPomodoroComingUpCharacterWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<FromCenterStartPositionAsPomodoroComingUpCharacterWidget> createState() => _FromCenterStartPositionAsPomodoroComingUpCharacterWidgetState();
}

class _FromCenterStartPositionAsPomodoroComingUpCharacterWidgetState extends State<FromCenterStartPositionAsPomodoroComingUpCharacterWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ///
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      width: widget.sizeDx,
      height: widget.sizeDy,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: GameWidget(
              game: FromCenterStartPositionAsPomodoroComingUpCharacterFlameWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),
          ),
        ],
      ),
    );
  }
}
