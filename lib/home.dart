import 'package:flutter/material.dart';

import 'emoji_key_board.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('return Emoji here'),
            //display emoji as a picture in the circle avatar
            GestureDetector(
              onTap: () {
                _showEmojiKeyboard(context);
              },
              child: const CircleAvatar(),
            ),
          ],
        ),
      ),
    );
  }

  void _showEmojiKeyboard(BuildContext context) async {
    var emoji = await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return const EmojiKeyBoard();
      },
    );
  }
}
