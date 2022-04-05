import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

import 'emoji_search_bar.dart';

class EmojisPickerSheet extends StatefulWidget {
  const EmojisPickerSheet({Key? key}) : super(key: key);

  @override
  _EmojisPickerSheetState createState() => _EmojisPickerSheetState();
}

class _EmojisPickerSheetState extends State<EmojisPickerSheet> {
  final TextEditingController _controller = TextEditingController();
  bool emojiShowing = true;

  ///TODO: Next Step Create Functionality for selection and search bar
  _onEmojiSelected(Emoji emoji) {
    _controller
      ..text += emoji.emoji
      ..selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
  }

  _onBackspacePressed() {
    _controller
      ..text = _controller.text.characters.skipLast(1).toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 56,
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: EmojiSearchBar(),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: Offstage(
              offstage: !emojiShowing,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: EmojiPicker(
                  onEmojiSelected: (Category category, Emoji emoji) {
                    _onEmojiSelected(emoji);
                  },
                  onBackspacePressed: _onBackspacePressed,
                  // customWidget: (config, state) {
                  //value listen builder add controller and pass controller to  emoji picker valulisternerbuilder
                  //provider initiate at top of tree value notifier search string if null clear , filter emjois based on string
                  //  EMojiSearchProvide{ final emojiSearch = context.watch <EmojiSearchProvider> final controller = TextEditingController();  (*)} loading saved favorites etc..
                  // EmoiSearchTexField (TextField(controller: emojiSearch.controller, )
                  //EmojiCustomBuilderS extends statless widget (ValueListenableBuilder(value: emojiSearch.controller)
                  // create new folder

                  // return DefaultEmojiPickerView();
                  // },
                  config: Config(
                    columns: 7,
                    emojiSizeMax: 36,
                    verticalSpacing: 0,
                    horizontalSpacing: 0,
                    initCategory: Category.SMILEYS,
                    bgColor: Theme.of(context).scaffoldBackgroundColor,
                    indicatorColor: Colors.transparent,
                    iconColor: Colors.grey,
                    iconColorSelected: Theme.of(context).primaryColor,
                    progressIndicatorColor: Colors.transparent,
                    backspaceColor: Colors.grey,
                    skinToneDialogBgColor: Colors.white,
                    skinToneIndicatorColor: Colors.grey,
                    enableSkinTones: true,
                    showRecentsTab: true,
                    recentsLimit: 28,
                    noRecentsText: 'No Recents',
                    tabIndicatorAnimDuration: kTabScrollDuration,
                    categoryIcons: const CategoryIcons(),
                    buttonMode: ButtonMode.MATERIAL,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
