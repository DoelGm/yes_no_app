import 'package:flutter/material.dart';

class HerMesaggebubble extends StatelessWidget {
  const HerMesaggebubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.secondary,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'La extraño :(',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const _imagen(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _imagen extends StatelessWidget {
  const _imagen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://s.yimg.com/ny/api/res/1.2/P.DWCshAPKtqo0r7p0duaQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTM2Mg--/https://media.zenfs.com/es/levelup_525/e944ed05ad593f453fa0fdcc93cc244d',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // ignore: prefer_const_constructors
            child: Text('Esta mandando una imagen'),
          );
        },
      ),
    );
  }
}