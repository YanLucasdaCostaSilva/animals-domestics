import 'package:flutter/material.dart';

Widget pageBoydy(String imageUrl, String title, String description,
    {Color? descriptionColor = Colors.black}) {
  return Column(
    children: [
      Image.network(imageUrl),
      const SizedBox(height: 8),
      Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        description,
        style: TextStyle(
          fontSize: 16,
          color: descriptionColor, // Aqui você define a cor da descrição
        ),
      ),
    ],
  );
}
