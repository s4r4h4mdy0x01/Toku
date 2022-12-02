import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number_class.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);
 final List<MainModel> numbers = const [
      MainModel(
        sound: "gray.wav",
        image: 'assets/images/colors/color_gray.png',
        eName: 'Gray',
        qName: 'Gure'),
    MainModel(
        sound: "black.wav",
        image: 'assets/images/colors/color_black.png',
        eName: 'Black',
        qName: 'Burakku'),
    MainModel(
        sound: "white.wav",
        image: 'assets/images/colors/color_white.png',
        eName: 'White',
        qName: 'Shiroi'),
    MainModel(
        sound: "yellow.wav",
        image: 'assets/images/colors/yellow.png',
        eName: 'Yellow',
        qName: 'Kiiro'),
    MainModel(
        sound: "red.wav",
        image: 'assets/images/colors/color_red.png',
        eName: 'Red',
        qName: 'Aka'),
    MainModel(
        sound: "green.wav",
        image: 'assets/images/colors/color_green.png',
        eName: 'Green',
        qName: 'Midori'),
    MainModel(
        sound: "gray.wav",
        image: 'assets/images/colors/color_gray.png',
        eName: 'Gray',
        qName: 'Gure'),
        
  
    MainModel(
        sound: "brown.wav",
        image: 'assets/images/colors/color_brown.png',
        eName: 'Brown',
        qName: 'Chairo'),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Colors',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(n: numbers[index], color:const Color(0xff79359F), typeSound: 'colors',);
        },
      ),
    );
  }
}