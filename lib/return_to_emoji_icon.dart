import 'package:flutter/material.dart';

class ReturnToEmojiListIcon extends StatelessWidget {
  const ReturnToEmojiListIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double alignX = 0.70;
    const double alignY = 0.90;
    return Stack(
      fit: StackFit.expand,
      children: [
        const Icon(Icons.sentiment_satisfied_alt_sharp),
        Align(
          alignment: const Alignment(alignX, alignY),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: const Icon(
              Icons.add_circle_sharp,
              size: 12,
            ),
          ),
        ),
      ],
    );
  }
}
