import 'package:flutter/material.dart';
import 'package:kid_game/components/test/colors/choice.dart';
import 'package:kid_game/components/test/image/question.dart';

// ignore: must_be_immutable
class TestImagePage extends StatefulWidget {
  final String kOptionOne;
  final String kOptionTwo;
  final String img;
  final String object;
  final String name;
  Widget widgetName;

  TestImagePage({
    Key? key,
    required this.kOptionOne,
    required this.kOptionTwo,
    required this.img,
    required this.object,
    required this.name,
    required this.widgetName,
  }) : super(key: key);

  @override
  State<TestImagePage> createState() => _TestImagePageState();
}

class _TestImagePageState extends State<TestImagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TestQuestionImage(
          img: widget.img,
          object: widget.object,
          kWord: widget.name,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TestChoice(
              kWord: widget.kOptionOne,
              answer: widget.name,
              widgetName: widget.widgetName,
            ),
            TestChoice(
              kWord: widget.kOptionTwo,
              answer: widget.name,
              widgetName: widget.widgetName,
            ),
          ],
        ),
      ],
    );
  }
}
