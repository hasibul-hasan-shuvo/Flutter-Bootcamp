import 'package:day_07/app/core/values/app_values.dart';
import 'package:day_07/app/core/values/text_styles.dart';
import 'package:day_07/app/modules/home/widgets/item_company_details.dart';
import 'package:flutter/material.dart';

class BiographyAndExperienceView extends StatelessWidget {
  BiographyAndExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _getTitle("Biography"),
        const SizedBox(height: AppValues.margin),
        _getBiography(),
        const SizedBox(height: AppValues.margin),
        _getTitle("Experience"),
        const SizedBox(height: AppValues.margin),
        ItemCompanyDetails(),
      ],
    );
  }

  Widget _getTitle(String title) {
    return Text(
      title,
      style: title_01,
    );
  }

  Widget _getBiography() {
    return Text(
      "Enthusiastic, self-motivated and responsible subject matter expert in mobile app development with three years’ experience in developing, improving app performance and maintaining existing applications. Have excellent analytic skills and good knowledge of Object-Oriented Programming and developing architecture.",
      style: body_01,
      textAlign: TextAlign.justify,
    );
  }
}
