import 'package:flutter/material.dart';
import 'package:kid_game/components/database/database_helper.dart';
import 'package:kid_game/screens/portrait_screens/main_menu_portrait.dart';
import 'globals.dart' as globals;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  openDatabes() async {
    await DatabaseHelper.instance.database;
  }

  openDatabes();
  runApp(
    //MaterialApp cagrilarak Materyal Widget kullanımı saglandi.
    FutureBuilder(
      future: globals.playMusic(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return MaterialApp(
            title: "Kid Game",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: const TextTheme(
                bodyText2: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            home: MainMenuPortrait(
              player: globals.player,
            ), //Anasayfa icin gerekli widgetler cagrildi.
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text("An error occured!"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ),
  );
}
