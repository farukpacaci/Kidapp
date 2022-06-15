import 'package:flutter/material.dart';
import 'package:kid_game/components/test/image/page.dart';
import 'package:kid_game/components/test/colors/choice.dart';

import '../../../components/main_menu_button_portrait.dart';
import '../background_portrait.dart';

class TestFruitsPotrait extends StatefulWidget {
  const TestFruitsPotrait({Key? key}) : super(key: key);

  @override
  State<TestFruitsPotrait> createState() => _TestFruitsPotraitState();
}

class _TestFruitsPotraitState extends State<TestFruitsPotrait> {
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
                    object: "fruit",
                    img: "fruits/orange",
                    kOptionOne: "Orange",
                    kOptionTwo: "Kiwi",
                    name: "Orange",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/apple",
                    kOptionOne: "Pineapple",
                    kOptionTwo: "Apple",
                    name: "Apple",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/banana",
                    kOptionOne: "Banana",
                    kOptionTwo: "Melon",
                    name: "Banana",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/watermelon",
                    kOptionOne: "Pear",
                    kOptionTwo: "Watermelon",
                    name: "Watermelon",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/strawberry",
                    kOptionOne: "Strawberry",
                    kOptionTwo: "Pear",
                    name: "Strawberry",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/peach",
                    kOptionOne: "Peach",
                    kOptionTwo: "Watermelon",
                    name: "Peach",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/cherry",
                    kOptionOne: "Apple",
                    kOptionTwo: "Cherry",
                    name: "Cherry",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/kiwi",
                    kOptionOne: "Kiwi",
                    kOptionTwo: "Strawberry",
                    name: "Kiwi",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/pomegranate",
                    kOptionOne: "Pomegranate",
                    kOptionTwo: "Melon",
                    name: "Pomegranate",
                    widgetName: const TestFruitsPotrait(),
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
                    object: "fruit",
                    img: "fruits/melon",
                    kOptionOne: "Melon",
                    kOptionTwo: "Pineapple",
                    name: "Melon",
                    widgetName: const TestFruitsPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
