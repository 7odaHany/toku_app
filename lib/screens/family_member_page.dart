
import 'package:flutter/material.dart';
import 'package:languege_learning/components/list_item.dart';
import 'package:languege_learning/models/item.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  final List<ItemModel> members = const [
    ItemModel(
      sound : 'sounds/family_members/father.wav',
      image : 'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
    ),
    ItemModel(
      sound : 'sounds/family_members/mother.wav',
      image : 'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
    ),
    ItemModel(
      sound : 'sounds/family_members/older_bother.wav',
      image : 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older Brother',
    ),
    ItemModel(
      sound : 'sounds/family_members/older_sister.wav',
      image : 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),
    ItemModel(
      
      sound : 'sounds/family_members/younger_brohter.wav',
      image : 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otouto',
      enName: 'Younger Brother',
    ),
    ItemModel(
      sound : 'sounds/family_members/younger_sister.wav',
      image : 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imouto',
      enName: 'Younger Sister',
    ),
    ItemModel(
      sound : 'sounds/family_members/grandfather.wav',
      image : 'assets/images/family_members/family_grandfather.png',
      jpName: 'Oji',
      enName: 'Grandfather',
    ),
    ItemModel(
      sound : 'sounds/family_members/grandmother.wav',
      image : 'assets/images/family_members/family_grandmother.png',
      jpName: 'Oba',
      enName: 'Grandmother',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff255E6E),
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            'Family Member',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return ListItem(
              value: members[index],
              color: const Color(0xff528032),
            );
          },
        ),
      ),
    );
  }
}
