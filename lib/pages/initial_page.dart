import 'package:flutter/material.dart';
import 'package:flutter_application/components/my_textfield.dart';

class InitialPage extends StatelessWidget{
  InitialPage ({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 47, 47, 1),
       appBar: AppBar(
        title: Text('Barra de pesquisa'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              //Lógica 
          }
        ),
      ],
     ),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
            
              MyTextField(
                controller: searchController,
                hintText: 'Qual serviço você procura hoje?',
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
