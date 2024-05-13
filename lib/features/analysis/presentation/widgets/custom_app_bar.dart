import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.menu),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          // backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
      ],
    );
  }
}
