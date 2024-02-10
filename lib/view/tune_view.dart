import 'package:flutter/material.dart';
import 'package:tunes_player_app/model/tune_model.dart';
import 'package:tunes_player_app/widgets/basic_widget.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffee2b3a), sound: 'note1.wav'),
    TuneModel(color: Color(0xfff39330), sound: 'note2.wav'),
    TuneModel(color: Color(0xfffbf35c), sound: 'note3.wav'),
    TuneModel(color: Color(0xff3cc159), sound: 'note4.wav'),
    TuneModel(color: Color(0xff0ca586), sound: 'note5.wav'),
    TuneModel(color: Color(0xff0ca0e7), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9810a7), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff243138),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => BasicWidget(tune: e),
            )
            .toList(),
      ),
    );
  }

  // List<BasicWidget> getTuneItem() {
  //   List<BasicWidget> items = [];
  //   for (var color in tunes) {
  //     items.add(BasicWidget(color: color));
  //   }
  //   return items;
  // }
}
