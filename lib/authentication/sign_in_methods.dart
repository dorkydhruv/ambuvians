import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<User?> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      return null;
    }
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    final UserCredential authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);
    final User? user = authResult.user;
    if (user != null) {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'username': user.displayName,
        'email': user.email,
        'image_url': user.photoURL
      });
    }
    return user;
  } catch (e) {
    // ignore: avoid_print
    print("Error signing in with Google: $e");
    return null;
  }
}

Future<User?> signInWithFacebook() async {
  try {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    if (loginResult.status == LoginStatus.success) {
      final AuthCredential credential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      final UserCredential authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = authResult.user;
      if (user != null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'username': user.displayName,
          'email': user.email,
          'image_url': user.photoURL
        });
      }
      return user;
    } else if (loginResult.status == LoginStatus.cancelled) {
      return null;
    } else {
      // ignore: avoid_print
      print('Error Signing in with Facebook:');
      return null;
    }
  } catch (e) {
    // ignore: avoid_print
    print('Error Signing in with Facebook: $e');
    return null;
  }
}
