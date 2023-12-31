import 'package:firstly/screens/chat_login.dart';
import 'package:firstly/screens/singUp_screen.dart';
import 'package:flutter/material.dart';

class LogInOrRegister extends StatefulWidget {
 const LogInOrRegister({ Key? key }) : super(key: key);

@override
_logInOrRegisterState createState() => _logInOrRegisterState();
}

class _logInOrRegisterState extends State<LogInOrRegister>{
  // initially show login page
bool showLoginPage = false;

// toogle between login and register page
void tooglePages(){
  setState((){
    showLoginPage = !showLoginPage;
  });
}

  @override
  Widget build(BuildContext context){
    if(showLoginPage){
      return ChatLogin(onTap: tooglePages,);
    }
    else{
      return SingUpScreen(onTap: tooglePages,);
    }
  }
}

