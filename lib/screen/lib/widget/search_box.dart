import 'package:flutter/material.dart';

Widget searchBox() {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search...",
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search),
      ),
    ),
  );
}
