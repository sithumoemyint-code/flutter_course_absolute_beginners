import 'package:flutter/material.dart';
import 'package:my_app/base/widgets/text_style_fourth.dart'
    show TextStyleFourth;
import 'package:my_app/base/widgets/text_style_third.dart' show TextStyleThird;

class AppColumTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;

  const AppColumTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(height: 5),
        TextStyleFourth(text: bottomText),
      ],
    );
  }
}
