import 'package:chat_app/constant.dart';
import 'package:chat_app/screens/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const Spacer(flex: 2,),
            Image.asset('assets/images/scholar.png'),
            const Text(
              'Scolar Chat',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const Spacer(flex: 2,),
            const Row(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const CustomTextField(
              hint: 'Email',
            ),
            const SizedBox(height: 10,),
            const CustomTextField(
              hint: 'Password',
            ),
            const SizedBox(height: 20,),
            const CustomButton(text: 'Log In',),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'don\'t have an account ? ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child:const Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Color(0XFFC7EDE6),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 3,),
          ],
        ),
      ),
    );
  }
}
