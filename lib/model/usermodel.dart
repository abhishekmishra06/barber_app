class Userdata {
  final String id;
  final String displayName;
  final String email;
  final String photoUrl;

  Userdata({
    required this.id,
    required this.displayName,
    required this.email,
    required this.photoUrl,
  });

  factory Userdata.fromGoogleSignIn(Map<String, dynamic> googleSignInData) {
    return Userdata(
      id: googleSignInData['id'],
      displayName: googleSignInData['displayName'],
      email: googleSignInData['email'],
      photoUrl: googleSignInData['photoUrl'],
    );
  }
}
