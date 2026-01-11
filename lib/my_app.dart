import 'package:flutter/material.dart';
import 'package:realtime_ex/app_base/core/realtime_db/data/services/notification_service_impl.dart';
import 'package:realtime_ex/app_features/feature_one/presentation/screens/home_screen.dart';

class RealTimeDatabaseWithFCM extends StatefulWidget {
  const RealTimeDatabaseWithFCM({super.key});

  @override
  State<RealTimeDatabaseWithFCM> createState() => _RealTimeDatabaseWithFCMState();
}

class _RealTimeDatabaseWithFCMState extends State<RealTimeDatabaseWithFCM> {


  @override
  void initState() {
    super.initState();
    NotificationServiceImpl userPermissionRequest = NotificationServiceImpl();
    userPermissionRequest.requestPermissionToUser();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
