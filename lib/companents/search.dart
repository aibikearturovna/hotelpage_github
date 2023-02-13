import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30.0),
      shadowColor: Colors.black54,
      child: const TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            hintText: "Search for Hotel,Flight....",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black54,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
