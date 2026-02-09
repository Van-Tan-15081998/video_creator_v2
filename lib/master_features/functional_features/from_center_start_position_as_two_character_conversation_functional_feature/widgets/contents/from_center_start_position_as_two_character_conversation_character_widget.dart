import 'package:flutter/material.dart';
import 'package:frame_creator_v2/basic_importation.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_start_position_as_two_character_conversation_functional_feature/widgets/contents/flame_widget/from_center_start_position_as_two_character_conversation_character_flame_widget.dart';

class FromCenterStartPositionAsTwoCharacterConversationCharacterWidget extends StatefulWidget {
  const FromCenterStartPositionAsTwoCharacterConversationCharacterWidget({super.key, required this.sizeDx, required this.sizeDy, required this.coreFeature});

  final double sizeDx;
  final double sizeDy;

  final CoreFeature? coreFeature;

  @override
  State<FromCenterStartPositionAsTwoCharacterConversationCharacterWidget> createState() => _TwoCharacterConversationCharacterWidgetState();
}

class _TwoCharacterConversationCharacterWidgetState extends State<FromCenterStartPositionAsTwoCharacterConversationCharacterWidget> {
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
              game: FromCenterStartPositionAsTwoCharacterConversationCharacterFlameWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy, coreFeature: widget.coreFeature),
            ),
          ),
        ],
      ),
    );
  }
}
