import 'package:flutter/material.dart';

class Sistemadecontrole extends StatefulWidget {
  const Sistemadecontrole({super.key});

  @override
  State<Sistemadecontrole> createState() => _SistemadecontroleState();
}

class _SistemadecontroleState extends State<Sistemadecontrole> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Fundo bege (mais terroso)
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xff84a77f), // Verde Escuro
              ),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(title: Text('Opção 1')),
            ListTile(title: Text('Opção 2')),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF86a880), // Verde Escuro
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white), // Amarelo
        centerTitle: true,
        title: Row(
          children: [
            Image.asset('assets/image/logo.jpeg', height: 40),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Mahesh Tech',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Colors.brown[100], // Marrom claro
              child: Icon(Icons.person,
                  color: const Color(0xFF86a880)), // Verde Escuro
            )
          ],
        ),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Ligar")),
              ElevatedButton(onPressed: (){}, child: Text("Desligar")),
             ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.white, // Amarelo
        backgroundColor: const Color(0xFF86a880), // Verde Escuro
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}