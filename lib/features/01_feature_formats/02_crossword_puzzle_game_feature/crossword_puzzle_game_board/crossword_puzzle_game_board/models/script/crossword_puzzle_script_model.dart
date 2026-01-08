import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class CrosswordPuzzleScriptModel with ExecutionCore {
  CrosswordPuzzleScriptModel({required SequentialExecutionController? sequentialExecutionController}) {
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);
    setCallbackFunctionAfterCompletedBreakTimeStack(value: [], isPriorityOverride: true);

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS01 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartCrosswordPuzzleGameBoardSS03();
            });
          },
        );
      });
    };

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS02 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartCrosswordPuzzleGameBoardSS05();
            });
          },
        );
      });
    };

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS03 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartCrosswordPuzzleGameBoardSS07();
            });
          },
        );
      });
    };
  }

  /// -----
  /// TODO:
  /// -----
  SequentialExecutionController? _sequentialExecutionController;
  SequentialExecutionController? get getSequentialExecutionController => _sequentialExecutionController;
  void setSequentialExecutionController({required SequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sequentialExecutionController = value;
    } else {
      _sequentialExecutionController ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VoidCallback?>? _callbackFunctionAfterCompletedBreakTimeStack;
  List<VoidCallback?>? get getCallbackFunctionAfterCompletedBreakTimeStack => _callbackFunctionAfterCompletedBreakTimeStack;
  void setCallbackFunctionAfterCompletedBreakTimeStack({required List<VoidCallback?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _callbackFunctionAfterCompletedBreakTimeStack = value;
    } else {
      _callbackFunctionAfterCompletedBreakTimeStack ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Start
  /// -----

  void onStartCrosswordPuzzleGame() {
    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS001, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartCrosswordPuzzleGameBoardSS01();
          });
        },
      );
    });
  }

  void onStartCrosswordPuzzleGameBoardSS01() {
    ///

    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///

    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS001?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS02() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS002?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS03() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS003?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS04() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS004?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS05() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS005?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS06() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS006?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS07() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS007?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS08() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS008?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS09() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS009?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS10() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS010?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS11() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS011?.onStart();
    }

    ///
  }

  void onStartCrosswordPuzzleGameBoardSS12() {
    ///
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.isCanStartNewCrosswordPuzzleGame() == true) {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS012?.onStart();
    }

    ///
  }

  /// -----
  /// TODO: Complete
  /// TODO: Complete
  /// TODO: Complete
  /// TODO: Complete
  /// TODO: Complete
  /// -----

  void onCompleteCrosswordPuzzleGameBoardSS01() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS002, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartCrosswordPuzzleGameBoardSS02();
          });
        },
      );
    });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS02() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS003, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartCrosswordPuzzleGameBoardSS03();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS03() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS004, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartCrosswordPuzzleGameBoardSS04();
          });
        },
      );
    });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS04() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS005, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartCrosswordPuzzleGameBoardSS05();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS05() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS006, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartCrosswordPuzzleGameBoardSS06();
          });
        },
      );
    });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS06() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS007, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartCrosswordPuzzleGameBoardSS07();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS07() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS008, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartCrosswordPuzzleGameBoardSS08();
          });
        },
      );
    });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS08() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS009, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartCrosswordPuzzleGameBoardSS09();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS09() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS010, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onCompleteCrosswordPuzzleGameBoardSS10();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS10() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS011, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartCrosswordPuzzleGameBoardSS11();
          });
        },
      );
    });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS11() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.setCurrentCrosswordPuzzleItemForStart(value: getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.getCrosswordPuzzleTime?.getCrosswordPuzzleItemSS012, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getCrosswordPuzzleGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartCrosswordPuzzleGameBoardSS11();
          });
        },
      );
    });

    ///
  }

  void onCompleteCrosswordPuzzleGameBoardSS12() {
    getSequentialExecutionController?.getCrosswordPuzzleGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    ///
  }
}
