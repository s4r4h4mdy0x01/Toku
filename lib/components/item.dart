import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number_class.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.n, required this.color, required this.typeSound})
      : super(key: key);
  final MainModel n;
  final Color color;
  final String typeSound;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(n.image)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  n.qName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  n.eName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: "assets/sounds/$typeSound/");
                player.play(n.sound);
              } catch (error) {
                print(error);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
