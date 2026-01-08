
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class NotificationService {
static Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {}
void requestPErmissionToUser(){}
}