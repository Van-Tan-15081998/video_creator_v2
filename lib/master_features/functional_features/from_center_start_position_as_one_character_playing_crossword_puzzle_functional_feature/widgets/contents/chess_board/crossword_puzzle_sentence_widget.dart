import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_item.dart';
import 'package:frame_creator_v2/features/01_feature_formats/02_crossword_puzzle_game_feature/crossword_puzzle_game_board/crossword_puzzle_game_board/models/data/crossword_puzzle_word_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class CrosswordPuzzleSentenceWidget extends StatefulWidget {
  const CrosswordPuzzleSentenceWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<CrosswordPuzzleSentenceWidget> createState() => _CrosswordPuzzleSentenceWidgetState();
}

class _CrosswordPuzzleSentenceWidgetState extends State<CrosswordPuzzleSentenceWidget> with TickerProviderStateMixin {
  late final Ticker _ticker;

  final ScrollController _scrollController = ScrollController();

  List<Widget> messageList = [];

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleWordItem? _crosswordPuzzleWordItem;
  CrosswordPuzzleWordItem? get getCrosswordPuzzleWordItem => _crosswordPuzzleWordItem;
  void setCrosswordPuzzleWordItem({required CrosswordPuzzleWordItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _crosswordPuzzleWordItem = value;
    } else {
      _crosswordPuzzleWordItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CrosswordPuzzleItem? _currentCrosswordPuzzleItem;
  CrosswordPuzzleItem? get getCurrentCrosswordPuzzleItem => _currentCrosswordPuzzleItem;
  void setCurrentCrosswordPuzzleItem({required CrosswordPuzzleItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentCrosswordPuzzleItem = value;
    } else {
      _currentCrosswordPuzzleItem ??= value;
    }

    return;
  }

  double defaultTimingDistance = 500.0;

  double defaultEngDistance = 500.0;
  double defaultVieDistance = 200.0;

  double defaultEngTiming = 500.0;
  double defaultVieTiming = 200.0;

  @override
  void initState() {
    super.initState();

    setCrosswordPuzzleWordItem(value: CrosswordPuzzleWordItem(), isPriorityOverride: true);

    setCurrentCrosswordPuzzleItem(value: widget.systemStateManagement?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCurrentCrosswordPuzzleItem, isPriorityOverride: true);

    // sizeUnit = widget.sizeDx / 4;
    sizeUnit = widget.sizeDx / 10;

    _ticker = createTicker((Duration elapsed) {
      if (getCrosswordPuzzleWordItem?.getCrosswordPuzzleEngSentence != getCurrentCrosswordPuzzleItem?.getCurrentCrosswordPuzzleWordItem?.getCrosswordPuzzleEngSentence || //
          getCrosswordPuzzleWordItem?.getCrosswordPuzzleVieSentence != getCurrentCrosswordPuzzleItem?.getCurrentCrosswordPuzzleWordItem?.getCrosswordPuzzleVieSentence) {
        setState(() {
          getCrosswordPuzzleWordItem?.setCrosswordPuzzleEngSentence(value: getCurrentCrosswordPuzzleItem?.getCurrentCrosswordPuzzleWordItem?.getCrosswordPuzzleEngSentence, isPriorityOverride: true);
          getCrosswordPuzzleWordItem?.setCrosswordPuzzleVieSentence(value: getCurrentCrosswordPuzzleItem?.getCurrentCrosswordPuzzleWordItem?.getCrosswordPuzzleVieSentence, isPriorityOverride: true);

          if (messageList.length == 1) {
            messageList.removeAt(0);
          }
        });

        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            if (getCrosswordPuzzleWordItem?.getCrosswordPuzzleEngSentence?.isNotEmpty == true) {
              messageList.add(
                messageByWordWidget(
                  isLeftSide: true,
                  isRightSide: false, //
                  engSentence: getCrosswordPuzzleWordItem?.getCrosswordPuzzleEngSentence ?? '', //
                  vieSentence: getCrosswordPuzzleWordItem?.getCrosswordPuzzleVieSentence ?? '', //
                ),
              );

              /// Play Sound
              widget.systemStateManagement?.getMusicAndSound?.onPlaySFXConversationSentenceAppear();

              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (_scrollController.hasClients) {
                  _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                }
              });
            } else {
              if (messageList.length == 1) {
                messageList.removeAt(0);
              }
            }
          });
        });
      }

      ///
    })..start();
  }

  double sizeUnit = 0;

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          bottom: 35.0,
          left: 325.0,
          // width: widget.sizeDx,
          // height: widget.sizeDy - 120.0,
          width: 1000.0,
          height: 300.0,
          child: Container(
            color: Colors.red,
            // width: widget.sizeDx,
            // height: widget.sizeDy - 120.0,
            width: 1000.0,
            height: 300.0,
            child: SingleChildScrollView(
              controller: _scrollController,

              child: Column(children: messageList),
            ),
          ),
        ),

        Positioned(
          right: 45.0,
          bottom: 170.0,
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
              border: Border.all(width: 5.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
            ),
            width: 100.0,
            height: 100.0,
            child: Center(
              child: Text(
                '22',
                textAlign: TextAlign.center,
                style: GoogleFonts.blackOpsOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
            ),
          ),
        ),

        // AnimatedPositioned(
        //   bottom: 100.0,
        //   left: 325.0,
        //   width: widget.sizeDx * 0.78 - 25.0,
        //   height: 6.0,
        //   duration: const Duration(milliseconds: 10),
        //   child: Row(
        //     children: [
        //       Opacity(
        //         opacity: progressbarOpacity,
        //         child: AnimatedContainer(
        //           duration: const Duration(milliseconds: 1000),
        //           width: limitedTimeProgressbar,
        //           height: 6.0,
        //           decoration: BoxDecoration(
        //             color: Colors.blue,
        //             border: Border.all(width: 1.0, color: Colors.transparent),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        AnimatedPositioned(
          bottom: 100.0,
          left: 340.0,
          width: defaultTimingDistance,
          height: 6.0,
          duration: const Duration(milliseconds: 10),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                width: defaultTimingDistance,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.transparent),
                ),
              ),
            ],
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          right: 15.0,
          bottom: 15.0,
          child: Container(
            width: widget.sizeDx * 0.6,
            height: 100.0,
            decoration: BoxDecoration(),

            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                      border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Text(
                                    'CrosswordPuzzle game',
                                    style: GoogleFonts.concertOne(
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
                                    textAlign: TextAlign.right,
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
                                    'CrosswordPuzzle game',
                                    style: GoogleFonts.concertOne(
                                      textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
                                    ),
                                    textAlign: TextAlign.right,
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget messageByWordWidget({required bool isLeftSide, required bool isRightSide, required String engSentence, required String vieSentence}) {
    double distanceToBorder = 5.0;

    // String engSentence = "Learning daily builds _confidence and long term success.";
    // String vieSentence = "Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.";

    List<String> engWordList = [];
    List<String> vieWordList = [];

    List<TextSpan> engWordWidgetSpan = [];
    List<TextSpan> vieWordWidgetSpan = [];

    engWordList = engSentence.split(' ');
    for (String word in engWordList) {
      if (word.contains('_')) {
        String trueWord = word.replaceAll('_', '');

        engWordWidgetSpan.add(
          TextSpan(
            text: '$trueWord ',
            style: GoogleFonts.robotoSlab(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 36, height: 1.5),
          ),
        );
      } else {
        engWordWidgetSpan.add(
          TextSpan(
            text: '$word ',
            style: GoogleFonts.robotoSlab(color: Color(0xFF000000), fontWeight: FontWeight.w800, fontSize: 36, height: 1.5),
          ),
        );
      }
    }

    vieWordList = vieSentence.split(' ');
    for (int index = 0; index < vieWordList.length; index++) {
      if (vieWordList[index].contains('_')) {
        String trueWord = vieWordList[index].replaceAll('_', '');

        if (index == 0) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '"$trueWord ',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 30.0, height: 1.5),
            ),
          );
        } else if (index == vieWordList.length - 1) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '$trueWord."',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 30.0, height: 1.5),
            ),
          );
        } else {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '$trueWord ',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 30.0, height: 1.5),
            ),
          );
        }
      } else {
        if (index == 0) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '"${vieWordList[index]} ',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w800, fontSize: 30.0, height: 1.5),
            ),
          );
        } else if (index == vieWordList.length - 1) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '${vieWordList[index]}."',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w800, fontSize: 30.0, height: 1.5),
            ),
          );
        } else {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '${vieWordList[index]} ',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w800, fontSize: 30.0, height: 1.5),
            ),
          );
        }
      }
    }

    /// max width
    double maxWidth = 980.0;

    /// totalHeight
    double totalHeight = 0;

    double engSentenceHeight = 0;
    double engSentenceWidth = 0;

    double vieSentenceHeight = 0;
    double vieSentenceWidth = 0;

    switch (engSentence.length) {
      case >= 60:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
        }
        break;
      case >= 50 && < 60:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
        }
        break;
      case >= 40 && < 50:
        {
          /// 2 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.9;
        }
        break;
      case >= 30 && < 40:
        {
          /// 1 Lines &
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.8;
        }
        break;
      case >= 20 && < 30:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.7;
        }
        break;
      case >= 0 && < 20:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.6;
        }
        break;
    }

    switch (vieSentence.length) {
      case >= 60:
        {
          /// 2 Lines
          vieSentenceHeight = 180.0;
          vieSentenceWidth = maxWidth * 0.95;
        }
        break;
      case >= 50 && < 60:
        {
          /// 2 Lines
          vieSentenceHeight = 180.0;
          vieSentenceWidth = maxWidth * 0.95;
        }
        break;
      case >= 40 && < 50:
        {
          /// 2 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.85;
        }
        break;
      case >= 30 && < 40:
        {
          /// 1 Lines &
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.75;
        }
        break;
      case >= 20 && < 30:
        {
          /// 1 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.65;
        }
        break;
      case >= 0 && < 20:
        {
          /// 1 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.55;
        }
        break;
    }

    totalHeight = engSentenceHeight + vieSentenceHeight + 10.0;

    return AnimatedContainer(
      margin: const EdgeInsets.only(top: 10.0),
      duration: const Duration(milliseconds: 100),
      // width: widget.sizeDx,
      // height: totalHeight,
      width: 980.0,
      height: 200.0,
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          // AnimatedPositioned(
          //   duration: const Duration(milliseconds: 100),
          //   bottom: 0,
          //   right: isRightSide ? distanceToBorder : null,
          //   left: isLeftSide ? distanceToBorder : null,
          //   width: vieSentenceWidth,
          //   height: vieSentenceHeight,
          //   child: Container(
          //     width: vieSentenceWidth,
          //     height: vieSentenceHeight,
          //     decoration: BoxDecoration(
          //       color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
          //       border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
          //       borderRadius: isRightSide
          //           ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
          //           : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
          //     ),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          //           child: RichText(
          //             textAlign: TextAlign.center,
          //             overflow: TextOverflow.ellipsis,
          //             maxLines: engSentenceHeight == 180.0 ? 2 : 1,
          //
          //             text: TextSpan(
          //               style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Color(0xFFECECEC).withValues(alpha: 0.5)), fontSize: 40.0),
          //               children: vieWordWidgetSpan,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 0,
            right: isRightSide ? distanceToBorder : null,
            left: isLeftSide ? distanceToBorder : null,
            // width: engSentenceWidth,
            // height: engSentenceHeight,
            width: 970.0,
            height: 200.0,
            child: BounceInLeft(
              from: 50.0,
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
                        // textAlign: TextAlign.start,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,

                        // maxLines: vieSentenceHeight == 180.0 ? 2 : 1,
                        maxLines: 3,
                        text: TextSpan(children: engWordWidgetSpan),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
