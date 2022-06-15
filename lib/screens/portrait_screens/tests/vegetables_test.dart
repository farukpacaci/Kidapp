import 'package:flutter/material.dart';
import 'package:kid_game/components/test/colors/choice.dart';
import 'package:kid_game/components/test/image/page.dart';
import 'package:kid_game/screens/portrait_screens/tests/vehicles_test.dart';

import '../../../components/main_menu_button_portrait.dart';
import '../background_portrait.dart';

class VegetablesTestPotrait extends StatefulWidget {
  const VegetablesTestPotrait({Key? key}) : super(key: key);

  @override
  State<VegetablesTestPotrait> createState() => _VegetablesTestPotraitState();
}

class _VegetablesTestPotraitState extends State<VegetablesTestPotrait> {
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
                    object: "vegetable",
                    img: "vegetables/potato",
                    kOptionOne: "Potato",
                    kOptionTwo: "Tomato",
                    name: "Potato",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/broccoli",
                    kOptionOne: "Pumpkin",
                    kOptionTwo: "Broccoli",
                    name: "Broccoli",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/eggplant",
                    kOptionOne: "Onion",
                    kOptionTwo: "Eggplant",
                    name: "Eggplant",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/cucumber",
                    kOptionOne: "Cucumber",
                    kOptionTwo: "Turnip",
                    name: "Cucumber",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/pumpkin",
                    kOptionOne: "Broccoli",
                    kOptionTwo: "Pumpkin",
                    name: "Pumpkin",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/capsicum",
                    kOptionOne: "Capsicum",
                    kOptionTwo: "Potato",
                    name: "Capsicum",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/turnip",
                    kOptionOne: "Carrot",
                    kOptionTwo: "Turnip",
                    name: "Turnip",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/carrot",
                    kOptionOne: "Tomato",
                    kOptionTwo: "Carrot",
                    name: "Carrot",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/onion",
                    kOptionOne: "Onion",
                    kOptionTwo: "Cucumber",
                    name: "Onion",
                    widgetName: const VehiclesTestPotrait(),
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
                    object: "vegetable",
                    img: "vegetables/tomato",
                    kOptionOne: "Eggplant",
                    kOptionTwo: "Tomato",
                    name: "Tomato",
                    widgetName: const VehiclesTestPotrait(),
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
