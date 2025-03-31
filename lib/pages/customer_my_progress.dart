import 'package:mdexam/models/category_model.dart';
// import 'package:mdexam/models/question_answer_model.dart';
import 'package:mdexam/models/user_exam_model.dart';
import 'package:mdexam/variables/globalvar.dart';
import 'package:mdexam/widgets/application_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:translator/translator.dart';
// import 'dart:math';

// ignore: must_be_immutable
class CustomerMyProgress extends StatefulWidget {
  String loginUsername;

  CustomerMyProgress({Key? key, required this.loginUsername}) : super(key: key);

  @override
  State<CustomerMyProgress> createState() => CustomerMyExamListState();
}

class CustomerMyExamListState extends State<CustomerMyProgress> {
  List<UserExamModel> list = [];
  List<CategoryModel> cateList = [];
  List<String> cateTitles = [];

  bool isFinishLoad = false;

  @override
  void initState() {
    super.initState();

    loadMyExamListView();
  }

  Future<void> loadMyExamListView() async {
    try {
      list.clear();

      final firestoreInstance = FirebaseFirestore.instance;
      CollectionReference myExams =
          firestoreInstance.collection(firebaseCustomUserExamKey);

      CollectionReference myCategory =
          firestoreInstance.collection(firebaseCustomCategoryKey);

      myExams
          .where("username", isEqualTo: widget.loginUsername)
          .orderBy("creationTime", descending: true)
          .limit(30)
          .get()
          .then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          setState(() {
            list.add(UserExamModel.fromJSON(false, result.id, result.data()));
          });
        }

        isFinishLoad = true;
      });

      await myCategory.orderBy("creationTime", descending: true).get().then(
        (querySnapshot) async {
          cateList.clear();
          cateTitles.clear();

          for (var result in querySnapshot.docs) {
            final category =
                CategoryModel.fromJSON(false, result.id, result.data());
            cateList.add(category);

            // Translate title if needed
            final translated =
                await getTranslatedDetail(category.title, languageStatus);
            cateTitles.add(translated);
          }

          isFinishLoad = true;
          setState(() {});
        },
      );

      setState(() {});
    } on FirebaseAuthException catch (e) {
      e.stackTrace;
    }
  }

  void refreshList() {
    loadMyExamListView();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final isVertical = MediaQuery.of(context).size.width >= 1200;

    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: menuProfilerCustomerProgressMyExamsTitle,
        withShareButton: false,
      ),
      body: isFinishLoad
          ? Column(
              children: [
                const SizedBox(height: 16),
                Expanded(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 16, right: 1),
                      child: _buildVerticalChart()),
                ),
                const SizedBox(height: 16),
                _buildLegend(),
                const SizedBox(height: 16),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildVerticalChart() {
    final ScrollController _scrollController = ScrollController();
    return Scrollbar(
      controller: _scrollController,
      thumbVisibility: true,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30),
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 1400,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 100,
                  minY: 0,
                  barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.grey[900],
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        String label = rodIndex == 0
                            ? userProgressBarAgoTitle
                            : userProgressBarNowTitle;
                        return BarTooltipItem(
                          '$label\n',
                          const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: '${rod.toY.toStringAsFixed(1)}%',
                              style: const TextStyle(
                                  color: Colors.tealAccent,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 20,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) => Text(
                          '${value.toInt()}%',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 71, 70, 70),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 48,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index < cateList.length) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SizedBox(
                                width: 50,
                                child: Text(
                                  cateTitles[index],
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  gridData: FlGridData(
                    show: true,
                    horizontalInterval: 20,
                    drawVerticalLine: false,
                    getDrawingHorizontalLine: (value) => FlLine(
                      color: const Color.fromARGB(255, 51, 51, 51)
                          .withOpacity(0.2),
                      strokeWidth: 1,
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: _generateBarGroups(),
                ),
              ),
              Positioned.fill(
                child: _buildBarLabels(), // overlays the percent labels
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildHorizontalChart() {
  //   final ScrollController _scrollController = ScrollController();
  //   return RotatedBox(
  //       quarterTurns: 1,
  //       child: Scrollbar(
  //       controller: _scrollController,
  //       thumbVisibility: true,
  //     child: SingleChildScrollView(
  //       controller: _scrollController,
  //       scrollDirection: Axis.horizontal,
  //       child: SizedBox(
  //         width: 1400,
  //         child: Stack(
  //           alignment: Alignment.topCenter,
  //           children: [
  //             BarChart(
  //               BarChartData(
  //                 alignment: BarChartAlignment.spaceAround,
  //                 maxY: 100,
  //                 minY: 0,
  //                 barTouchData: BarTouchData(
  //                   enabled: true,
  //                   touchTooltipData: BarTouchTooltipData(
  //                     tooltipBgColor: Colors.grey[900],
  //                     getTooltipItem: (group, groupIndex, rod, rodIndex) {
  //                       String label = rodIndex == 0
  //                           ? userProgressBarAgoTitle
  //                           : userProgressBarNowTitle;
  //                       return BarTooltipItem(
  //                         '$label\n',
  //                         const TextStyle(
  //                             color: Colors.white, fontWeight: FontWeight.bold),
  //                         children: [
  //                           TextSpan(
  //                             text: '${rod.toY.toStringAsFixed(1)}%',
  //                             style: const TextStyle(
  //                                 color: Colors.tealAccent,
  //                                 fontWeight: FontWeight.w500),
  //                           ),
  //                         ],
  //                       );
  //                     },
  //                   ),
  //                 ),
  //                 titlesData: FlTitlesData(
  //                   leftTitles: AxisTitles(
  //                     sideTitles: SideTitles(
  //                       showTitles: true,
  //                       interval: 20,
  //                       reservedSize: 40,
  //                       getTitlesWidget: (value, meta) => Text(
  //                         '${value.toInt()}%',
  //                         style: const TextStyle(
  //                           color: Color.fromARGB(255, 71, 70, 70),
  //                           fontWeight: FontWeight.w500,
  //                           fontSize: 12,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   bottomTitles: AxisTitles(
  //                     sideTitles: SideTitles(
  //                       showTitles: true,
  //                       reservedSize: 48,
  //                       getTitlesWidget: (value, meta) {
  //                         final index = value.toInt();
  //                         if (index < cateList.length) {
  //                           return Padding(
  //                             padding: const EdgeInsets.only(top: 8.0),
  //                             child: SizedBox(
  //                               width: 50,
  //                               child: Text(
  //                                 cateList[index].title,
  //                                 textAlign: TextAlign.center,
  //                                 softWrap: true,
  //                                 maxLines: 2,
  //                                 overflow: TextOverflow.ellipsis,
  //                                 style: const TextStyle(
  //                                   fontSize: 10,
  //                                   fontWeight: FontWeight.w600,
  //                                 ),
  //                               ),
  //                             ),
  //                           );
  //                         }
  //                         return const SizedBox.shrink();
  //                       },
  //                     ),
  //                   ),
  //                   rightTitles: const AxisTitles(
  //                     sideTitles: SideTitles(showTitles: false),
  //                   ),
  //                   topTitles: const AxisTitles(
  //                     sideTitles: SideTitles(showTitles: false),
  //                   ),
  //                 ),
  //                 gridData: FlGridData(
  //                   show: true,
  //                   horizontalInterval: 20,
  //                   drawVerticalLine: false,
  //                   getDrawingHorizontalLine: (value) => FlLine(
  //                     color: const Color.fromARGB(255, 51, 51, 51)
  //                         .withOpacity(0.2),
  //                     strokeWidth: 1,
  //                   ),
  //                 ),
  //                 borderData: FlBorderData(show: false),
  //                 barGroups: _generateBarGroups(),
  //               ),
  //             ),
  //             Positioned.fill(
  //               child: _buildBarLabels(), // overlays the percent labels
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   ));
  // }

  List<BarChartGroupData> _generateBarGroups() {
    final now = DateTime.now();
    List<BarChartGroupData> barGroups = [];

    for (int i = 0; i < cateList.length; i++) {
      final category = cateList[i];

      final relevantExams = list
          .where(
            (exam) => exam.categorys.any((c) => c.title == category.title),
          )
          .toList();
      double totalScore = 0;
      int totalCount = 0;
      List<String> totalQA = [];

      double lastScore = 0;
      int lastCount = 0;
      List<String> lastQA = [];

      for (var exam in relevantExams) {
        if (exam.questionAnswers.isEmpty) continue;

        final correct = exam.questionAnswers.where((qa) =>
            qa.answer.isCorrect &&
            qa.question.category.title == category.title);
        List<String> answerTitle = [];

        for (var answer in correct) {
          answerTitle.add(answer.answer.title);
        }

        totalQA = {...totalQA, ...answerTitle}.toList();
        totalCount++;

        if (now.difference(exam.creationTime).inDays >= 30) {
          lastQA = {...totalQA, ...answerTitle}.toList();
          lastCount++;
        }
      }

      totalScore = totalQA.length / category.maxQuestions * 100;
      lastScore = lastQA.length / category.maxQuestions * 100;

      double avgTotal = totalCount > 0 ? totalScore : 0;
      double avgLast = lastCount > 0 ? lastScore : 0;

      barGroups.add(
        BarChartGroupData(
          x: i,
          barsSpace: 6,
          barRods: [
            BarChartRodData(
              toY: avgLast,
              width: 20,
              borderRadius: BorderRadius.circular(0),
              color: const Color.fromARGB(255, 233, 29, 63),
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 100,
                color:
                    const Color.fromARGB(255, 230, 124, 124).withOpacity(0.1),
              ),
            ),
            BarChartRodData(
              toY: avgTotal,
              width: 20,
              borderRadius: BorderRadius.circular(0),
              color: Colors.blue.shade400,
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 100,
                color:
                    const Color.fromARGB(255, 131, 184, 228).withOpacity(0.1),
              ),
            ),
          ],
        ),
      );
    }

    return barGroups;
  }

  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _legendItem(
            const Color.fromARGB(255, 233, 29, 63), userProgressBarAgoTitle),
        const SizedBox(width: 24),
        _legendItem(Colors.blue.shade400, userProgressBarNowTitle),
      ],
    );
  }

  Widget _legendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildBarLabels() {
    final barGroups = _generateBarGroups();

    return LayoutBuilder(
      builder: (context, constraints) {
        final groupCount = barGroups.length;
        final groupWidth = (constraints.maxWidth - 40) / groupCount;

        return Stack(
          children: List.generate(groupCount, (index) {
            final group = barGroups[index];
            final rods = group.barRods;

            return Positioned(
              left: groupWidth * index + groupWidth / 4 + 40,
              bottom: (rods[0].toY / 100) * (constraints.maxHeight - 50) + 50,
              child: Column(
                children: [
                  Text(
                    '${rods[0].toY.toStringAsFixed(0)}%',
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 233, 29, 63),
                    ),
                  ),
                ],
              ),
            );
          })
            ..addAll(List.generate(groupCount, (index) {
              final group = barGroups[index];
              final rods = group.barRods;

              return Positioned(
                left: groupWidth * index + groupWidth / 1.75 + 40,
                bottom: (rods[1].toY / 100) * (constraints.maxHeight - 50) + 50,
                child: Column(
                  children: [
                    Text(
                      '${rods[1].toY.toStringAsFixed(0)}%',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              );
            })),
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
}
