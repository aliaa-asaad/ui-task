import 'package:flutter/material.dart';

class CardTwoCustomWidget extends StatelessWidget {
  const CardTwoCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            radius: 18,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 20,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black,
            radius: 18,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 40,
          child: CircleAvatar(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            radius: 18,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 60,
          child: CircleAvatar(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.black,
            radius: 18,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 80,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            radius: 18,
          ),
        ),
      ],
    );
  }
}
