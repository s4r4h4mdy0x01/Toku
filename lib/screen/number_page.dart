import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number_class.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<MainModel> numbers = const [
    MainModel(
        sound: "number_one_sound.mp3",
        image: 'assets/images/numbers/number_one.png',
        eName: 'One',
        qName: 'Ichi'),
    MainModel(
        sound: "number_two_sound.mp3",
        image: 'assets/images/numbers/number_two.png',
        eName: 'Two',
        qName: 'Ni'),
    MainModel(
        sound: "number_three_sound.mp3",
        image: 'assets/images/numbers/number_three.png',
        eName: 'Three',
        qName: 'San'),
    MainModel(
        sound: "number_four_sound.mp3",
        image: 'assets/images/numbers/number_four.png',
        eName: 'Four',
        qName: 'Shi'),
    MainModel(
        sound: "number_five_sound.mp3",
        image: 'assets/images/numbers/number_five.png',
        eName: 'Five',
        qName: 'Go'),
    MainModel(
        sound: "number_six_sound.mp3",
        image: 'assets/images/numbers/number_six.png',
        eName: 'Six',
        qName: 'Roku'),
    MainModel(
        sound: "number_seven_sound.mp3",
        image: 'assets/images/numbers/number_seven.png',
        eName: 'Seven',
        qName: 'Sebun'),
    MainModel(
        sound: "number_eight_sound.mp3",
        image: 'assets/images/numbers/number_eight.png',
        eName: 'Eight',
        qName: 'Hachi'),
    MainModel(
        sound: "number_nine_sound.mp3",
        image: 'assets/images/numbers/number_nine.png',
        eName: 'Nine',
        qName: 'Kyū'),
    MainModel(
        sound: "number_ten_sound.mp3",
        image: 'assets/images/numbers/number_ten.png',
        eName: 'Ten',
        qName: 'Jū'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Numbers',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(n: numbers[index], color: const Color(0xffEF9253), typeSound: 'numbers',);
        },
      ),
    );
  }
}
