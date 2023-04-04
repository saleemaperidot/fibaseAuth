import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  final CollectionReference brewCollection =
      FirebaseFirestore.instance.collection("brew");

  Future UpdateUserData(String sugars, String name, int strength) async {
    return await brewCollection
        .doc(uid)
        .set({'sugars': sugars, 'name': name, 'stregth': strength});
  }
}