import 'package:flutter/material.dart';
import 'package:kid_game/components/test/image/page.dart';
import 'package:kid_game/components/test/colors/choice.dart';

import '../../../components/main_menu_button_portrait.dart';
import '../background_portrait.dart';

class TestNumbersPotrait extends StatefulWidget {
  const TestNumbersPotrait({Key? key}) : super(key: key);

  @override
  State<TestNumbersPotrait> createState() => _TestNumbersPotraitState();
}

class _TestNumbersPotraitState extends State<TestNumbersPotrait> {
  @override
  Widget build(BuildContext contextFruit) {
    double screenWidth = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const BackgroundPortrait(),
          SafeArea(
            child: PageView(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/two",
                      kOptionOne: "Two",
                      kOptionTwo: "Four",
                      name: "Two",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/eight",
                      kOptionOne: "One",
                      kOptionTwo: "Eight",
                      name: "Eight",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/seven",
                      kOptionOne: "Six",
                      kOptionTwo: "Seven",
                      name: "Seven",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/five",
                      kOptionOne: "Five",
                      kOptionTwo: "Four",
                      name: "Five",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/one",
                      kOptionOne: "Three",
                      kOptionTwo: "One",
                      name: "One",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/ten",
                      kOptionOne: "Zero",
                      kOptionTwo: "Ten",
                      name: "Ten",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/three",
                      kOptionOne: "Nine",
                      kOptionTwo: "Three",
                      name: "Three",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/nine",
                      kOptionOne: "Nine",
                      kOptionTwo: "Seven",
                      name: "Nine",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: MainMenuButton(
                        context,
                        screenWidth,
                      ),
                    ),
                    TestImagePage(
                      object: "numbers",
                      img: "numbers/four",
                      kOptionOne: "One",
                      kOptionTwo: "Four",
                      name: "Four",
                      widgetName: const TestNumbersPotrait(),
                    ),
                    Stack(
                      children: TestChoice.instance.answerList,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
