import 'package:day_07/app/core/values/app_values.dart';
import 'package:day_07/app/core/widgets/title_view.dart';
import 'package:day_07/app/modules/home/widgets/item_skill.dart';
import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        TitleView(title: "Skills"),
        SizedBox(height: AppValues.margin_12),
        ItemSkill(title: "Flutter", rate: 9),
        SizedBox(height: AppValues.margin),
        ItemSkill(title: "Kotlin", rate: 9),
        SizedBox(height: AppValues.margin),
        ItemSkill(title: "Java", rate: 7),
        SizedBox(height: AppValues.margin),
        ItemSkill(title: "C++", rate: 9),
      ],
    );
  }
}
