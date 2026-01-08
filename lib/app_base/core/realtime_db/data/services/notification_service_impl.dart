import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:realtime_ex/app_base/core/realtime_db/domain/service/notification_service.dart';

class NotificationServiceImpl extends NotificationService{
  @override
  void requestPErmissionToUser() async{
   FirebaseMessaging messaging = FirebaseMessaging.instance;
   NotificationSettings settings = await messaging.requestPermission(
     alert: true,
      badge: true,
      carPlay: false,
      sound: true,
      criticalAlert: false,
      announcement: false,
      provisional: false,
   );
    if(settings.authorizationStatus==AuthorizationStatus.authorized){
      print('User Accept Permission');
    } else {
      print('User Denied Permission');
    }

   FirebaseMessaging.onMessage.listen((RemoteMessage message){
    print(message.notification?.title);
    print(message.notification?.body);
   });

  }
}