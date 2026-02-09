import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_corner_message_notification_functional_feature/models/from_center_position_as_the_corner_message_notification_functional_feature.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_corner_message_notification_functional_feature/widgets/contents/from_center_position_as_the_corner_message_notification_character_widget.dart';
import 'package:frame_creator_v2/master_features/functional_features/from_center_position_as_the_corner_message_notification_functional_feature/widgets/contents/from_center_position_as_the_corner_message_notification_content_widget.dart';

class FromCenterPositionAsTheCornerMessageNotificationWidget extends StatefulWidget {
  const FromCenterPositionAsTheCornerMessageNotificationWidget({super.key, required this.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature});

  final FromCenterPositionAsTheCornerMessageNotificationFunctionalFeature? fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature;

  @override
  State<FromCenterPositionAsTheCornerMessageNotificationWidget> createState() => _FromCenterPositionAsTheCornerMessageNotificationWidgetState();
}

class _FromCenterPositionAsTheCornerMessageNotificationWidgetState extends State<FromCenterPositionAsTheCornerMessageNotificationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  FromCenterPositionAsTheCornerMessageNotificationContentWidget? _fromCenterPositionAsTheCornerMessageNotificationContentWidget;

  @override
  void initState() {
    super.initState();

    _fromCenterPositionAsTheCornerMessageNotificationContentWidget = FromCenterPositionAsTheCornerMessageNotificationContentWidget(
      systemStateManagement: widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSystemStateManagement,
      sizeDx: widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDx ?? 0,
      sizeDy: widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getTopPosition;
    rightPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getRightPosition;
    bottomPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getBottomPosition;
    leftPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getLeftPosition;
    sizeDx = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDx ?? 0;
    sizeDy = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getTopPosition) {
        topPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getRightPosition) {
        rightPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getBottomPosition) {
        bottomPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getLeftPosition) {
        leftPosition = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDx) {
        sizeDx = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDy) {
        sizeDy = widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.checkConditionActiveByDirection() == false) {
        ///
        if (isActivatedWindow == true && isAnimatedShow == true && isMarkedUnactivatedWindow == false) {
          setState(() {
            isMarkedUnactivatedWindow = true;
          });

          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isActivatedWindow = false;
              isAnimatedShow = false;
              isMarkedUnactivatedWindow = false;
            });
          });
        }
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }
      });
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      top: topPosition,
      right: rightPosition,
      bottom: bottomPosition,
      left: leftPosition,
      width: sizeDx,
      height: sizeDy,

      child: isAnimatedShow
          ? FadeInDown(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow
                        ? ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),

                    isActivatedWindow ? _fromCenterPositionAsTheCornerMessageNotificationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: FromCenterPositionAsTheCornerMessageNotificationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy, coreFeature: widget.fromCenterPositionAsTheCornerMessageNotificationFunctionalFeature),
                          )
                        : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
