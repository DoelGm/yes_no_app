import 'package:flutter/material.dart';

class MyMesaggebubble extends StatelessWidget {
  const MyMesaggebubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.primary,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
