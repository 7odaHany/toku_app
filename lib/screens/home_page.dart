import 'package:flutter/material.dart';
import 'package:languege_learning/components/category_item.dart';
import 'package:languege_learning/screens/colors_page.dart';
import 'package:languege_learning/screens/family_member_page.dart';
import 'package:languege_learning/screens/numbers_page.dart';
import 'package:languege_learning/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMemberPage();
              }));
            },
            text: 'Family Members',
            color: const Color(0xff528032),
          ),
          Category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const ColorsPage();
                }));
              },
              text: 'Colors',
              color: const Color(0xff79359F)),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PharsesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff47a5cb),
          ),
        ],
      ),
    );
  }
}
