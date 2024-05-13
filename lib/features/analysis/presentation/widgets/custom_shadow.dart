import 'package:flutter/material.dart';
class CustomShadow extends StatelessWidget {
  const CustomShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30,
      left: -30,
      child: Container(
        width: 200,
        height: 200,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.shade800,
              blurRadius: 100,
              spreadRadius: 4,
            ),
          ],
        ),
      ),
    );
  }
}
