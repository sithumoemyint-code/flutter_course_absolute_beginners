import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:my_app/base/res/styles/app_styles.dart' show AppStyles;

class TextStyleThird extends StatelessWidget {
  final String text;

  const TextStyleThird({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
