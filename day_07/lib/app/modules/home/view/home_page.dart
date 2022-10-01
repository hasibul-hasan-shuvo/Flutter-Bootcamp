import 'package:day_07/app/core/values/app_colors.dart';
import 'package:day_07/app/core/values/app_values.dart';
import 'package:day_07/app/modules/home/widgets/information_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.pageBackground,
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppValues.margin),
      child: Column(
        children: [
          const SizedBox(height: AppValues.margin),
          InformationView(),
          const SizedBox(height: AppValues.margin_5),
          _getDivider(),
        ],
      ),
    );
  }

  Widget _getDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppValues.margin),
      child: const Divider(
        color: AppColors.colorPrimary,
        thickness: AppValues.dividerThickness,
      ),
    );
  }
}
