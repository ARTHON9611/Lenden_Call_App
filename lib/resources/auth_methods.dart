
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class authMethods{
  final FirebaseAuth _Auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<bool> googleSignIn()async{
    bool res=false;
    try{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken);
    print(credential);

    UserCredential userCredential = await _Auth.signInWithCredential(credential);

    User? user = userCredential.user;
    if(user!=null){
      if(userCredential.additionalUserInfo!.isNewUser){
        await _firestore.collection('users').doc(user.uid).set({
          "username":user.displayName,
          "userid":user.uid,
          "profilephoto":user.photoURL,
        });

      }
      res= true;
      return res;
    }else{return false;}

    }catch(e){return false;}

  }
}