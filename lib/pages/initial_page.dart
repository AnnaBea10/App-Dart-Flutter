import 'package:flutter/material.dart';
import 'package:flutter_application/components/my_textfield.dart';

class InitialPage extends StatefulWidget {
  InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int _selectedIndex = 0;
  final searchController = TextEditingController();

  // Lista de widgets das telas do aplicativo
  final List<Widget> _pages = [
    HomeChat(),
  ];

  // Método chamado quando um item da barra de navegação é selecionado
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Barra de pesquisa'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(47, 47, 47, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}