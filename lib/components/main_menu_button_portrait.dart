import 'package:flutter/material.dart';
import 'package:kid_game/globals.dart' as globals;
import 'package:kid_game/screens/portrait_screens/main_menu_portrait.dart';

// ignore: non_constant_identifier_names
MainMenuButton(BuildContext context, double screenWidth) {
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MainMenuPortrait(player: globals.player)));
    },
    child: Padding(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 10,
        right: screenWidth * 0.825,
      ),
      child: Container(
        width: screenWidth * 0.1,
        height: screenWidth * 0.1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF348F50).withOpacity(0.5),
              const Color(0xFF56B4D3).withOpacity(0.5),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.home,
            size: 30,
          ),
        ),
      ),
    ),
  );
}
