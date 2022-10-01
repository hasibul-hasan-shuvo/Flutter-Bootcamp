import 'package:day_07/app/core/values/text_styles.dart';
import 'package:flutter/material.dart';

class TitleView extends StatelessWidget {
  final String title;
  const TitleView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: title_01,
    );
  }
}
