// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:ryderz/model/usermodel.dart';

// class GoogleSignInHelper {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();

//   Future<Userdata?> signInWithGoogle() async {
//     try {
//       // Trigger the Google Sign In flow
//       final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         // Obtain the GoogleSignInAuthentication for the user
//         final GoogleSignInAuthentication googleSignInAuthentication =
//             await googleSignInAccount.authentication;

//         // Create a new credential
//         final AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleSignInAuthentication.accessToken,
//           idToken: googleSignInAuthentication.idToken,
//         );

//         // Sign in to Firebase with the Google credentials
//         final UserCredential authResult = await _auth.signInWithCredential(credential);
//         final User? user = authResult.user;

//         if (user != null) {
// // User successfully signed in
//           log('User signed in with Google: ${user.displayName}');
//           return  Userdata(
//               id: user.uid,
//             displayName: user.displayName ?? '',
//             email: user.email ?? '',
//             photoUrl: user.photoURL ?? '',
//           );
//         } else {
// // Failed to sign in
//           log('Failed to sign in with Google');
//           return null;
//         }
//       } else {
// // Google Sign In was cancelled by the user
//         log('Google Sign In cancelled');
//         return null;
//       }
//     } catch (error) {
//       log('Error signing in with Google: $error');
//       return null;
//     }
//   }

//   Future<void> signOut() async {
//     await _auth.signOut();
//     await googleSignIn.signOut();
//     log('User signed out');
//   }

// //CURRENT LOGIN USER DETAILS
//  Future<Userdata?> getCurrentUser() async {
//     final currentUser = _auth.currentUser;
//     if (currentUser != null) {
//       return Userdata(
//         id: currentUser.uid,
//         displayName: currentUser.displayName ?? '',
//         email: currentUser.email ?? '',
//         photoUrl: currentUser.photoURL ?? '',
//       );
//     }
//     return null;
//   }

// //CHECK USER IS ALREADY LOGIN OR NOT
//    Future<bool> isUserSignedIn() async {
//     final currentUser = _auth.currentUser;
//     return currentUser != null;
//   }
// }
