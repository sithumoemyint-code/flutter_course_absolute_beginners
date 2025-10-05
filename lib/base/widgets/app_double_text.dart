import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart' show AppStyles;

class AppDoubleText extends StatefulWidget {
  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText,
  });

  final String bigText;
  final String smallText;

  @override
  State<AppDoubleText> createState() => _AppDoubleTextState();
}

class _AppDoubleTextState extends State<AppDoubleText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: () {
            print("You are tapped");
          },
          child: Text(
            widget.smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
