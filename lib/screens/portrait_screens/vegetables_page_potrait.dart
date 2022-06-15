import 'package:flutter/material.dart';
import 'package:kid_game/components/card_widget_undirection.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';

import 'background_portrait.dart';

class VegetablesPagePotrait extends StatelessWidget {
  const VegetablesPagePotrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenShortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPortrait(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainMenuButton(
                    context,
                    screenShortestSide,
                  ),
                  Center(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/broccoli.png",
                          name: "Broccoli",
                          word: "Broccoli",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/capsicum.png",
                          name: "Capsicum",
                          word: "Capsicum",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/carrot.png",
                          name: "Carrot",
                          word: "Carrot",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/cucumber.png",
                          name: "Cucumber",
                          word: "Cucumber",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/eggplant.png",
                          name: "Eggplant",
                          word: "Eggplant",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/onion.png",
                          name: "Onion",
                          word: "Onion",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/potato.png",
                          name: "Potato",
                          word: "Potato",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/pumpkin.png",
                          name: "Pumpkin",
                          word: "Pumpkin",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/tomato.png",
                          name: "Tomato",
                          word: "Tomato",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vegetables/turnip.png",
                          name: "Turnip",
                          word: "Turnip",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
