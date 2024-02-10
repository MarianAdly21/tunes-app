import 'package:flutter/material.dart';
import 'package:tunes_player_app/widgets/basic_widget.dart';
import 'package:tunes_player_app/view/tune_view.dart';

void main() {
  runApp(const TunesApp());
}

class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneView(),
    );
  }
}
