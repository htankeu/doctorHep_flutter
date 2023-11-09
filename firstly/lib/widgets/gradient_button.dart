import 'package:firstly/tools/pallete.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget{
  final String text;
  final void Function()? action;
  const GradientButton({
    Key? key,
    required this.text,
    this.action,
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Pallete.gradient1Blue,
            Pallete.gradient2,
            Pallete.gradient3
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(290, 50),
        backgroundColor: Pallete.transparenceColor1,
        shadowColor: Pallete.transparenceColor1
      ), 
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      )),
    );
  }
}