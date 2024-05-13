import 'package:flutter/material.dart';

class CustomCardDecoration extends StatelessWidget {
  final Widget child;
  const CustomCardDecoration({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromARGB(255, 53, 48, 77).withOpacity(.5),
            const Color.fromARGB(255, 35, 32, 49).withOpacity(.5),
            const Color(0xff16141F).withOpacity(.5),
          ],
        ),
        border: Border.all(
          color: const Color.fromARGB(255, 53, 48, 77),
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
