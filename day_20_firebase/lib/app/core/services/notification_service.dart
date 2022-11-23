import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _localNotification =
      FlutterLocalNotificationsPlugin();

  static late NotificationDetails platformChannelSpecifics;

  NotificationService() {
    try {
      AndroidNotificationDetails androidNotificationDetails =
          const AndroidNotificationDetails(
        "day_20",
        "day_20",
        importance: Importance.high,
      );
      DarwinNotificationDetails iosNotificationDetails =
          const DarwinNotificationDetails();

      platformChannelSpecifics = NotificationDetails(
        android: androidNotificationDetails,
        iOS: iosNotificationDetails,
      );

      _localNotification.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings("@drawable/ic_launcher"),
          iOS: DarwinInitializationSettings(),
        ),
      );
    } catch (e) {
      Logger().e("Notification exception: $e");
    }
  }

  Future<void> pushNotification(RemoteMessage message) async {
    try {
      String title = message.notification?.title ?? "Default title";
      String body = message.notification?.body ?? "Default body";

      await _localNotification.show(
        1000,
        title,
        body,
        platformChannelSpecifics,
      );
    } catch (e) {
      Logger().e("Push Notification exception: $e");
    }
  }
}
