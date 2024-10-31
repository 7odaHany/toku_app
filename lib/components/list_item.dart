import 'package:flutter/material.dart';
import 'package:languege_learning/models/item.dart';
import 'item_info.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.value,
    required this.color,
  });

  final ItemModel value;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff4d9),
            child: Image.asset(value.image!),
          ),
          Expanded(child: ItemInfo(item: value)),
        ],
      ),
    );
  }
}
