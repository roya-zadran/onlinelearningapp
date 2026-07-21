import 'package:flutter/material.dart';
import 'package:onlinelearningapp/data/constants.dart';
import 'package:onlinelearningapp/data/notifier.dart';

class MiniRowButtonWidget extends StatelessWidget {
  final String myText;

  final int myValue;

  const MiniRowButtonWidget({
    super.key,
    required this.myText,
    required this.myValue,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: textButtonColorChangeNotifier,
        builder: (context, onTap, child) {
          return TextButton(
            onPressed: () {
              textButtonColorChangeNotifier.value = myValue;
            },
            style: onTap == myValue
                ? RowButtons.kEnabledButtonStyle
                : RowButtons.kUnabledButtonStyle,
            child: Text(
              myText,
              style: onTap == myValue
                  ? RowButtons.kEnabledTextColor
                  : RowButtons.kUnabledTextColor,
            ),
          );
        },
      ),
    );
  }
}
