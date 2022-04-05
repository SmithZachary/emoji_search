import 'package:emoji_search/return_to_emoji_icon.dart';
import 'package:flutter/material.dart';

class EmojiSearchBar extends StatelessWidget {
  const EmojiSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  /* return to first emoji tab */
                },
                icon: const ReturnToEmojiListIcon())
          ],
          title: SizedBox(
            width: double.infinity,
            height: 40,
            child: Center(
              child: TextField(
                style: TextStyle(
                  color: Theme.of(context).appBarTheme.iconTheme?.color,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10.0),
                  hintStyle: TextStyle(
                    color: Theme.of(context).appBarTheme.iconTheme?.color,
                  ),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).appBarTheme.iconTheme?.color,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                      size: 22,
                    ),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search emojis',
                  border: OutlineInputBorder(

                      ///todo: make border radius const
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none)),
                ),
              ),
            ),
          )),
    );
  }
}
