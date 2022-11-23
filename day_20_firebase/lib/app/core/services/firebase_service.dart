import 'package:day_20_firebase/app/core/services/notification_service.dart';
import 'package:day_20_firebase/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';

class FirebaseService {
  static Future<FirebaseApp> enableFirebase() {
    return Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ).then((FirebaseApp app) async {
      FirebaseAnalytics.instanceFor(app: app);
      FirebaseAnalytics.instance.logEvent(name: "Firebase Initialized");
      Logger().i("Firebase initialized");
      await _configurePushNotification();
      configureBackgroundPushNotification();

      return app;
    });
  }

  static Future<void> _configurePushNotification() async {
    FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Logger().d("Foreground notification: ${message.notification?.title}");
      NotificationService notificationService = NotificationService();

      notificationService.pushNotification(message);
    });
  }
}

void configureBackgroundPushNotification() {
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) {
  Logger().d("Background Notification: ${message.notification?.title}");
  return Future.value();
}
