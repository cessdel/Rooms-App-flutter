import 'package:firebase_database/firebase_database.dart';

DatabaseReference ref = FirebaseDatabase.instance.ref("Room/");

class Values {
  Stream<String> streamValues(String sensor) {
    return ref.child('Realtime').child(sensor).onValue.map((event) {
      final String value = event.snapshot.value.toString();
      return value;
    });
  }
}
