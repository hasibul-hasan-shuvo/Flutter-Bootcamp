import 'package:day_18_database_multiple_table/app/modules/home/model/student_list_item_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ItemStudentListWidget extends StatelessWidget {
  final StudentListItemUiModel data;

  const ItemStudentListWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Logger().d("Item tapped: ${data.name}"),
      onDoubleTap: () => Logger().d("Item double tapped: ${data.name}"),
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        decoration: _getItemDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getNameView(),
            _getEmailView(),
          ],
        ),
      ),
    );
  }

  Widget _getNameView() {
    return Text(data.name);
  }

  Widget _getEmailView() {
    return Text(data.email);
  }

  BoxDecoration _getItemDecoration() {
    return BoxDecoration(
      border: Border.all(width: 1.0),
      borderRadius: BorderRadius.circular(5.0),
    );
  }
}
