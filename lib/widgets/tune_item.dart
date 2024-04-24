import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.Tune});
final TuneModel Tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Tune.playSound();
        },
        child: Container(
          
        ),
      ),
    );
  }
}