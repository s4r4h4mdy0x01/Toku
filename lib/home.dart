import 'package:flutter/material.dart';
import 'package:toku/components/gategory.dart';
import 'package:toku/screen/colorpage.dart';
import 'package:toku/screen/familypage.dart';
import 'package:toku/screen/number_page.dart';
import 'package:toku/screen/pharasespage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gategory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            color: const Color(0xffEF9253),
            text: 'Numbers',
          ),
          Gategory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorPage();
              }));
            },
            color: const Color(0xff79359F),
            text: 'Colors',
          ),
          Gategory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Family();
              }));
            },
            color: const Color(0xff558B37),
            text: 'Family Members',
          ),
          Gategory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Pharases();
              }));
            },
            color: const Color(0xff50ADC7),
            text: 'Pharases',
          ),
        ],
      ),
    );
  }
}
