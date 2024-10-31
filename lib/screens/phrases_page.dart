import 'package:flutter/material.dart';
import 'package:languege_learning/components/phrase_item.dart';
import 'package:languege_learning/models/item.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});
  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      image: null,
      jpName: 'お名前は何ですか？',
      enName: 'what is your name ?',
    ),
    ItemModel(
      enName: 'I love programming',
      jpName: 'プログラミングが大好きです',
      sound: 'sounds/phrases/i_love_programming.wav',
      image: null,
    ),
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: '来ますか ?',
      enName: 'Are you coming ?',
      image: null,
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      image: null,
      jpName: 'はい、行きます',
      enName: 'Yes, I\'m coming',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      image: null,
      jpName: 'どこに行くの',
      enName: 'Where are you going ?',
    )
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
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              color: const Color(0xff47a5cb),
              item: phrasesList[index],
            );
          },
        ),
      ),
    );
  }
}
