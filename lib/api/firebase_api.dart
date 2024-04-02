import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
  String? title = message.notification!.title;
  String? body = message.notification!.body;
  AwesomeNotifications().createNotification(
      content: NotificationContent(
          autoDismissible: false,
          id: 1234,
          channelKey: 'call_channel',
          color: Colors.white,
          title: title,
          body: body,
          category: NotificationCategory.Call),
      actionButtons: [
        NotificationActionButton(
            key: "ACCEPT",
            label: "Accept Call",
            color: Colors.green,
            autoDismissible: true),
        NotificationActionButton(
            key: "REJECT",
            label: "Reject Call",
            color: Colors.red,
            autoDismissible: true)
      ]);

}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print("Token: $fCMToken");
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}
