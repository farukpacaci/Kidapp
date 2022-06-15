import 'package:flutter/material.dart';
import 'package:kid_game/components/test/colors/choice.dart';
import 'package:kid_game/components/test/image/page.dart';

import '../../../components/main_menu_button_portrait.dart';
import '../background_portrait.dart';

class AnimalsTestPotrait extends StatefulWidget {
  const AnimalsTestPotrait({Key? key}) : super(key: key);

  @override
  State<AnimalsTestPotrait> createState() => _AnimalsTestPotraitState();
}

class _AnimalsTestPotraitState extends State<AnimalsTestPotrait> {
  @override
  Widget build(BuildContext context) {
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
                    object: "animal",
                    img: "animals/bat",
                    kOptionOne: "Bat",
                    kOptionTwo: "Dog",
                    name: "Bat",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/gorilla",
                    kOptionOne: "Gorilla",
                    kOptionTwo: "Snake",
                    name: "Gorilla",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/cow",
                    kOptionOne: "Wolf",
                    kOptionTwo: "Cow",
                    name: "Cow",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/lion",
                    kOptionOne: "Lion",
                    kOptionTwo: "Mouse",
                    name: "Lion",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/cat",
                    kOptionOne: "Sheep",
                    kOptionTwo: "Cat",
                    name: "Cat",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/snake",
                    kOptionOne: "Tiger",
                    kOptionTwo: "Snake",
                    name: "Snake",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/tiger",
                    kOptionOne: "Tiger",
                    kOptionTwo: "Elephant",
                    name: "Tiger",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/goat",
                    kOptionOne: "Bird",
                    kOptionTwo: "Goat",
                    name: "Goat",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/wolf",
                    kOptionOne: "Wolf",
                    kOptionTwo: "Giraffe",
                    name: "Wolf",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/giraffe",
                    kOptionOne: "Bird",
                    kOptionTwo: "Giraffe",
                    name: "Giraffe",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/fish",
                    kOptionOne: "Fish",
                    kOptionTwo: "Cat",
                    name: "Fish",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/monkey",
                    kOptionOne: "Monkey",
                    kOptionTwo: "Cow",
                    name: "Monkey",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/bird",
                    kOptionOne: "Fish",
                    kOptionTwo: "Bird",
                    name: "Bird",
                    widgetName: const AnimalsTestPotrait(),
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
                    object: "animal",
                    img: "animals/elephant",
                    kOptionOne: "Dog",
                    kOptionTwo: "Elephant",
                    name: "Elephant",
                    widgetName: const AnimalsTestPotrait(),
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
