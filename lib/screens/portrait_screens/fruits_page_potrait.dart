import 'package:flutter/material.dart';
import 'package:kid_game/components/card_widget_undirection.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';

class FruitsPagePotrait extends StatelessWidget {
  const FruitsPagePotrait({Key? key}) : super(key: key);

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
                          img: "assets/icons/fruits/apple.png",
                          name: "Apple",
                          word: "Apple",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/banana.png",
                          name: "Banana",
                          word: "Banana",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/cherry.png",
                          name: "Cherry",
                          word: "Cherry",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/kiwi.png",
                          name: "Kiwi",
                          word: "Kiwi",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/melon.png",
                          name: "Melon",
                          word: "Melon",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/orange.png",
                          name: "Orange",
                          word: "Orange",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/peach.png",
                          name: "Peach",
                          word: "Peach",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/pear.png",
                          name: "Pear",
                          word: "Pear",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/pineapple.png",
                          name: "Pineapple",
                          word: "Pineapple",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/pomegranate.png",
                          name: "Pomegranate",
                          word: "Pomegranate",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/strawberry.png",
                          name: "Strawberry",
                          word: "Strawberry",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/fruits/watermelon.png",
                          name: "Watermelon",
                          word: "Watermelon",
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
