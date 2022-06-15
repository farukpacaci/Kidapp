import 'package:flutter_tts/flutter_tts.dart';
import 'package:kid_game/globals.dart' as globals;

class FunctionOfCompenents {
  static FunctionOfCompenents instance = FunctionOfCompenents._init();
  FunctionOfCompenents._init();

  Future<void> speak(String word, String name) async {
    FlutterTts flutterTts = FlutterTts();
    await globals.player.setVolume(0.1);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setVolume(1);
    await flutterTts.speak(name);
    await Future.delayed(const Duration(milliseconds: 1300));
    await flutterTts.speak(word);
    await Future.delayed(const Duration(seconds: 3));
    await globals.player.setVolume(1);
  }

  Future<void> speakTitle(String word) async {
    FlutterTts flutterTts = FlutterTts();
    await globals.player.setVolume(0.1);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setVolume(1);
    await flutterTts.speak(word);
    await Future.delayed(const Duration(seconds: 3));
    await globals.player.setVolume(1);
  }
}
