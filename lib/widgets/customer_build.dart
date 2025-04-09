// ignore: import_of_legacy_library_into_null_safe
// ignore_for_file: deprecated_member_use, avoid_print
// import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:mdexam/models/category_model.dart';
import 'package:mdexam/models/membership_model.dart';
import 'package:mdexam/models/parameter_model.dart';
import 'package:mdexam/models/user_exam_model.dart';
import 'package:mdexam/models/user_flashcard_exam_model.dart';
import 'package:mdexam/models/user_model.dart';
import 'package:mdexam/pages/customer_flashcard_my_exam_list.dart';
import 'package:mdexam/pages/customer_my_exam_list.dart';
import 'package:mdexam/pages/flashcard_question_todo.dart';
import 'package:mdexam/pages/video_todo.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:mdexam/pages/home.dart';
import 'package:mdexam/pages/membership_purchase.dart';
import 'package:mdexam/pages/question_todo.dart';
import 'package:mdexam/pages/user_login.dart';
import 'package:mdexam/pages/user_simple_add.dart';
import 'package:mdexam/utils/firebase/firebase_custom_membership.dart';
import 'package:mdexam/utils/general/sizes_helpers.dart';
import 'package:mdexam/utils/list_transforms/parameter_list_transforms.dart';
import 'package:mdexam/variables/globalvar.dart';
import 'package:flutter/material.dart';
import 'package:mdexam/widgets/membership_build_clone.dart';
import 'package:mdexam/widgets/menu.dart';
import 'package:mdexam/widgets/option_build.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:translator/translator.dart';

Widget customerBuild(
    HomePageState homePageState,
    BuildContext context,
    List<CategoryModel> categorys,
    List<MembershipModel> memberships,
    List<MembershipModel> membershipOnlyVisibles,
    double factor,
    UserExamModel newUserExam,
    UserFlashcardExamModel newUserFlashcardExam) {
  String appSubTitle = "";
  bool youTubeShow = false;
  String youTubeID = "";
  bool showMembership = false;

  if (homePageState.listParameters.isNotEmpty) {
    ParameterModel appSubTitleParameter =
        parameterStringFromKey2ToParameterModel(
            homePageState.listParameters, "appSubTitle");

    appSubTitle = appSubTitleParameter.additional;

    ParameterModel youTubeParameter = parameterStringFromKey2ToParameterModel(
        homePageState.listParameters, "youTube");

    if (youTubeParameter.key2.compareTo("youTube") == 0 &&
        youTubeParameter.additional.compareTo("youTubeNot") != 0) {
      youTubeID = youTubeParameter.additional;
      youTubeShow = true;
    }

    if (!isIOS()) {
      showMembership = true;
      homePageState.iosPurchaseMembership = false;
    } else {
      ParameterModel iosShowMembershipParameter =
          parameterStringFromKey2ToParameterModel(
              homePageState.listParameters, "iosShowMembership");

      if (iosShowMembershipParameter.key2.compareTo("iosShowMembership") == 0 &&
          iosShowMembershipParameter.additional.compareTo("Si") == 0) {
        showMembership = true;
      }

      ParameterModel iosPurchaseMembershipParameter =
          parameterStringFromKey2ToParameterModel(
              homePageState.listParameters, "iosPurchaseMembership");

      if (iosPurchaseMembershipParameter.key2
                  .compareTo("iosPurchaseMembership") ==
              0 &&
          iosPurchaseMembershipParameter.additional.compareTo("Si") == 0) {
        homePageState.iosPurchaseMembership = true;
      }
    }
  }

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: youTubeID,
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  return Container(
      color: customBackcolor,
      child: ListView(children: [
        homePageState.isLogin
            ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                    width: displayWidth(context),
                    child: Text(
                      appHomeWelcome + " " + homePageState.loginCustomerName,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )))
            : Container(),
/* Days */
        homePageState.isLogin
            ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                    width: displayWidth(context),
                    child: Text(
                      membershipDays(homePageState),
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )))
            : Container(),
        const SizedBox(
          height: 20,
        ),

/* Image */
        const SizedBox(
          height: 100,
          child: Image(image: AssetImage('assets/login_image2.png')),
        ),

/* Title */
        SizedBox(
          width: displayWidth(context),
          child: Text(
            appHomeTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: primaryColor, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 30,
        ),

/* SubTitle */
        if (!homePageState.isLogin)
          FutureBuilder<String>(
            future: getTranslatedDetail(appSubTitle, languageStatus),
            builder: (context, snapshot) {
              return SizedBox(
                width: displayWidth(context) - 30,
                child: Text(
                  snapshot.data ?? '...',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            },
          ),
        !homePageState.isLogin && youTubeShow && !homePageState.drawerIsOpen
            ? Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 340 * factor,
                        width: 600 * factor,
                        //width: displayWidth(context) - 50,
                        //width: 200,
                        //  child: FittedBox(
                        //  fit: BoxFit.fill,
                        child: YoutubePlayer(
                          controller: _controller,
                          aspectRatio: 16 / 9,
                        ),
                      ))
                ],
              )
            : Container(),
        const SizedBox(
          height: 50,
        ),

/* Buttons */
        homePageState.isLogin
            ? Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          questionTitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      optionBuild(
                          questionNewOpenTitle,
                          Icons.question_answer_outlined,
                          Colors.deepPurple,
                          questionNewOpenButtonTitle,
                          factor, () {
                        !homePageState.isLogin
                            ? Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => UserLogin(
                                      homePageState: homePageState,
                                      dobleClosed: false),
                                ),
                              )
                            : validMembershipQuestion(
                                homePageState, context, true);
                      }),
                      optionBuild(
                          questionNewClosedTitle,
                          Icons.question_mark_outlined,
                          Colors.blue,
                          questionNewClosedButtonTitle,
                          factor, () {
                        !homePageState.isLogin
                            ? Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => UserLogin(
                                      homePageState: homePageState,
                                      dobleClosed: false),
                                ),
                              )
                            : validMembershipQuestion(
                                homePageState, context, false);
                      }),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      optionBuild(
                          questionHistoryTitle,
                          Icons.history_edu_outlined,
                          Colors.redAccent,
                          questionHistoryButtonTitle,
                          factor, () {
                        !homePageState.isLogin
                            ? Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => UserLogin(
                                    homePageState: homePageState,
                                    dobleClosed: false,
                                  ),
                                ),
                              )
                            : Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      CustomerMyExamList(
                                          loginUsername:
                                              homePageState.loginUsername),
                                ),
                              );
                      }),
                    ],
                  )
                ],
              )
            : Container(),
        const SizedBox(
          height: 50,
        ),

/* Flashcard */
        homePageState.isLogin
            ? Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          flashcardQuestionTitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      optionBuild(
                          flashcardQuestionNewTitle,
                          Icons.flash_on_outlined,
                          Colors.yellow,
                          flashcardQuestionNewButtonTitle,
                          factor, () {
                        !homePageState.isLogin
                            ? Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => UserLogin(
                                      homePageState: homePageState,
                                      dobleClosed: false),
                                ),
                              )
                            : validMembershipFlashcards(homePageState, context);
                      }),
                      optionBuild(
                          flashcardQuestionHistoryTitle,
                          Icons.flash_on_outlined,
                          Colors.redAccent,
                          flashcardQuestionHistoryButtonTitle,
                          factor, () {
                        !homePageState.isLogin
                            ? Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => UserLogin(
                                    homePageState: homePageState,
                                    dobleClosed: false,
                                  ),
                                ),
                              )
                            : Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      CustomerFlashcardMyExamList(
                                          loginUsername:
                                              homePageState.loginUsername),
                                ),
                              );
                      }),
                    ],
                  ),
                ],
              )
            : Container(),
        const SizedBox(
          height: 50,
        ),

/* Videos */
        homePageState.isLogin
            ? Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          videoTitleCustom,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      optionBuild(videoNewTitle, Icons.play_arrow_outlined,
                          Colors.red, videoNewButtonTitle, factor, () {
                        !homePageState.isLogin
                            ? Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => UserLogin(
                                      homePageState: homePageState,
                                      dobleClosed: false),
                                ),
                              )
                            : validMembershipVideo(homePageState, context);
                      }),
                    ],
                  ),
                ],
              )
            : Container(),

/* Memberships */
        showMembership
            ? Column(children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: displayWidth(context),
                  child: Text(
                    appMembershipTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                displayWidth(context) < 800
                    ? membershipBuildListViewX2(
                        homePageState, context, membershipOnlyVisibles, factor)
                    : displayWidth(context) < 1300
                        ? membershipBuildListViewX3(homePageState, context,
                            membershipOnlyVisibles, factor)
                        : membershipBuildListViewX4(homePageState, context,
                            membershipOnlyVisibles, factor)
              ])
            : Container()
      ]));
}

Widget membershipBuildListViewX2(HomePageState homePageState,
    BuildContext context, List<MembershipModel> list, double factor) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: (list.length / 2).ceil(),
    itemBuilder: (BuildContext context, int widgetIndex) {
      int base = widgetIndex * 2;
      int index1 = base;
      int index2 = base + 1;

      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index1 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index1, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text("Error"),
                      );
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
          index2 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index2, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text("Error"),
                      );
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
        ],
      );
    },
  );
}

Widget membershipBuildListViewX3(HomePageState homePageState,
    BuildContext context, List<MembershipModel> list, double factor) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: (list.length / 3).ceil(),
    itemBuilder: (BuildContext context, int widgetIndex) {
      int base = widgetIndex * 3;
      int index1 = base;
      int index2 = base + 1;
      int index3 = base + 2;

      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index1 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index1, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text("Error"),
                      );
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
          index2 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index2, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text("Error"),
                      );
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
          index3 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index3, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text("Error"),
                      );
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
        ],
      );
    },
  );
}

Widget membershipBuildListViewX4(HomePageState homePageState,
    BuildContext context, List<MembershipModel> list, double factor) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: (list.length / 4).ceil(),
    itemBuilder: (BuildContext context, int widgetIndex) {
      int base = widgetIndex * 4;
      int index1 = base;
      int index2 = base + 1;
      int index3 = base + 2;
      int index4 = base + 3;

      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index1 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index1, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const Text("Error");
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
          index2 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index2, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const Text("Error");
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
          index3 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index3, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const Text("Error");
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
          index4 < list.length
              ? FutureBuilder<Widget>(
                  future: membershipOneItem(
                      homePageState, context, list, index4, factor),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2)),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const Text("Error");
                    } else {
                      return snapshot.data!;
                    }
                  },
                )
              : Container(),
        ],
      );
    },
  );
}

Future<String> getTranslatedDetail(String text, int languageStatus) async {
  final translator = GoogleTranslator();
  return languageStatus == 0
      ? text
      : await translator.translate(text, to: "en").then((t) => t.text);
}

Future<Widget> membershipOneItem(
    HomePageState homePageState,
    BuildContext context,
    List<MembershipModel> list,
    int index,
    double factor) async {
  final MembershipModel membershipModel = list[index];
  String title =
      await getTranslatedDetail(membershipModel.title, languageStatus);
  String detail =
      await getTranslatedDetail(membershipModel.detail, languageStatus);
  return membershipBuild(
      homePageState,
      title,
      membershipModel.price,
      detail,
      !membershipModel.isDefault
          ? (index == (list.length-1))?membershipSelectYearTitle:membershipSelectTitle
          : membershipSelectNewTitle,
      !membershipModel.isDefault,
      factor,
      () {
        !homePageState.isLogin
            ? Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => UserLogin(
                    homePageState: homePageState,
                    dobleClosed: false,
                  ),
                ),
              )
            : Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => MembershipPurchase(
                      homePageState: homePageState,
                      toMembership: membershipModel),
                ),
              );
      },
      membershipModel.isDefault && !homePageState.isLogin,
      () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => UserSimpleAdd(
                homePageState: homePageState,
                referencePageState: MenuReferencePageState(homePageState),
                isNew: true,
                isModify: false,
                userModel: UserModel("", "", true, false, false, true, "", ""),
                isOriginSelectAdd: true,
                memberships: homePageState.membershipLists),
          ),
        );
      },
      index==0,
      index==(list.length-1)
      );
}

void validMembershipQuestion(
    HomePageState homePageState, BuildContext context, bool isOpen) {
  try {
    String error = "";

    if (homePageState.customerMembershipCurrent.creationTime
        .isBefore(DateTime.now().toUtc())) {
      error = questionTodoError1;
    }

    if (homePageState.customerMembershipCurrent.maxUses < 1) {
      error = questionTodoError2;
    }

    if (error.isEmpty) {
      homePageState.customerMembershipCurrent.maxUses -= 1;

      FirebaseCustomMembershipHelper()
          .use(
        context: context,
        loginUsername: homePageState.loginUsername,
        membershipCurrent: homePageState.customerMembershipCurrent,
      )
          .then((result) {
        if (result == null) {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  QuestionTodo(homePageState: homePageState, isOpen: isOpen),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              result,
              style: const TextStyle(fontSize: 16),
            ),
          ));
        }
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          error,
          style: const TextStyle(fontSize: 16),
        ),
      ));
    }
  } catch (errorValue) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        errorValue.toString(),
        style: const TextStyle(fontSize: 16),
      ),
    ));
  }
}

void validMembershipFlashcards(
    HomePageState homePageState, BuildContext context) {
  try {
    String error = "";

    if (homePageState.customerMembershipCurrent.creationTime
        .isBefore(DateTime.now().toUtc())) {
      error = flashcardQuestionTodoError1;
    }

    if (homePageState.customerMembershipCurrent.maxUsesFlashcards < 1) {
      error = flashcardQuestionTodoError2;
    }

    if (error.isEmpty) {
      homePageState.customerMembershipCurrent.maxUsesFlashcards -= 1;

      FirebaseCustomMembershipHelper()
          .use(
        context: context,
        loginUsername: homePageState.loginUsername,
        membershipCurrent: homePageState.customerMembershipCurrent,
      )
          .then((result) {
        if (result == null) {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => FlashcardQuestionTodo(
                  homePageState: homePageState, isOpen: true),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              result,
              style: const TextStyle(fontSize: 16),
            ),
          ));
        }
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          error,
          style: const TextStyle(fontSize: 16),
        ),
      ));
    }
  } catch (errorValue) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        errorValue.toString(),
        style: const TextStyle(fontSize: 16),
      ),
    ));
  }
}

void validMembershipVideo(HomePageState homePageState, BuildContext context) {
  try {
    String error = "";

    if (homePageState.customerMembershipCurrent.creationTime
        .isBefore(DateTime.now().toUtc())) {
      error = videoTodoError1;
    }

    if (homePageState.customerMembershipCurrent.maxVideos < 1) {
      error = videoTodoError2;
    }

    if (error.isEmpty) {
      homePageState.customerMembershipCurrent.maxVideos -= 1;

      FirebaseCustomMembershipHelper()
          .use(
        context: context,
        loginUsername: homePageState.loginUsername,
        membershipCurrent: homePageState.customerMembershipCurrent,
      )
          .then((result) {
        if (result == null) {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => VideoTodo(
                  homePageState: homePageState, isOpen: true), //Video Run
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              result,
              style: const TextStyle(fontSize: 16),
            ),
          ));
        }
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          error,
          style: const TextStyle(fontSize: 16),
        ),
      ));
    }
  } catch (errorValue) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        errorValue.toString(),
        style: const TextStyle(fontSize: 16),
      ),
    ));
  }
}

String membershipDays(HomePageState homePageState) {
  Duration diference = homePageState.customerMembershipCurrent.creationTime
      .difference(DateTime.now().toUtc());

  if (diference.inDays <= 0) {
    return appMembershipDays0Title;
  } else {
    return appMembershipDaysPreTitle +
        " " +
        diference.inDays.toString() +
        " " +
        appMembershipDaysSubTitle;
  }
}

void iosPurchaseMembershipController(MembershipModel membershipModel) {
  try {} catch (e) {
    e.toString();
  }
}
