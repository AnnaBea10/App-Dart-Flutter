import 'package:flutter/material.dart';
import 'package:flutter_application/components/my_button.dart';
import 'package:flutter_application/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 47, 47, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                'Olá amigo(a)!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              
              Text(
                'Bom te ver novamente!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
             
              const SizedBox(height: 50),
              
              MyTextField(
                controller: usernameController,
                hintText: 'Nome',
                obscureText: true,
              ),

              const SizedBox(height: 10),
              
              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),
              
              const SizedBox(height: 10),
              
              MyButton(
                onTap: signUserIn,
              ),
              
              const SizedBox(height: 50),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    
                    const SizedBox(height: 50),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text(
                          'Ainda não possui uma conta?',
                          style: TextStyle(color: Colors.white),
                        ),
                        
                        const SizedBox(width: 4),
                        
                        const Text(
                          'Crie uma conta',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
