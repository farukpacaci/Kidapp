import 'package:flutter/material.dart';
import 'package:kid_game/components/card_widget_undirection.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';

class AnimalsPagePortrait extends StatelessWidget {
  const AnimalsPagePortrait({Key? key}) : super(key: key);

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
                  const SizedBox(
                    height: 10,
                  ),
                  MainMenuButton(
                    context,
                    screenShortestSide,
                  ),
                  Center(
                    child: Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      children: [
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/dog.png",
                          name: "Dog",
                          word: "Dog",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/cat.png",
                          name: "Cat",
                          word: "Cat",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/fish.png",
                          name: "Fish",
                          word: "Fish",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/bird.png",
                          name: "Bird",
                          word: "Bird",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/snake.png",
                          name: "Snake",
                          word: "Snake",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/elephant.png",
                          name: "Elephant",
                          word: "Elephant",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/wolf.png",
                          name: "Wolf",
                          word: "Wolf",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/lion.png",
                          name: "Lion",
                          word: "Lion",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/mouse.png",
                          name: "Mouse",
                          word: "Mouse",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/tiger.png",
                          name: "Tiger",
                          word: "Tiger",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/cow.png",
                          name: "Cow",
                          word: "Cow",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/sheep.png",
                          name: "Sheep",
                          word: "Sheep",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/monkey.png",
                          name: "Monkey",
                          word: "Monkey",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/giraffe.png",
                          name: "Giraffe",
                          word: "Giraffe",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/bat.png",
                          name: "Bat",
                          word: "Bat",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/animals/gorilla.png",
                          name: "Gorilla",
                          word: "Gorilla",
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
