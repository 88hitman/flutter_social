import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_social/view/my_widgets/constants.dart';

class User {

  String uid;
  String name;
  String surname;
  String imageUrl;
  List<dynamic> followers;
  List<dynamic> following;
  DocumentReference ref;
  String documentId;
  String description;

  User(DocumentSnapshot snapshot) {
    print(snapshot);
    ref = snapshot.reference;
    documentId = snapshot.documentID;
    Map<String, dynamic> map = snapshot.data;
    uid = map[keyUid];
    name = map[keyName];
    surname = map[keySurname];
    followers = map[keyFollowers];
    following = map[keyFollowing];
    imageUrl = map[keyImageUrl];
    description = map[keyDescription];
  }

  Map<String, dynamic> toMap() {
    return {
      keyUid: uid,
      keyName: name,
      keySurname: surname,
      keyFollowing: following,
      keyFollowers: followers,
      keyImageUrl: imageUrl,
      keyDescription: description
    };
  }
}