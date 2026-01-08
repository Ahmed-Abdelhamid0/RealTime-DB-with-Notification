import 'package:firebase_database/firebase_database.dart';
import 'package:realtime_ex/app_base/core/realtime_db/domain/service/realtime_db_service.dart';

class RealtimeDBImp extends RealtimeDBService {
  @override
  void createNewRef() {
    dbref.ref.child('users/user1').set({
      'ID': 1,
      'Name': 'Ahmed',
      'Age': 26,
      'position': 'Flutter Developer',
    });

    dbref.ref.child('users/user2').set({
      'ID': 2,
      'Name': 'Omar',
      'Age': 25,
      'position': 'Web Developer',
    });

    dbref.ref.child('users/user3').set({
      'ID': 3,
      'Name': 'Ali',
      'Age': 24,
      'position': 'AI Developer',
    });
  }

  @override
  void getDatafromDatabase() {
    dbref.ref.child('users/user1').get().then((DataSnapshot val) {
      final data = val.value.toString();
      print(data);
    });
  }

  @override
  void updateData() {
    dbref.ref.child('users/user2').update({'Name': 'Mohammed'});
  }

  @override
  void removeData() {
    dbref.ref.child('users/user3').remove();
  }
}
