import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class AuthController extends GetxController {
  //TODO: Implement AuthController

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  registerUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: emailController.text.toString(),
        password: passwordController.text.toString());

    User? user=userCredential.user;

    if(user!=null) {
      var email = emailController.text.toString();
      var name = nameController.text.toString();
      var uid = user.uid.toString();
      ModelUsers modelUsers=ModelUsers(email: email, name: name, id: uid);

      CollectionReference users=FirebaseFirestore.instance.collection("users");

      users.doc(uid).set({
        "email":email,
        "name":name,
        "id":uid,
      });

      print(user);
    }else{
      print("Error");

    }
  }

}

class ModelUsers{
  String email;
  String name;
  String id;
  ModelUsers({
    required this.email,
    required this.name,
    required this.id,
});


}
