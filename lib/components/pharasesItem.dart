import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/pharas.dart';
import '../models/number_class.dart';

class ItemPharases extends StatelessWidget {
  const ItemPharases({Key? key, required this.n, required this.typeSound})
      : super(key: key);
  final Pharases_i n;

  final String typeSound;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff50ADC7),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  n.eName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  n.qName,
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
