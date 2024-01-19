import 'package:flutter/material.dart';

class CoffeeSearchBar extends StatelessWidget {
  const CoffeeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(65, 65, 65, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Row(
        children: [
          Icon(Icons.search),
          Expanded(
            child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Coffee',
                    hintStyle: (TextStyle(
                      color: Color.fromRGBO(221, 221, 221, 0.5),
                    )))),
          ),
          Icon(Icons.filter_list),
        ],
      ),
    );
  }
}
