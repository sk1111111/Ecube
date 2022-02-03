import 'package:e3/Audio/AudioCategory.dart';
import 'package:e3/Color/color.dart';
import 'package:flutter/material.dart';

class AudioHome extends StatelessWidget {
  const AudioHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        color: mBackgroundColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: AudioCategory(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
