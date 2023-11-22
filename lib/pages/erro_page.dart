import 'package:flutter/material.dart';

class ErroPage extends StatelessWidget{
  ErroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 208, 208, 1),
      body: SafeArea(
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'lib/images/404error.svg',
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}