// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kid_game/screens/portrait_screens/main_menu_portrait.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:kid_game/globals.dart' as global;

// ignore: must_be_immutable
class smallSelectAvatar extends StatefulWidget {
  String imgName;
  dynamic snapshot;
  int requiredSoccer;
  String characterName;
  String level;

  smallSelectAvatar({
    Key? key,
    required this.imgName,
    required this.characterName,
    required this.snapshot,
    required this.requiredSoccer,
    required this.level,
  }) : super(key: key);

  @override
  State<smallSelectAvatar> createState() => _smallSelectAvatarState();
}

class _smallSelectAvatarState extends State<smallSelectAvatar> {
  @override
  Widget build(BuildContext context) {
    double screenLongestSide = MediaQuery.of(context).size.longestSide;
    return SizedBox(
      width: screenLongestSide * 0.12,
      height: screenLongestSide * 0.12,
      child: int.parse(widget.snapshot.data.toString()) >= widget.requiredSoccer
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  GestureDetector(
                    onTap: () {
                      global.avatarImg =
                          "assets/icons/avatars/${widget.imgName}.svg";
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MainMenuPortrait(player: global.player),
                          ));
                    },
                    child: SizedBox(
                      width: screenLongestSide * 0.075,
                      height: screenLongestSide * 0.075,
                      child: Center(
                        child: SvgPicture.asset(
                            "assets/icons/avatars/${widget.imgName}.svg"),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: OutlinedText(
                      text: Text(
                        widget.characterName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      strokes: [
                        OutlinedTextStroke(
                          color: Colors.black,
                          width: 2,
                        ),
                      ],
                    ),
                  ),
                ])
          : Column(
              children: [
                SizedBox(
                  width: screenLongestSide * 0.077,
                  height: screenLongestSide * 0.077,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/avatars/${widget.imgName}.svg",
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/icons/avatars/locked.png",
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedText(
                  text: Text(
                    "Level ${widget.level}",
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  strokes: [
                    OutlinedTextStroke(
                      color: Colors.black,
                      width: 2,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
