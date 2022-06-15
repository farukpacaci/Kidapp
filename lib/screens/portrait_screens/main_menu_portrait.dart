// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kid_game/components/card_widget.dart';
import 'package:kid_game/components/database/database_helper.dart';
import 'package:kid_game/components/mail_box.dart';
import 'package:kid_game/components/select_avatar_menu/small_select_avatar.dart';
import 'package:kid_game/screens/portrait_screens/animals_page_portrait.dart';
import 'package:kid_game/screens/portrait_screens/apparels_page_potrait.dart';
import 'package:kid_game/screens/portrait_screens/chracters_page_portrait.dart';
import 'package:kid_game/screens/portrait_screens/colors_page_portrait.dart';
import 'package:kid_game/screens/portrait_screens/fruits_page_potrait.dart';
import 'package:kid_game/screens/portrait_screens/numbers_page_portrait.dart';
import 'package:kid_game/screens/portrait_screens/tests/animals_test.dart';
import 'package:kid_game/screens/portrait_screens/tests/apparels_test.dart';
import 'package:kid_game/screens/portrait_screens/tests/colors_test.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';
import 'package:kid_game/screens/portrait_screens/tests/fruits_test.dart';
import 'package:kid_game/screens/portrait_screens/tests/numbers_test.dart';
import 'package:kid_game/screens/portrait_screens/tests/vegetables_test.dart';
import 'package:kid_game/screens/portrait_screens/tests/vehicles_test.dart';
import 'package:kid_game/screens/portrait_screens/vegetables_page_potrait.dart';
import 'package:kid_game/screens/portrait_screens/vehicles_page_potrait.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kid_game/globals.dart' as global;

// ignore: must_be_immutable
class MainMenuPortrait extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var player;

  MainMenuPortrait({Key? key, required this.player}) : super(key: key);

  @override
  State<MainMenuPortrait> createState() => _MainMenuPortraitState();
}

class _MainMenuPortraitState extends State<MainMenuPortrait> {
  Future<String> readSoccer() async {
    var db = await DatabaseHelper.instance.readAllData();
    String soccer = db[0]["soccer"].toString();
    return soccer;
  }

  Icon soundIco = const Icon(Icons.music_note_rounded);
  bool isPlay = true;
  playMusic() async {
    isPlay = true;
    await widget.player.setAsset('assets/audios/background_music.mp3');
    widget.player.play();
    widget.player.setLoopMode(LoopMode.one);
    return true;
  }

  stopMusic() async {
    widget.player.stop();
    isPlay = false;
    return false;
  }

  String avatarImg = "assets/icons/avatars/futurama.svg";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.shortestSide;
    double screenHeight = MediaQuery.of(context).size.longestSide;
    Icon changeMusicIcon() {
      if (isPlay == true) {
        return const Icon(Icons.music_note_rounded, color: Colors.black);
      } else {
        return const Icon(
          Icons.music_off_rounded,
          color: Colors.black,
        );
      }
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        primary: true,
        elevation: 0,
        toolbarHeight: 75,
        leadingWidth: 250,
        title: GestureDetector(
          onTap: () {
            setState(() {
              showDialog(
                  context: context,
                  builder: (context) {
                    return FutureBuilder(
                      future: DatabaseHelper.instance.readSoccer(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return AlertDialog(
                            insetPadding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.015,
                              vertical: screenHeight * 0.12,
                            ),
                            content: Container(
                              width: screenWidth * 1,
                              height: screenHeight * 0.9,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFF348F50).withOpacity(0.9),
                                    const Color(0xFF56B4D3).withOpacity(0.9),
                                  ],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(1.0, 0.0),
                                  stops: const [0.0, 1.0],
                                  tileMode: TileMode.clamp,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.black,
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: screenHeight * 0.05,
                                        bottom: screenHeight * 0.02,
                                      ),
                                      child: OutlinedText(
                                        text: const Text(
                                          "Select An Avatar",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 32,
                                          ),
                                        ),
                                        strokes: [
                                          OutlinedTextStroke(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                    //Select an avatar (Text)
                                    Container(
                                      width: 120,
                                      height: 120,
                                      decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        global.avatarImg,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    //Selected Avatar Image
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: screenHeight * 0.02),
                                      child: Wrap(
                                        alignment: WrapAlignment.center,
                                        children: [
                                          smallSelectAvatar(
                                            imgName: "futurama",
                                            characterName: "Futurama",
                                            snapshot: snapshot,
                                            requiredSoccer: 0,
                                            level: "1",
                                          ),
                                          //Futurama Image
                                          smallSelectAvatar(
                                            imgName: "futurama_mom",
                                            characterName: "Futurama Mom",
                                            snapshot: snapshot,
                                            requiredSoccer: 100,
                                            level: "2",
                                          ),
                                          //Futurama Mom Image
                                          smallSelectAvatar(
                                            imgName: "mando",
                                            characterName: "Mando",
                                            snapshot: snapshot,
                                            requiredSoccer: 500,
                                            level: "3",
                                          ),
                                          //Mando Image
                                          smallSelectAvatar(
                                            imgName: "homer_simpson",
                                            characterName: "Homer Simpson",
                                            snapshot: snapshot,
                                            requiredSoccer: 1000,
                                            level: "4",
                                          ),
                                          //Homer Simpson Image
                                          smallSelectAvatar(
                                            imgName: "jake",
                                            characterName: "Jake",
                                            snapshot: snapshot,
                                            requiredSoccer: 2000,
                                            level: "5",
                                          ),
                                          //Jake Image
                                          smallSelectAvatar(
                                            imgName: "iron_man",
                                            characterName: "Iron Man",
                                            snapshot: snapshot,
                                            requiredSoccer: 9000,
                                            level: "8",
                                          ),
                                          //Iron-Man Image
                                          smallSelectAvatar(
                                            imgName: "super_mario",
                                            characterName: "Super Mario",
                                            requiredSoccer: 11000,
                                            snapshot: snapshot,
                                            level: "10",
                                          ),
                                          //Super Mario Image
                                        ],
                                      ),
                                      //Select Avatar Images
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                          );
                        }
                        if (snapshot.hasError) {
                          return const Text("");
                        } else {
                          return const CircularProgressIndicator();
                        }
                      },
                    );
                  });
            });
          },
          child: SizedBox(
            width: 75,
            height: 75,
            child: SvgPicture.asset(
              global.avatarImg,
            ),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.024),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/icons/star.png",
                    width: 40,
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: FutureBuilder(
                      future: DatabaseHelper.instance.readSoccer(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (int.parse(snapshot.data.toString()) >= 0 &&
                              100 > int.parse(snapshot.data.toString())) {
                            return const Center(
                              child: Text(
                                "1",
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }
                          if (int.parse(snapshot.data.toString()) >= 100 &&
                              500 > int.parse(snapshot.data.toString())) {
                            return const Center(
                              child: Text(
                                "2",
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }
                          if (int.parse(snapshot.data.toString()) >= 500 &&
                              1000 > int.parse(snapshot.data.toString())) {
                            return const Text(
                              "3",
                              style: TextStyle(color: Colors.black),
                            );
                          }
                          if (int.parse(snapshot.data.toString()) >= 1000 &&
                              2000 > int.parse(snapshot.data.toString())) {
                            return const Center(
                              child: Text(
                                "4",
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }
                          if (int.parse(snapshot.data.toString()) >= 2000 &&
                              4000 > int.parse(snapshot.data.toString())) {
                            return const Text(
                              "5",
                              style: TextStyle(color: Colors.black),
                            );
                          } else {
                            int cnt = 0;
                            for (var i = 0;
                                i < int.parse(snapshot.data.toString());
                                i + 4000) {
                              cnt += 1;
                            }
                            return Text(
                              "${cnt + 5}",
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            );
                          }
                        }
                        if (snapshot.hasError) {
                          return const Text("!");
                        } else {
                          return const Text("");
                        }
                      },
                    ),
                  ),
                ],
              ),
              //Star Icon
              SizedBox(
                width: 80,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: FittedBox(
                    child: FutureBuilder(
                      future: DatabaseHelper.instance.readSoccer(),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                            return const Text("No Soccer");
                          case ConnectionState.waiting:
                            return const Text("");
                          case ConnectionState.done:
                            return OutlinedText(
                              text: Text("${snapshot.data}"),
                              strokes: [
                                OutlinedTextStroke(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ],
                            );
                          default:
                            return const Text("");
                        }
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          const MailButton(),
          GestureDetector(
            onTap: () async {
              setState(() {
                isPlay ? stopMusic() : playMusic();
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                  top: 20, bottom: 20, right: screenWidth * 0.024),
              child: Container(
                width: 40,
                height: 40,
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
                child: Center(
                  child: changeMusicIcon(),
                ),
              ),
            ),
          ),
          //Music On&Off
        ],
      ),
      body: Stack(
        children: [
          const BackgroundPortrait(),
          SingleChildScrollView(
            //Swipping to Bellow and Up
            child: Center(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      OutlinedText(
                        text: const Text(
                          "Education",
                          style: TextStyle(fontSize: 32),
                        ),
                        strokes: [
                          OutlinedTextStroke(
                            color: Colors.black,
                            width: 2,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        runSpacing: 20,
                        spacing: 20,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/color_pallete.png",
                            page: const ColorPagePortrait(),
                            name: "Colors",
                            word: "Colors",
                            player: widget.player,
                          ),
                          //Color Box
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/numbers.png",
                            page: const NumbersPagePortrait(),
                            name: "Numbers",
                            word: "Numbers",
                            player: widget.player,
                          ),
                          //Number Box

                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/animals.png",
                            page: const AnimalsPagePortrait(),
                            name: "Animals",
                            word: "Animals",
                            player: widget.player,
                          ),
                          //Animal Box
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/apparel.png",
                            page: const ApparelsPagePotrait(),
                            name: "Apparels",
                            word: "Apparels",
                            player: widget.player,
                          ),
                          //Apparels Box
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/fruits.png",
                            page: const FruitsPagePotrait(),
                            name: "Fruits",
                            word: "Fruits",
                            player: widget.player,
                          ),
                          //Fruits Box
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/vegetables.png",
                            page: const VegetablesPagePotrait(),
                            name: "Vegetables",
                            word: "Vegetables",
                            player: widget.player,
                          ),
                          //Vegetables Box
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/vehicles.png",
                            page: const VehiclesPagePortrait(),
                            name: "Vehicles",
                            word: "Vehicles",
                            player: widget.player,
                          ),
                          //Vehicles Box
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/characters.png",
                            page: const CharactersPagePortrait(),
                            name: "Characters",
                            word: "Characters",
                            player: widget.player,
                          ),
                          //Chracters Box
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedText(
                        text: const Text(
                          "Tests",
                          style: TextStyle(fontSize: 32),
                        ),
                        strokes: [
                          OutlinedTextStroke(
                            color: Colors.black,
                            width: 2,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        runSpacing: 20,
                        spacing: 20,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/color_pallete.png",
                            page: const ColorsTestPotrait(),
                            name: "Colors Test",
                            word: "Colors Test",
                            player: widget.player,
                          ),
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/animals.png",
                            page: const AnimalsTestPotrait(),
                            name: "Animals Test",
                            word: "Animals Test",
                            player: widget.player,
                          ),
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/vehicles.png",
                            page: const VehiclesTestPotrait(),
                            name: "Vehicles Test",
                            word: "Vehicles Test",
                            player: widget.player,
                          ),
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/fruits.png",
                            page: const TestFruitsPotrait(),
                            name: "Fruits Test",
                            word: "Fruits Test",
                            player: widget.player,
                          ),
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/numbers.png",
                            page: const TestNumbersPotrait(),
                            name: "Numbers T...",
                            word: "Numbers Test",
                            player: widget.player,
                          ),
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/apparel.png",
                            page: const ApparelsTestPotrait(),
                            name: "Apparels T...",
                            word: "Apparels Test",
                            player: widget.player,
                          ),
                          kCard(
                            screenWidth: screenWidth,
                            img: "assets/icons/main_menu/vegetables.png",
                            page: const VegetablesTestPotrait(),
                            name: "Vegetables T.",
                            word: "Vegetables Test",
                            player: widget.player,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
