import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_competition/data/models/user/user_model.dart';
import 'package:flutter_competition/router/app_routes.dart';

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firebaseFireStore;

  AuthRepository({
    required this.auth,
    required this.firebaseFireStore,
  });

  Future<String> signUp(
      {required String email,
      required String password,
      required fcmToken,
      required String name}) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      UserModel newUser = UserModel(
          age: 0,
          userId: '',
          docId: '',
          fullName: name,
          email: email,
          createdAt: DateTime.now().toString(),
          imageUrl: '',
          fcmToken: fcmToken);
      var signedUser =
          await firebaseFireStore.collection("users").add(newUser.toJson());
      await firebaseFireStore
          .collection("users")
          .doc(signedUser.id)
          .update({"userId": signedUser.id});
      await localSource.setUserId(signedUser.id);

      return "Registered Successfully";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  Future<String> signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      var user = await firebaseFireStore
          .collection("users")
          .where("email", isEqualTo: email)
          .get();
      // await localSource.setUserId(user.docs[0]["userId"]);
      debugPrint("Uid: ${user.docs[0]["userId"]}");
      return "Welcome";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  Stream<User?> authState() async* {
    yield* auth.authStateChanges();
  }
}
