// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kid_game/components/database/database_helper.dart';
import 'package:kid_game/components/functions/functions.dart';
import 'package:kid_game/components/test/answer/correct.dart';
import 'package:kid_game/components/test/answer/false.dart';
import 'package:outlined_text/outlined_text.dart';

class TestChoice extends StatefulWidget {
  static TestChoice instance = TestChoice._init();
  late String kWord;
  late String answer;
  late Widget widgetName;
  List<Widget> answerList = [];
  TestChoice._init();

  TestChoice({
    Key? key,
    required this.kWord,
    required this.answer,
    required this.widgetName,
  }) : super(key: key);

  @override
  State<TestChoice> createState() => _TestChoiceState();
}

class _TestChoiceState extends State<TestChoice> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Future<void>? answerFun(String answer, String choice, List checking) async {
      if (answer == choice) {
        int currentSoccer = 0;
        getSoccer() async {
          final result = await DatabaseHelper.instance.readSoccer();
          setState(() {
            currentSoccer = int.parse(result);
          });
          await showDialog(
              context: context,
              builder: (context) {
                FunctionOfCompenents.instance.speak("Correct", widget.kWord);
                Future.delayed(const Duration(seconds: 3), () {
                  Navigator.of(context).pop(true);
                });
                return AlertDialog(
                  backgroundColor: Colors.transparent,
                  content: correctAnswer,
                );
              });
          await DatabaseHelper.instance.updateCorrectSoccer(currentSoccer);
        }

        await getSoccer();
      } else {
        int currentSoccer = 0;
        getSoccer() async {
          final result = await DatabaseHelper.instance.readSoccer();
          setState(() {
            currentSoccer = int.parse(result);
          });
          await DatabaseHelper.instance.updateFalseSoccer(currentSoccer);
        }

        await showDialog(
            context: context,
            builder: (context) {
              FutureBuilder(
                future: FunctionOfCompenents.instance
                    .speak("Try Again", widget.kWord),
                builder: (context, snapshotSpeakTitle) {
                  if (snapshotSpeakTitle.hasData) {
                    return FutureBuilder(
                      future: Future.delayed(const Duration(seconds: 3), () {
                        Navigator.of(context).pop(true);
                      }),
                      builder: (context, snapshotDelayed) {
                        if (snapshotDelayed.hasData) {
                          return AlertDialog(
                            backgroundColor: Colors.transparent,
                            content: correctAnswer,
                          );
                        }
                        return const CircularProgressIndicator();
                      },
                    );
                  }
                  return const CircularProgressIndicator();
                },
              );
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.of(context).pop(true);
              });
              return AlertDialog(
                backgroundColor: Colors.transparent,
                content: falseAnswer,
              );
            });
        await getSoccer();
      }
    }

    return GestureDetector(
      onTap: () async {
        await answerFun(
            widget.answer, widget.kWord, TestChoice.instance.answerList);
      },
      child: Container(
        width: screenHeight * 0.2,
        height: screenHeight * 0.25,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF348F50).withOpacity(0.5),
              const Color(0xFF56B4D3).withOpacity(0.5),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 90,
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: OutlinedText(
              text: Text(
                widget.kWord,
                style: const TextStyle(
                  fontSize: 48,
                ),
              ),
              strokes: [
                OutlinedTextStroke(
                  color: Colors.black,
                  width: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
await showDialog(
              context: context,
              builder: (context) {
                FunctionOfCompenents.instance.speak("Correct", widget.kWord);
                Future.delayed(const Duration(seconds: 3), () {
                  Navigator.of(context).pop(true);
                });
                return AlertDialog(
                  backgroundColor: Colors.transparent,
                  content: correctAnswer,
                );
              });
*/