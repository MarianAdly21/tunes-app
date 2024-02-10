import 'package:flutter/material.dart';
import 'package:tunes_player_app/widgets/basic_widget.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<Color> tuneColor = const [
    Color(0xffee2b3a),
    Color(0xfff39330),
    Color(0xfffbf35c),
    Color(0xff3cc159),
    Color(0xff0ca586),
    Color(0xff0ca0e7),
    Color(0xff9810a7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff243138),
        title: Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: tuneColor
            .map(
              (e) => BasicWidget(color: e),
            )
            .toList(),
      ),
    );
  }

  // List<BasicWidget> getTuneItem() {
  //   List<BasicWidget> items = [];
  //   for (var color in tuneColor) {
  //     items.add(BasicWidget(color: color));
  //   }
  //   return items;
  // }
}
