import 'package:just_audio/just_audio.dart';

String avatarImg = "assets/icons/avatars/futurama.svg";
var player = AudioPlayer();
playMusic() async {
  await player.setAsset('assets/audios/background_music.mp3');
  player.play();
  player.setLoopMode(LoopMode.one);
  return true;
}

