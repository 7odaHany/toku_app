import 'package:flutter/material.dart';
import 'package:languege_learning/components/list_item.dart';
import 'package:languege_learning/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      // sound: 'sounds/numbers/number_one.mp3',
      sound: 'sounds/numbers/number_one.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
    ),
    ItemModel(
        sound: 'sounds/numbers/number_two.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two'),
    ItemModel(
        sound: 'sounds/numbers/number_three.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three'),
    ItemModel(
        sound: 'sounds/numbers/number_four.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Yon',
        enName: 'Four'),
    ItemModel(
        sound: 'sounds/numbers/number_five.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five'),
    ItemModel(
        sound: 'sounds/numbers/number_six.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six'),
    ItemModel(
        sound: 'sounds/numbers/number_seven.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Nana',
        enName: 'Seven'),
    ItemModel(
        sound: 'sounds/numbers/number_eight.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight'),
    ItemModel(
        sound: 'sounds/numbers/number_nine.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyuu',
        enName: 'Nine'),
    ItemModel(
        sound: 'sounds/numbers/number_ten.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Juu',
        enName: 'Ten'),
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
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          // children: getList(numbers),
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              value: numbers[index],
              color: const Color(0xffEF9235),
            );
          },
        ),
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> list = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     list.add(Item(value: numbers[i]));
  //   }
  //   return list;
  // }
}
