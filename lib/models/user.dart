import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String profilePhoto;
  String email;
  String uid;

  User({
    required this.name,
    required this.email,
    required this.uid,
    required this.profilePhoto,
  });

  Map<String, dynamic> toJson() =>
      {"name": name, "email": email, "uid": uid, "profilePhoto": profilePhoto};

  static User fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;
    return User(
        name: snapShot['name'],
        email: snapShot['email'],
        uid: snapShot['uid'],
        profilePhoto: snapShot['profilePhoto']);
  }
}
