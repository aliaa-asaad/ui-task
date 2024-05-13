import 'package:flutter/material.dart';

class ScreenTitleAndLogo extends StatelessWidget {
  const ScreenTitleAndLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.abc,
          size: 60,
        ),
        Container(
          height: 30,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          width: 2,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        const Text(
          'MOC art competition',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        )
      ],
    );
  }
}
