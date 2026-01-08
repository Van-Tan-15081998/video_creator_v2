import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/master_feature_01/sample_feature_01/models/sample_feature_01.dart';
import 'package:frame_creator_v2/master_feature_01/sample_feature_01/widgets/contents/sample_01_content_widget.dart';

class Sample01Widget extends StatefulWidget {
  const Sample01Widget({super.key, required this.sampleFeature01});

  final SampleFeature01? sampleFeature01;

  @override
  State<Sample01Widget> createState() => _BackgroundImageWidgetState();
}

class _BackgroundImageWidgetState extends State<Sample01Widget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  Sample01ContentWidget? _sample01ContentWidget;

  @override
  void initState() {
    super.initState();

    _sample01ContentWidget = Sample01ContentWidget(systemStateManagement: widget.sampleFeature01?.getSystemStateManagement, sizeDx: widget.sampleFeature01?.getSizeDx ?? 0, sizeDy: widget.sampleFeature01?.getSizeDy ?? 0);

    topPosition = widget.sampleFeature01?.getTopPosition;
    rightPosition = widget.sampleFeature01?.getRightPosition;
    bottomPosition = widget.sampleFeature01?.getBottomPosition;
    leftPosition = widget.sampleFeature01?.getLeftPosition;
    sizeDx = widget.sampleFeature01?.getSizeDx ?? 0;
    sizeDy = widget.sampleFeature01?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.sampleFeature01?.isConditionActiveByTopDirection() == true && topPosition != widget.sampleFeature01?.getTopPosition) {
        topPosition = widget.sampleFeature01?.getTopPosition;
        isUpdate = true;
      }

      if (widget.sampleFeature01?.isConditionActiveByRightDirection() == true && rightPosition != widget.sampleFeature01?.getRightPosition) {
        rightPosition = widget.sampleFeature01?.getRightPosition;
        isUpdate = true;
      }

      if (widget.sampleFeature01?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.sampleFeature01?.getBottomPosition) {
        bottomPosition = widget.sampleFeature01?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.sampleFeature01?.isConditionActiveByLeftDirection() == true && leftPosition != widget.sampleFeature01?.getLeftPosition) {
        leftPosition = widget.sampleFeature01?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.sampleFeature01?.getSizeDx) {
        sizeDx = widget.sampleFeature01?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.sampleFeature01?.getSizeDy) {
        sizeDy = widget.sampleFeature01?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.sampleFeature01?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.sampleFeature01?.checkConditionActiveByDirection() == false) {
            isAnimatedShow = false;
          }
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
      duration: const Duration(milliseconds: 100),
      top: topPosition,
      right: rightPosition,
      bottom: bottomPosition,
      left: leftPosition,
      width: sizeDx,
      height: sizeDy,

      child: isAnimatedShow
          ? BounceInDown(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_sample01ContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
