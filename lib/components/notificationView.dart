import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationView {
  static final notifications = FlutterLocalNotificationsPlugin();

  static Future notificationDetails() async {
    return const NotificationDetails(
      android: AndroidNotificationDetails('channel id', 'channel name',
          channelDescription: 'channel description',
          importance: Importance.max),
      //iOS: IOSFlutterLocalNotificationsPlugin(),
    );
  }

  static Future showNotification(
      {int id = 0, String? title, String? body, String? payload}) async {
    notifications.show(
      id,
      title,
      body,
      await notificationDetails(),
      payload: payload,
    );
  }
}
