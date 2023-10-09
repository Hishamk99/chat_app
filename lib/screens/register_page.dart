import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'RegisterPage';

  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 75,
              ),
              Image.asset(
                'assets/images/scholar.png',
                height: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Scolar Chat',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              const Row(
                children: [
                  Text(
                    'REGISTER',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                onChanged: (data) {
                  email = data;
                },
                hint: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  password = data;
                },
                hint: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      await registerUser();
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(context, 'weak password');
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBar(context,
                            'The account already exists for that email.');
                      }
                    } catch (e) {
                      showSnackBar(context, 'Error');
                    }
                    showSnackBar(context, 'Success');
                  }
                  else{
                    
                  }
                },
                text: 'REGISTER',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'already have an account ? ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        color: Color(0XFFC7EDE6),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  Future<UserCredential> registerUser() async {
    var auth = FirebaseAuth.instance;
    UserCredential userCredential = await registerUser();
    return auth.createUserWithEmailAndPassword(
        email: email!, password: password!);
  }
}
