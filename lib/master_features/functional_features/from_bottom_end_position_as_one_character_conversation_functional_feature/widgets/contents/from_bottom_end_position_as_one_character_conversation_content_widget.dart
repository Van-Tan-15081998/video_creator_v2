import 'dart:async';
import 'dart:math';

import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/character_mixin.dart';
import 'package:frame_creator_v2/core/window_mixin.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/controller/functional_sequential_execution_controller.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/contents/details/step_item_content_as_new_message_conversation.dart';
import 'package:frame_creator_v2/master_data/functional_sequential_execution/step_item/functional_sequential_execution_step_item_state.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_character.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/system_window.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class FromBottomEndPositionAsOneCharacterConversationContentWidget extends StatefulWidget {
  const FromBottomEndPositionAsOneCharacterConversationContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<FromBottomEndPositionAsOneCharacterConversationContentWidget> createState() => _FromBottomEndPositionAsOneCharacterConversationContentWidgetState();
}

class _FromBottomEndPositionAsOneCharacterConversationContentWidgetState extends State<FromBottomEndPositionAsOneCharacterConversationContentWidget> with SingleTickerProviderStateMixin, CharacterMixin, WindowMixin {
  late final Ticker _ticker;
  Timer? _timer;

  final ScrollController _scrollController = ScrollController();

  int totalMinutes = 1;
  int totalSeconds = 0;
  int totalMilliseconds = 0;

  double limitedTimeProgressbarLength = 0;
  double limitedTimeProgressbar = 0;

  int up = 100;
  double down = 0.01;

  int counterCreateMessage = 0;
  int counterMessage = 0;

  List<Widget> messageList = [];

  /// -----
  /// TODO:
  /// -----
  FunctionalSequentialExecutionController? _functionalSequentialExecutionController;
  FunctionalSequentialExecutionController? get getFunctionalSequentialExecutionController => _functionalSequentialExecutionController;
  void setFunctionalSequentialExecutionController({required FunctionalSequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _functionalSequentialExecutionController = value;
    } else {
      _functionalSequentialExecutionController ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  FunctionalSequentialExecutionStepItemState? _currentFunctionalSequentialExecutionStepItemState;
  FunctionalSequentialExecutionStepItemState? get getCurrentFunctionalSequentialExecutionStepItemState => _currentFunctionalSequentialExecutionStepItemState;
  void setCurrentFunctionalSequentialExecutionStepItemState({required FunctionalSequentialExecutionStepItemState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentFunctionalSequentialExecutionStepItemState = value;
    } else {
      _currentFunctionalSequentialExecutionStepItemState ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  StepItemContentAsNewMessageConversation? _stepItemContentAsNewMessageConversation;
  StepItemContentAsNewMessageConversation? get getStepItemContentAsNewMessageConversation => _stepItemContentAsNewMessageConversation;
  void setStepItemContentAsNewMessageConversation({required StepItemContentAsNewMessageConversation? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stepItemContentAsNewMessageConversation = value;
    } else {
      _stepItemContentAsNewMessageConversation ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<StepItemContentAsNewMessageConversation?>? _stepItemContentAsNewMessageConversationAsList;
  List<StepItemContentAsNewMessageConversation?>? get getStepItemContentAsNewMessageConversationAsList => _stepItemContentAsNewMessageConversationAsList;
  void setStepItemContentAsNewMessageConversationAsList({required List<StepItemContentAsNewMessageConversation?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stepItemContentAsNewMessageConversationAsList = value;
    } else {
      _stepItemContentAsNewMessageConversationAsList ??= value;
    }

    return;
  }

  @override
  void initState() {
    super.initState();

    /// -----
    /// TODO: Set Mã Định Danh Màn Hình
    /// -----
    setWindowId(value: SystemWindow.fromBottomEndPositionAsOneCharacterConversationWindow, isPriorityOverride: true);

    ///

    /// -----
    /// TODO: Set Mã Định Danh Nhân Vật
    /// -----
    setBottomLeftCharacterId(value: SystemCharacter.characterA01Id, isPriorityOverride: true);
    setBottomRightCharacterId(value: SystemCharacter.characterA02Id, isPriorityOverride: true);

    ///

    setFunctionalSequentialExecutionController(value: widget.systemStateManagement?.getContentItemSequentialExecution?.getFunctionalSequentialExecutionController, isPriorityOverride: true);

    ///

    totalSeconds = 60 * totalMinutes;

    limitedTimeProgressbarLength = widget.sizeDx * 0.78 - 100.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    setStepItemContentAsNewMessageConversationAsList(value: [], isPriorityOverride: true);

    messageList = [
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _ticker = createTicker((Duration elapsed) {
        if (getFunctionalSequentialExecutionController?.getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.isNotEmpty == true) {
          /// -----
          /// TODO: Kiểm Tra Loại Flow
          /// -----
          if (getFunctionalSequentialExecutionController?.getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.getFlowType?.isTypeAsMessageFlow() == true) {
            if (getFunctionalSequentialExecutionController?.getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first?.getStateModel?.getStepItemContent?.getStepItemContentAs<StepItemContentAsNewMessageConversation>()?.getWindowId == getWindowId) {
              ///
              setCurrentFunctionalSequentialExecutionStepItemState(
                //
                value: getFunctionalSequentialExecutionController?.getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.first, //
                isPriorityOverride: true,
              );

              /// -----
              /// TODO: Clear Stack
              /// -----
              getFunctionalSequentialExecutionController?.getFlowController?.getMessageFlowController?.getFunctionalSequentialExecutionStepItemStateListAsStack?.removeAt(0);
            }
          }
        }

        if (getCurrentFunctionalSequentialExecutionStepItemState != null) {
          ///
          if (getCurrentFunctionalSequentialExecutionStepItemState?.getStateModel?.getStepItemContent?.getStepItemContentAs<StepItemContentAsNewMessageConversation>()?.getCharacterId == getBottomLeftCharacterId) {
            StepItemContentAsNewMessageConversation? newMessageConversation = getCurrentFunctionalSequentialExecutionStepItemState?.getStateModel?.getStepItemContent?.getStepItemContentAs<StepItemContentAsNewMessageConversation>();
            getStepItemContentAsNewMessageConversationAsList?.add(newMessageConversation);

            setState(() {
              if (getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getMessage?.isNotEmpty == true) {
                messageList.add(messageByWordWidget(isLeftSide: false, isRightSide: true, engSentence: getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getMessage ?? ''));
              } else if (getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getImageSource?.isNotEmpty == true) {
                messageList.add(pictureMessageByWordWidget(isLeftSide: false, isRightSide: true, imageSource: getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getImageSource ?? ''));
              } else {
                messageList.clear();
              }
            });

            ///
          } else if (getCurrentFunctionalSequentialExecutionStepItemState?.getStateModel?.getStepItemContent?.getStepItemContentAs<StepItemContentAsNewMessageConversation>()?.getCharacterId == getBottomRightCharacterId) {
            StepItemContentAsNewMessageConversation? newMessageConversation = getCurrentFunctionalSequentialExecutionStepItemState?.getStateModel?.getStepItemContent?.getStepItemContentAs<StepItemContentAsNewMessageConversation>();
            getStepItemContentAsNewMessageConversationAsList?.add(newMessageConversation);

            setState(() {
              if (getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getMessage?.isNotEmpty == true) {
                messageList.add(messageByWordWidget(isLeftSide: false, isRightSide: true, engSentence: getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getMessage ?? ''));
              } else if (getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getImageSource?.isNotEmpty == true) {
                messageList.add(pictureMessageByWordWidget(isLeftSide: false, isRightSide: true, imageSource: getStepItemContentAsNewMessageConversationAsList?.firstOrNull?.getImageSource ?? ''));
              } else {
                messageList.clear();
              }
            });

            ///
          }

          getStepItemContentAsNewMessageConversationAsList?.removeAt(0);

          setCurrentFunctionalSequentialExecutionStepItemState(value: null, isPriorityOverride: true);

          onPlaySFXVocabularyConversationSentenceAppear();

          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (_scrollController.hasClients) {
              _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 500), curve: Curves.easeOut);
            }
          });
        }
      })..start();

      ///
    });
  }

  final Random _random = Random();
  onPlaySFXVocabularyConversationSentenceAppear() {
    // FlameAudio.play('sfx/text_appear/vocabulary_conversation_sentence_appear.mp3', volume: 0.25);

    String nextSFX;
    nextSFX = sfxList2[_random.nextInt(sfxList2.length)];
    FlameAudio.play(nextSFX, volume: 0.45);
  }

  final List<String> sfxList = [
    'sfx/text_appear/vocabulary_conversation_sentence_appear_01.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_02.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_03.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_04.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_05.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_06.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_07.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_08.mp3',
  ];

  final List<String> sfxList2 = [
    'sfx/monster_message/monster_message_01.mp3',
    'sfx/monster_message/monster_message_02.mp3',
    'sfx/monster_message/monster_message_03.mp3',
    'sfx/monster_message/monster_message_04.mp3',
    'sfx/monster_message/monster_message_05.mp3',
    'sfx/monster_message/monster_message_06.mp3',
    'sfx/monster_message/monster_message_07.mp3',
    'sfx/monster_message/monster_message_08.mp3',
    'sfx/monster_message/monster_message_09.mp3',
    'sfx/monster_message/monster_message_10.mp3',
    'sfx/monster_message/monster_message_11.mp3',
    'sfx/monster_message/monster_message_12.mp3',
    'sfx/monster_message/monster_message_13.mp3',
    'sfx/monster_message/monster_message_14.mp3',
    'sfx/monster_message/monster_message_15.mp3',
    'sfx/monster_message/monster_message_16.mp3',
    'sfx/monster_message/monster_message_17.mp3',
    'sfx/monster_message/monster_message_18.mp3',
    'sfx/monster_message/monster_message_19.mp3',
    'sfx/monster_message/monster_message_20.mp3',
  ];

  @override
  void dispose() {
    _timer?.cancel();
    _ticker.dispose();
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
          // ClipRRect(
          //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
          //   child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          // ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            right: 15.0,
            top: 15.0,
            height: 100.0,
            child: Container(
              width: 500.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0)),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Conversation',
                                    style: GoogleFonts.poetsenOne(
                                      textStyle: TextStyle(
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2.0
                                          ..color = Color(0xFF000000), // Màu viền
                                        letterSpacing: 5.0,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Conversation',
                                    style: GoogleFonts.poetsenOne(
                                      textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
                                    ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // AnimatedPositioned(
          //   duration: const Duration(milliseconds: 100), //
          //   top: 150.0,
          //   right: -50.0,
          //   width: 800.0,
          //   height: 125.0,
          //   child: AnimatedVocabularyConversationTitleWidget(sizeDx: 800.0, sizeDy: 125.0), //
          // ),
          Positioned(
            bottom: 0,
            left: 0,
            width: 660.0,
            height: 450.0,
            child: SizedBox(
              width: 660.0,
              height: 450.0,
              child: ShaderMask(
                blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      // Colors.white,
                      Colors.white.withValues(alpha: 0.99),
                      Colors.white.withValues(alpha: 0.98),
                      Colors.white.withValues(alpha: 0.97),
                      Colors.white.withValues(alpha: 0.96),
                      Colors.white.withValues(alpha: 0.95),
                      Colors.white.withValues(alpha: 0.94),
                      Colors.white.withValues(alpha: 0.93),
                      Colors.white.withValues(alpha: 0.92),
                      Colors.white.withValues(alpha: 0.91),
                      Colors.white.withValues(alpha: 0.90),
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                    ],
                    stops: [0.88, 0.89, 0.90, 0.91, 0.92, 0.93, 0.94, 0.95, 0.96, 0.97, 0.98, 0.99, 1.0],
                  ).createShader(bounds);
                },
                child: SingleChildScrollView(
                  controller: _scrollController,

                  child: Column(children: messageList),
                ),
              ),
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 5.0, color: Colors.black),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(15.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget messageByWordWidget({required bool isLeftSide, required bool isRightSide, required String engSentence}) {
    double distanceToBorder = 5.0;

    List<String> engWordList = [];

    List<TextSpan> engWordWidgetSpan = [];

    engWordList = engSentence.split(' ');
    for (String word in engWordList) {
      if (word.contains('_')) {
        String trueWord = word.replaceAll('_', '');

        engWordWidgetSpan.add(
          TextSpan(
            text: '$trueWord ',
            style: GoogleFonts.robotoSlab(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 36, height: 1.6),
          ),
        );
      } else {
        engWordWidgetSpan.add(
          TextSpan(
            text: '$word ',
            style: GoogleFonts.robotoSlab(color: Color(0xFF000000), fontWeight: FontWeight.w800, fontSize: 36, height: 1.6),
          ),
        );
      }
    }

    /// max width
    double maxWidth = 630.0;

    double totalHeight = 0;

    double engSentenceHeight = 0;
    double engSentenceWidth = 0;

    int lineNumber = 1;

    switch (engSentence.length) {
      case >= 160 && < 200:
        {
          /// 2 Lines
          engSentenceHeight = 360.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 5;
        }
        break;
      case >= 150 && < 160:
        {
          /// 2 Lines
          engSentenceHeight = 300.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 4;
        }
        break;
      case >= 140 && < 150:
        {
          /// 2 Lines
          engSentenceHeight = 240.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 4;
        }
        break;
      case >= 130 && < 140:
        {
          /// 2 Lines
          engSentenceHeight = 240.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 4;
        }
        break;
      case >= 120 && < 130:
        {
          /// 2 Lines
          engSentenceHeight = 240.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 4;
        }
        break;
      case >= 110 && < 120:
        {
          /// 2 Lines
          engSentenceHeight = 240.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 4;
        }
        break;
      case >= 100 && < 110:
        {
          /// 2 Lines
          engSentenceHeight = 240.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 4;
        }
        break;
      case >= 90 && < 100:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 3;
        }
        break;
      case >= 80 && < 90:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 3;
        }
        break;
      case >= 70 && < 80:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 3;
        }
        break;
      case >= 60 && < 70:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 3;
        }
        break;
      case >= 50 && < 60:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
          lineNumber = 3;
        }
        break;
      case >= 40 && < 50:
        {
          /// 2 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.9;
          lineNumber = 2;
        }
        break;
      case >= 30 && < 40:
        {
          /// 1 Lines &
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.8;
          lineNumber = 2;
        }
        break;
      case >= 20 && < 30:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.7;
          lineNumber = 2;
        }
        break;
      case >= 0 && < 20:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.6;
          lineNumber = 2;
        }
        break;
    }

    totalHeight = engSentenceHeight + 20.0;

    return AnimatedContainer(
      margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      duration: const Duration(milliseconds: 100),
      width: widget.sizeDx,
      height: 450.0,
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            right: isRightSide ? distanceToBorder : null,
            left: isLeftSide ? distanceToBorder : null,
            width: engSentenceWidth,
            height: engSentenceHeight,
            child: Container(
              width: engSentenceWidth,
              height: engSentenceHeight,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withValues(alpha: 0.95),
                border: Border.all(width: 8.0, color: Color(0xFFFFFFFF).withValues(alpha: 0.95)),
                borderRadius: isRightSide
                    ? BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(45.0))
                    : BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0), bottomRight: Radius.circular(45.0), bottomLeft: Radius.circular(0)),
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 8.0, spreadRadius: 1.0, offset: Offset(0, 0))],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: lineNumber,
                      text: TextSpan(children: engWordWidgetSpan),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget pictureMessageByWordWidget({required bool isLeftSide, required bool isRightSide, required String imageSource}) {
    double distanceToBorder = 5.0;

    /// max width
    double maxWidth = 630.0;

    double imageHeight = 350.0;
    double imageWidth = maxWidth;

    return AnimatedContainer(
      margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      duration: const Duration(milliseconds: 100),
      width: widget.sizeDx,
      height: 450.0,

      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            right: isRightSide ? distanceToBorder : null,
            left: isLeftSide ? distanceToBorder : null,
            width: imageWidth,
            height: imageHeight,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                isLeftSide
                    ? Stack(
                        children: [
                          Container(
                            width: imageWidth,
                            height: imageHeight,
                            decoration: BoxDecoration(
                              color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                              border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                              borderRadius: isRightSide
                                  ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                  : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                              image: DecorationImage(image: AssetImage(imageSource), fit: BoxFit.fitWidth),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                          ),
                          Container(
                            width: imageWidth,
                            height: imageHeight,
                            decoration: BoxDecoration(
                              border: Border.all(width: 16.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                              borderRadius: isRightSide
                                  ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                  : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                            ),
                          ),
                        ],
                      )
                    : Container(),
                isRightSide
                    ? Stack(
                        children: [
                          Container(
                            width: imageWidth,
                            height: imageHeight,
                            decoration: BoxDecoration(
                              color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                              border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                              borderRadius: isRightSide
                                  ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                  : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                              image: DecorationImage(image: AssetImage(imageSource), fit: BoxFit.fitWidth),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                          ),
                          Container(
                            width: imageWidth,
                            height: imageHeight,
                            decoration: BoxDecoration(
                              border: Border.all(width: 16.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                              borderRadius: isRightSide
                                  ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                  : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                            ),
                          ),
                        ],
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
