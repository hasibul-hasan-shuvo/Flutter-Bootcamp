import 'package:day_07/app/core/values/app_images.dart';
import 'package:day_07/app/core/values/app_values.dart';
import 'package:day_07/app/core/values/text_styles.dart';
import 'package:flutter/material.dart';

class ItemCompanyDetails extends StatelessWidget {
  ItemCompanyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getCompanyLogo(),
        const SizedBox(width: AppValues.margin),
        _getDetails(),
      ],
    );
  }

  Widget _getCompanyLogo() {
    return Image.asset(
      AppImages.brainStation,
      width: AppValues.companyLogoWidth,
    );
  }

  Widget _getDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getCompanyName(),
          const SizedBox(height: AppValues.margin_5),
          _getDesignation(),
          const SizedBox(height: AppValues.margin_5),
          _getExperienceTime(),
        ],
      ),
    );
  }

  Widget _getCompanyName() {
    return Text(
      "Brain Station 23 LTD",
      style: subtitle_01,
    );
  }

  Widget _getDesignation() {
    return const Text(
      "Software Engineer",
      style: body_01,
    );
  }

  Widget _getExperienceTime() {
    return const Text(
      "march, 2021 - Continuing",
      style: hintText,
    );
  }
}
