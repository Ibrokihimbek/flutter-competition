import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_competition/firebase_options.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

late AndroidNotificationChannel channel;
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
InitializationSettings initializationSettings = const InitializationSettings(
  android: AndroidInitializationSettings('@mipmap/ic_launcher'),
  iOS: DarwinInitializationSettings(),
);

Future<void> notificationInitialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    if (kDebugMode) {
      final String? fcmToken = await FirebaseMessaging.instance.getToken();
      debugPrint('FCM TOKEN $fcmToken');
    }
    await setupFlutterNotifications();
    foregroundNotification();
    backgroundNotification();
    await terminateNotification();
  }

  Future<void> setupFlutterNotifications() async {
    if (Platform.isIOS) {
      await FirebaseMessaging.instance.requestPermission(announcement: true);
    }
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description:
          'This channel is used for important notifications.', // description
      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void showFlutterNotification(RemoteMessage message) {
    final RemoteNotification? notification = message.notification;
    if (message.data.isNotEmpty && !kIsWeb) {
      debugPrint('MESSAGE KRELDII ${message.data['type']}');
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        message.data['title'],
        message.data['body'],
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            icon: '@mipmap/ic_launcher',
            priority: Priority.high,
            importance: Importance.high,
            visibility: NotificationVisibility.public,
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
      );
    }
  }

  void foregroundNotification() {
    FirebaseMessaging.onMessage.listen(showFlutterNotification);

    ///When tapped
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (response) async {
      debugPrint('foreground notification tapped');
      debugPrint('$response');
    });
  }

  void backgroundNotification() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint('A new onMessageOpenedApp event was published!');
      showFlutterNotification(message);
    });
  }

  Future<void> terminateNotification() async {
    final RemoteMessage? remoteMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (remoteMessage == null) {
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
    } else {
      showFlutterNotification(remoteMessage);
    }
  }


@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  await setupFlutterNotifications();
  showFlutterNotification(message);
}
