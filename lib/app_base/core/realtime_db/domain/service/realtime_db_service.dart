import 'package:firebase_database/firebase_database.dart';

abstract class RealtimeDBService{
  DatabaseReference dbref = FirebaseDatabase.instance.ref();
  //Create Reference from firebase and integrate it with dbref to can update , delete , get ,....

void createNewRef(){}
void getDatafromDatabase(){}
void updateData(){}
void removeData(){}
}
