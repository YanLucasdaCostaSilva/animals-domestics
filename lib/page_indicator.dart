import 'package:flutter/material.dart';

Widget pageIndicator(bool current) {
  return Container(
    width: current ? 15 : 10,
    height: current ? 15 : 10,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: current ? const Color.fromARGB(221, 69, 93, 126) : Colors.black38,
    ),
  );
}
