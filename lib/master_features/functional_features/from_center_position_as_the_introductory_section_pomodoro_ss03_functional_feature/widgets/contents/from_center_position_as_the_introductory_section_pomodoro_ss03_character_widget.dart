import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_introductory_section_pomodoro_ss03_functional_feature/widgets/contents/flame_widget/from_center_position_as_the_introductory_section_pomodoro_ss03_character_flame_widget.dart';

class FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterWidget extends StatefulWidget {
  const FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterWidget> createState() => _FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterWidgetState();
}

class _FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterWidgetState extends State<FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterWidget> {
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
              game: FromCenterPositionAsTheIntroductorySectionPomodoroSS03CharacterFlameWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),
          ),
        ],
      ),
    );
  }
}
