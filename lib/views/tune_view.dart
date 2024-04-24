import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> Tunes = const [
    TuneModel(color: Colors.red, sound: "note1.wav"),
    TuneModel(color: Colors.orange, sound: "note2.wav"),
    TuneModel(color: Colors.yellow, sound: "note3.wav"),
    TuneModel(color: Colors.green, sound: "note4.wav"),
    TuneModel(color: Colors.blue, sound: "note5.wav"),
    TuneModel(color: Colors.blueGrey, sound: "note6.wav"),
    TuneModel(color: Colors.purple, sound: "note7.wav"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tunes",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: Tunes
            .map(
              (e) => TuneItem(Tune: e),
            )
            .toList(),
      ),
    );
  }
  // List<TuneItem>getTuneItems(){
  //   List<TuneItem> items = [];
  //   for (var color in Tunes) {
  //     items.add(TuneItem(color: color));

  //   }
  //   return items;
  // }
}
