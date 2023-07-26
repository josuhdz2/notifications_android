import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin notificationPlugin=FlutterLocalNotificationsPlugin();
Future<void> initNotifications() async{
  const AndroidInitializationSettings initialConfig=AndroidInitializationSettings('app_icon');
  const InitializationSettings initializationSettings=InitializationSettings(android: initialConfig);
  await notificationPlugin.initialize(initializationSettings);
}
Future<void> lanzarNotificacion(mensaje) async{
  const AndroidNotificationDetails androidDetails=AndroidNotificationDetails('channel_id', 'channel_name');
  const NotificationDetails notificationDetails=NotificationDetails(android: androidDetails);
  await notificationPlugin.show(1, "Mensaje de aplicacion", mensaje, notificationDetails);
}