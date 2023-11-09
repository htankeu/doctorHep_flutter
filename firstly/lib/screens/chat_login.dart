import 'package:firstly/widgets/gradient_button.dart';
import 'package:firstly/widgets/input_field.dart';
import 'package:firstly/tools/pallete.dart';
import 'package:flutter/material.dart';

class ChatLogin extends StatelessWidget {
  final void Function()? onTap;
const ChatLogin({
   Key? key,
   this.onTap 
   }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //logo
              const Icon(
          Icons.message_rounded,
          size: 80,
          color: Colors.blueGrey,
          ),
          const SizedBox(height: 10,),
          // text welcome
          const Text(
            "Welcome to our chat-Option.",
            style: TextStyle(
              fontSize: 16,
              color: Pallete.whiteColor,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 15,),
          // image to decribe
          Image.asset("assets/images/phone_with.png", width: 250,),
          const SizedBox(height: 15,),
          // Phonefield
          const InputField(hinText: 'Phone nummer',hintextColor: Pallete.blackColorfloat, iconName: Icons.phone_android,iconColor: Pallete.whiteColor,),
          const SizedBox(height: 18,),
          const GradientButton(text: 'Validate a number',)
            ]
            ),
        )
        ),
    );
  }
}