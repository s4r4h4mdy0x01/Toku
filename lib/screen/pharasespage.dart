import 'package:flutter/material.dart';
import 'package:toku/components/pharasesItem.dart';
import 'package:toku/models/number_class.dart';
import 'package:toku/models/pharas.dart';

class Pharases extends StatelessWidget {
  const Pharases({Key? key}) : super(key: key);
  final List<Pharases_i> pharas = const [
    Pharases_i(
        sound: 'i_love_programming.wav',
        eName: 'I Love Programming',
        qName: 'Puroguramingu ga daisuki'),
    Pharases_i(
        sound: 'i_love_anime.wav',
        eName: 'I Love Anime',
        qName: 'Watashi wa anime ga daisukidesu'),
    Pharases_i(
        sound: 'what_is_your_name.wav',
        eName: 'What Is Your Name',
        qName: 'Namae wa nandesu ka'),
         Pharases_i(
        sound: 'are_you_coming.wav',
        eName: 'Are You Coming',
        qName: 'Kite imasu ka'),
         Pharases_i(
        sound: 'how_are_you_feeling.wav',
        eName: 'How Are You Feeling',
        qName: 'Go kibun wa ikagadesu ka'),
         Pharases_i(
        sound: 'programming_is_easy.wav',
        eName: 'Programming Is Easy',
        qName: 'Puroguramingu wa kantan'),
          Pharases_i(
        sound: 'where_are_you_going.wav',
        eName: 'Where Are You Going',
        qName: 'Doko ni iku no'),
          Pharases_i(
        sound: 'yes_im_coming.wav',
        eName: 'Yes Im Coming',
        qName: 'Hai, kimasu'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Pharases',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
          itemCount: pharas.length,
          itemBuilder: ((context, index) {
            return ItemPharases(
            
              n: pharas[index],
              typeSound: 'phrases',
            );
          })),
    );
  }
}
