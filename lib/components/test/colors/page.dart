// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kid_game/components/test/colors/question.dart';

import 'choice.dart';

class TestPage extends StatefulWidget {
  Color clr;
  String kOptionOne;
  String kOptionTwo;
  final String name;

  Widget widgetName;

  TestPage({
    Key? key,
    required this.clr,
    required this.kOptionOne,
    required this.kOptionTwo,
    required this.name,
    required this.widgetName,
  }) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TestQuestion(
          kColor: widget.clr,
          name: widget.name,
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
