import 'package:kplayer/kplayer.dart';

export 'package:xylophone/utils/note_player.dart';

PlayerController playNote(note) {
  return Player.asset('assets/sounds/note$note.wav');
}
