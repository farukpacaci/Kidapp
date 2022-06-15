import 'package:flutter/material.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';
import 'package:kid_game/components/test/colors/choice.dart';
import 'package:kid_game/components/test/colors/page.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';

class ColorsTestPotrait extends StatefulWidget {
  const ColorsTestPotrait({Key? key}) : super(key: key);

  @override
  State<ColorsTestPotrait> createState() => _ColorsTestPotraitState();
}

class _ColorsTestPotraitState extends State<ColorsTestPotrait> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  TestPage(
                    clr: Colors.red,
                    kOptionOne: "Red",
                    kOptionTwo: "Blue",
                    name: "Red",
                    widgetName: const ColorsTestPotrait(),
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
                  TestPage(
                    clr: Colors.purple,
                    kOptionOne: "Orange",
                    kOptionTwo: "Purple",
                    name: "Purple",
                    widgetName: const ColorsTestPotrait(),
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
                  TestPage(
                    clr: Colors.black,
                    kOptionOne: "White",
                    kOptionTwo: "Black",
                    name: "Black",
                    widgetName: const ColorsTestPotrait(),
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
                  TestPage(
                    clr: Colors.green,
                    kOptionOne: "Green",
                    kOptionTwo: "Yellow",
                    name: "Green",
                    widgetName: const ColorsTestPotrait(),
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
                  TestPage(
                    clr: Colors.blue,
                    kOptionOne: "Blue",
                    kOptionTwo: "Black",
                    name: "Blue",
                    widgetName: const ColorsTestPotrait(),
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
                  TestPage(
                    clr: Colors.orange,
                    kOptionOne: "Orange",
                    kOptionTwo: "Yellow",
                    name: "Orange",
                    widgetName: const ColorsTestPotrait(),
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
                  TestPage(
                    clr: Colors.pink,
                    kOptionOne: "White",
                    kOptionTwo: "Pink",
                    name: "Pink",
                    widgetName: const ColorsTestPotrait(),
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
                  TestPage(
                    clr: Colors.white,
                    kOptionOne: "White",
                    kOptionTwo: "Black",
                    name: "White",
                    widgetName: const ColorsTestPotrait(),
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
