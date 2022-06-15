import 'package:flutter/material.dart';
import 'package:kid_game/components/card_widget_undirection.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';

class NumbersPagePortrait extends StatelessWidget {
  const NumbersPagePortrait({Key? key}) : super(key: key);

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
                          img: "assets/icons/numbers/one.png",
                          name: "One",
                          word: "One",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/two.png",
                          name: "Two",
                          word: "Two",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/three.png",
                          name: "Three",
                          word: "Three",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/four.png",
                          name: "Four",
                          word: "Four",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/five.png",
                          name: "Five",
                          word: "Five",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/six.png",
                          name: "Six",
                          word: "Six",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/seven.png",
                          name: "Seven",
                          word: "Seven",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/eight.png",
                          name: "Eight",
                          word: "Eight",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/nine.png",
                          name: "Nine",
                          word: "Nine",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/numbers/ten.png",
                          name: "Ten",
                          word: "Ten",
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
