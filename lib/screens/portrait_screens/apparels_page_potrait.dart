import 'package:flutter/material.dart';
import 'package:kid_game/components/card_widget_undirection.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';

class ApparelsPagePotrait extends StatelessWidget {
  const ApparelsPagePotrait({Key? key}) : super(key: key);

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
                      runSpacing: 20,
                      spacing: 20,
                      children: [
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/blouse.png",
                          name: "Blouse",
                          word: "Blouse",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/coat.png",
                          name: "Coat",
                          word: "Coat",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/dress.png",
                          name: "Dress",
                          word: "Dress",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/gloves.png",
                          name: "Gloves",
                          word: "Gloves",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/hat.png",
                          name: "Hat",
                          word: "Hat",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/jacket.png",
                          name: "Jacket",
                          word: "Jacket",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/jeans.png",
                          name: "Jeans",
                          word: "Jeans",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/shirt.png",
                          name: "Shirt",
                          word: "Shirt",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/shoes.png",
                          name: "Shoes",
                          word: "Shoes",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/shorts.png",
                          name: "Shorts",
                          word: "Shorts",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/skirt.png",
                          name: "Skirt",
                          word: "Skirt",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/socks.png",
                          name: "Socks",
                          word: "Socks",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/suit.png",
                          name: "Suit",
                          word: "Suit",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/sweater.png",
                          name: "Sweater",
                          word: "Sweater",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/sweatshirt.png",
                          name: "Sweatshirt",
                          word: "Sweatshirt",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/tie.png",
                          name: "Tie",
                          word: "Tie",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/trainers.png",
                          name: "Trainers",
                          word: "Trainers",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/trousers.png",
                          name: "Trousers",
                          word: "Trousers",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/tshirt.png",
                          name: "T Shirt",
                          word: "T Shirt",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/apparels/winterhat.png",
                          name: "Winter Hat",
                          word: "Winter Hat",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
