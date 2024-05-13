import 'package:flutter/material.dart';

class CardOneCustomWidget extends StatelessWidget {
  const CardOneCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              '0',
              style: TextStyle(
                color: Colors.white.withOpacity(.5),
              ),
            ),
            Icon(
              Icons.hail_rounded,
              color: Colors.white.withOpacity(.5),
            )
          ],
        ),
        Column(
          children: [
            Text(
              '1',
              style: TextStyle(
                color: Colors.white.withOpacity(.5),
              ),
            ),
            Icon(Icons.filter_list, color: Colors.white.withOpacity(.5))
          ],
        )
      ],
    );
  }
}

