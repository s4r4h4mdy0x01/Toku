import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/number_class.dart';

class Family extends StatelessWidget {
  const Family({Key? key}) : super(key: key);
 final List<MainModel> member = const [
    MainModel(
        sound: "father.wav",
        image: 'assets/images/family_members/family_father.png',
        eName: 'Father',
        qName: 'Chichioya'),
    MainModel(
        sound: "mother.wav",
        image: 'assets/images/family_members/family_mother.png',
        eName: 'Mother',
        qName: 'Hahaoya'),
    
         MainModel(
        sound: "daughter.wav",
        image: 'assets/images/family_members/family_daughter.png',
        eName: 'Daughter',
        qName: 'Musume'),
            MainModel(
        sound: "younger sister.wav",
        image: 'assets/images/family_members/family_younger_sister.png',
        eName: 'Younger Sister',
        qName: 'Imoto'),
    MainModel(
        sound: "grand father.wav",
        image: 'assets/images/family_members/family_grandfather.png',
        eName: 'Grand Father',
        qName: "Ojisan"),
    MainModel(
        sound: "grand mother.wav",
        image: 'assets/images/family_members/family_grandmother.png',
        eName: 'Grand Mother',
        qName: 'Sobo'),
    MainModel(
        sound: "older bother.wav",
        image: 'assets/images/family_members/family_older_brother.png',
        eName: 'Older Brother',
        qName: 'Nisan'),
    MainModel(
        sound: "older sister.wav",
        image: 'assets/images/family_members/family_older_sister.png',
        eName: 'Older Sister',
        qName: 'Ane'),
    MainModel(
        sound: "son.wav",
        image: 'assets/images/family_members/family_son.png',
        eName: 'Son',
        qName: 'Musuko'),
    MainModel(
        sound: "younger brohter.wav",
        image: 'assets/images/family_members/family_younger_brother.png',
        eName: 'Younger Brohter',
        qName: 'ototo'),
   
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Family Members',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: member.length,
        itemBuilder: (context, index) {
          return Item(n: member[index], color: const Color(0xff558B37), typeSound: 'family_members',);
        },
      ),
    );
  }
}