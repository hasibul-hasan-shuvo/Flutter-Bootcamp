import 'package:day_07/app/core/widgets/title_view.dart';
import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        TitleView(title: "Skills"),
      ],
    );
  }
}
