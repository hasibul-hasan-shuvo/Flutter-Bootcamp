import 'package:day_07/app/core/values/app_colors.dart';
import 'package:day_07/app/core/values/app_images.dart';
import 'package:day_07/app/core/values/app_values.dart';
import 'package:day_07/app/core/values/text_styles.dart';
import 'package:flutter/material.dart';

class InformationView extends StatelessWidget {
  InformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getMyImage(),
        const SizedBox(width: AppValues.margin),
        _getInformation(),
      ],
    );
  }

  Widget _getMyImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppValues.radius_10),
      child: Image.asset(
        AppImages.myImage,
        width: AppValues.myImageWidth,
        height: AppValues.myImageHeight,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _getInformation() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getName(),
          const SizedBox(height: AppValues.margin_5),
          _getDesignation(),
          const SizedBox(height: AppValues.margin_5),
          _getEmailWithIcon(),
        ],
      ),
    );
  }

  Widget _getName() {
    return const Text(
      "MD Hasibul Hasan Shuvo",
      style: title_02,
    );
  }

  Widget _getDesignation() {
    return const Text(
      "Software Engineer",
      style: body_01,
    );
  }

  Widget _getEmailWithIcon() {
    return Row(
      children: [
        _getEmailIcon(),
        const SizedBox(width: AppValues.margin_5),
        _getEmail(),
      ],
    );
  }

  Widget _getEmailIcon() {
    return const Icon(
      Icons.email_outlined,
      color: AppColors.colorPrimary,
      size: AppValues.iconSize_14,
    );
  }

  Widget _getEmail() {
    return const Text(
      "shovocse753@gmail.com",
      style: body_02,
    );
  }
}
