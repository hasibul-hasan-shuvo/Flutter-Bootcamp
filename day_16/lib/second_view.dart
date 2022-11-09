import 'package:day_16/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterClass data = Get.arguments;

    return Container(
      color: Colors.green,
      child: Center(
        child: Text(
          data.counter.toString(),
        ),
      ),
    );
  }
}
