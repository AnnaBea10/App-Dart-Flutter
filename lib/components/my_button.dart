import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding : const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 203, 116, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Color.fromRGBO(47, 47, 47, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}