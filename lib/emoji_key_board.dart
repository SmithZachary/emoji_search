import 'package:flutter/material.dart';

import 'emojis_picker_sheet.dart';

class EmojiKeyBoard extends StatelessWidget {
  const EmojiKeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      heightFactor: 0.75,
      child: EmojisPickerSheet(),
    );
  }
}
