import 'package:flutter/material.dart';
import 'package:kid_game/components/test/image/page.dart';
import 'package:kid_game/components/test/colors/choice.dart';

import '../../../components/main_menu_button_portrait.dart';
import '../background_portrait.dart';

class ApparelsTestPotrait extends StatefulWidget {
  const ApparelsTestPotrait({Key? key}) : super(key: key);

  @override
  State<ApparelsTestPotrait> createState() => _ApparelsTestPotraitState();
}

class _ApparelsTestPotraitState extends State<ApparelsTestPotrait> {
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
                      object: "apparel",
                      img: "apparels/coat",
                      kOptionOne: "Winterhat",
                      kOptionTwo: "Coat",
                      name: "Coat",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/blouse",
                      kOptionOne: "Blouse",
                      kOptionTwo: "Skirt",
                      name: "Blouse",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/gloves",
                      kOptionOne: "Sweatshirt",
                      kOptionTwo: "Glvoes",
                      name: "Gloves",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/shirt",
                      kOptionOne: "Shirt",
                      kOptionTwo: "Tie",
                      name: "Shirt",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/winterhat",
                      kOptionOne: "Winterhat",
                      kOptionTwo: "Trainers",
                      name: "Winterhat",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/dress",
                      kOptionOne: "Blouse",
                      kOptionTwo: "Dress",
                      name: "Dress",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/hat",
                      kOptionOne: "Hat",
                      kOptionTwo: "Socks",
                      name: "Hat",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/suit",
                      kOptionOne: "Sweater",
                      kOptionTwo: "Suit",
                      name: "Suit",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/jacket",
                      kOptionOne: "Jacket",
                      kOptionTwo: "Shirt",
                      name: "Jacket",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/shoes",
                      kOptionOne: "Hat",
                      kOptionTwo: "Shoes",
                      name: "Shoes",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/jeans",
                      kOptionOne: "Jeans",
                      kOptionTwo: "Tshirt",
                      name: "Jeans",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/skirt",
                      kOptionOne: "Skirt",
                      kOptionTwo: "Dress",
                      name: "Skirt",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/sweater",
                      kOptionOne: "Blouse",
                      kOptionTwo: "Sweater",
                      name: "Sweater",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/tie",
                      kOptionOne: "Tie",
                      kOptionTwo: "Suit",
                      name: "Tie",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/socks",
                      kOptionOne: "Gloves",
                      kOptionTwo: "Socks",
                      name: "Socks",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/trainers",
                      kOptionOne: "Hat",
                      kOptionTwo: "Trainers",
                      name: "Trainers",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/sweatshirt",
                      kOptionOne: "Jeans",
                      kOptionTwo: "Sweatshirt",
                      name: "Sweatshirt",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/trousers",
                      kOptionOne: "Trousers",
                      kOptionTwo: "Winterhat",
                      name: "Trousers",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/tshirt",
                      kOptionOne: "Tshirt",
                      kOptionTwo: "Suit",
                      name: "Tshirt",
                      widgetName: const ApparelsTestPotrait(),
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
                      object: "apparel",
                      img: "apparels/shorts",
                      kOptionOne: "Coat",
                      kOptionTwo: "Shorts",
                      name: "Shorts",
                      widgetName: const ApparelsTestPotrait(),
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
