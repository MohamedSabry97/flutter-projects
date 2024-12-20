import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  get tunes => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(239, 0, 0, 0),
        title: Text(
          'Tune app',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: tunes
            .map((e) => TuneItem(
                  color: e[0],
                  sound: e[1],
                ))
            .toList(),
      ),
    );
  }
}
