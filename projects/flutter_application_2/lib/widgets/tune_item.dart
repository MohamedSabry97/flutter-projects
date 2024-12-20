import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.color, required this.sound});
  final Color color;
  final dynamic sound;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();

          await player.play(AssetSource(sound));
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
