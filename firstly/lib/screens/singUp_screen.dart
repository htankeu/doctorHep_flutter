import 'dart:ffi';

import 'package:firstly/tools/pallete.dart';
import 'package:firstly/widgets/gradient_button.dart';
import 'package:firstly/widgets/linkText.dart';
import 'package:firstly/widgets/input_field.dart';
import 'package:firstly/widgets/social_button.dart';
import 'package:flutter/material.dart';


class SingUpScreen extends StatelessWidget {
  final void Function()? onTap;
  const SingUpScreen({
    Key? key,
    this.onTap,
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
            Image.asset('assets/images/logo.png',height: 100,),
            const Text(
              'Sing Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Pallete.blackColor
              ),
            ),
            const SizedBox(height: 50,),
            SocialButton(iconPath: 'assets/svgs/icons8-google.svg', label: 'Continue with Google',onPressed: (){},),
            const SizedBox(height: 10,),
            SocialButton(iconPath: 'assets/svgs/icons8-facebook.svg', label: 'Continue with Facebook', horizontalPadding: 93, onPressed: (){},),
            const SizedBox(height: 15,),
            const Text(
              'or',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 15,),
            const InputField(hinText: 'Username',hintextColor: Pallete.blackColorfloat, iconName: Icons.people_alt,),
            const SizedBox(height: 15,),
            const InputField(hinText: 'Email',hintextColor: Pallete.blackColorfloat, iconName: Icons.mail_rounded,),
            const SizedBox(height: 15,),
            const InputField(hinText: 'Password',hintextColor: Pallete.blackColorfloat, iconName: Icons.lock,),
            const SizedBox(height: 15,),
            const InputField(hinText: 'Confirm password',hintextColor: Pallete.blackColorfloat, iconName: Icons.password,suffixIconName: Icons.remove_red_eye_sharp,),
            const SizedBox(height: 20,),
            const GradientButton(text: 'Sing Up',),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 5),
                  child: Text(
                    "Already have a Account?",
                    style: TextStyle(color: Pallete.blackColor),
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: const LinkText(outputText: 'Sing in here!'),
                ),
              ],
            ),
            const SizedBox(height: 12,)
          ]) ,
          ) 
        ),
    ) ;
  }
}