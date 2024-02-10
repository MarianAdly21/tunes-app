import 'package:flutter/material.dart';
import 'package:tunes_player_app/model/tune_model.dart';

class BasicWidget extends StatelessWidget {
  const BasicWidget({
    super.key,
    required this.tune,
  });
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
