import 'package:flutter/material.dart';

class EmoticonWidget extends StatelessWidget {
  const EmoticonWidget({
    super.key,
    required this.icon,
    required this.mood,
  });

  final String icon;
  final String mood;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade400,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(20),
          child: Text(
            icon,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          mood,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
