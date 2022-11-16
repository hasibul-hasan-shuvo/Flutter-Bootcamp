import 'package:day_16/home/controller/home_controller.dart';
import 'package:day_16/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterClass {
  int counter;
  CounterClass(this.counter);
}

class HomeView extends StatelessWidget {
  // final HomeController controller = Get.find(tag: "SettingsViewController");
  // final PreferenceManager preferenceManager = PreferenceManagerImpl();
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                "${controller.counter}",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                Routes.SECOND,
                arguments: CounterClass(controller.counter),
              ),
              child: Text("Go to second page"),
            ),
          ],
        ),
      ),
      floatingActionButton:
          _getFloatingActionButtons(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getFloatingActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _getDecrementFloatingButton(),
        const SizedBox(width: 20),
        _getIncrementFloatingButton(),
      ],
    );
  }

  Widget _getDecrementFloatingButton() {
    return FloatingActionButton(
      onPressed: controller.decrementCounter,
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    );
  }

  Widget _getIncrementFloatingButton() {
    return FloatingActionButton(
      onPressed: controller.incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
