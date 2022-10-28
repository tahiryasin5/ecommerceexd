import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class SignUpView extends GetView<AuthController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SigninView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: TextFormField(
              controller: controller.nameController,
              decoration: const InputDecoration(
                hintText: "Name",
              ),

            ),
          ),
          Center(
            child: TextFormField(
             controller: controller.emailController,
              decoration: const InputDecoration(
                hintText: "Email",
              ),

            ),
          ),
          Center(
            child: TextFormField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                hintText: "Password",
              ),

            ),
          ),
          ElevatedButton(onPressed: (){
            controller.registerUser();
          }, child: const Text("Save"))
        ],
      ),
    );
  }
}
