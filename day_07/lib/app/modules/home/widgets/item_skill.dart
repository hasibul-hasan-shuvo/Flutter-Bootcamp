import 'package:day_07/app/core/values/app_colors.dart';
import 'package:day_07/app/core/values/app_values.dart';
import 'package:day_07/app/core/values/text_styles.dart';
import 'package:flutter/material.dart';

class ItemSkill extends StatelessWidget {
  final String title;
  final int rate;

  const ItemSkill({
    Key? key,
    required this.title,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppValues.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getTitleWithRateValue(),
          const SizedBox(height: AppValues.margin_5),
          _getRateProgressView(),
        ],
      ),
    );
  }

  Widget _getTitleWithRateValue() {
    return Text(
      "$title ($rate/10)",
      style: subtitle_01,
    );
  }

  Widget _getRateProgressView() {
    return Row(
      children: [
        _getActiveProgress(),
        _getInActiveProgress(),
      ],
    );
  }

  Widget _getActiveProgress() {
    return Flexible(
      flex: rate,
      child: Container(
        height: AppValues.iconSize_5,
        color: AppColors.colorPrimary,
      ),
    );
  }

  Widget _getInActiveProgress() {
    return Flexible(
      flex: 10 - rate,
      child: Container(
        height: AppValues.iconSize_5,
        color: AppColors.colorInActiveProgress,
      ),
    );
  }
}
