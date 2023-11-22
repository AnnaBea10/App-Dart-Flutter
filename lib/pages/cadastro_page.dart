import 'package:flutter/material.dart';
import 'package:flutter_application/components/my_button.dart';
import 'package:flutter_application/components/my_textfield.dart';

class CadastroPage extends StatelessWidget{
  CadastroPage ({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
   void signUserUp() {

  String email = emailController.text.trim();
  String username = usernameController.text.trim();
  String password = passwordController.text.trim();

  if (email.isEmpty || username.isEmpty || password.isEmpty) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Erro'),
        content: Text('Por favor, preencha todos os campos.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
    return;
  }

  // Implemente sua lógica de autenticação aqui (pode ser uma chamada a uma API, autenticação no Firebase, etc.)
  // Simulando uma autenticação bem-sucedida neste exemplo
  bool authSuccess = true;

  if (authSuccess) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),    
      );
  } else {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Erro de Autenticação'),
        content: Text('Credenciais inválidas. Por favor, tente novamente.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
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
                'Seja bem-vindo(a)!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              
              Text(
                'Cadastre-se e mantenhe-se conectado com a gente!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
              
              SizedBox(height: 50),
              
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: true,
              ),
              
              const SizedBox(height: 10),
              
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
                onTap: signUserUp,
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
                          'Já possui uma conta? Faça Login',
                          style: TextStyle(color: Colors.white),
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


