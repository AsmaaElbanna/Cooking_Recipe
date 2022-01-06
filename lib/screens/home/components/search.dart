import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 300,
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search for recipes',
          prefixIcon: Icon(Icons.search),
         // contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
        ),
      ),
    );
  }
}
