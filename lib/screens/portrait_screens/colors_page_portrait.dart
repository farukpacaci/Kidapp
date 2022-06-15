import 'package:flutter/material.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';
import 'package:kid_game/components/colored_card_widget.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';

class ColorPagePortrait extends StatelessWidget {
  const ColorPagePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
                    screenWidth,
                  ),
                  Center(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.black,
                          name: "Black",
                          word: "Black",
                        ),
                        //Black Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.white,
                          name: "White",
                          word: "White",
                        ),
                        //White Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.red,
                          name: "Red",
                          word: "Red",
                        ),
                        //Red Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.blue,
                          name: "Blue",
                          word: "Blue",
                        ),
                        //Blue Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.yellow,
                          name: "Yellow",
                          word: "Yellow",
                        ),
                        //Yellow Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.green,
                          name: "Green",
                          word: "Green",
                        ),
                        //Green Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.orange,
                          name: "Orange",
                          word: "Orange",
                        ),
                        //Orange Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.brown,
                          name: "Brown",
                          word: "Brown",
                        ),
                        //Browm Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.purple,
                          name: "Purple",
                          word: "Purple",
                        ),
                        //Purple Box
                        kColoredCard(
                          screenWidth: screenWidth,
                          color: Colors.pink,
                          name: "Pink",
                          word: "Pink",
                        ),
                        //Pink Box
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
