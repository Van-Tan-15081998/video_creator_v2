import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss01_functional_feature/widgets/contents/flame_widget/from_center_position_as_the_introductory_section_pomodoro_ss01_character_flame_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_one_character_conversation_functional_feature/widgets/contents/flame_widget/from_center_start_position_as_one_character_conversation_character_flame_widget.dart';

class FromCenterPositionAsTheIntroductorySectionPomodoroSS01CharacterWidget extends StatefulWidget {
  const FromCenterPositionAsTheIntroductorySectionPomodoroSS01CharacterWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<FromCenterPositionAsTheIntroductorySectionPomodoroSS01CharacterWidget> createState() => _FromCenterPositionAsTheIntroductorySectionPomodoroSS01CharacterWidgetState();
}

class _FromCenterPositionAsTheIntroductorySectionPomodoroSS01CharacterWidgetState extends State<FromCenterPositionAsTheIntroductorySectionPomodoroSS01CharacterWidget> {
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
              game: FromCenterPositionAsTheIntroductorySectionPomodoroSs01CharacterFlameWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),
          ),
        ],
      ),
    );
  }
}
