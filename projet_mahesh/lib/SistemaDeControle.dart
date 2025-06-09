import 'package:flutter/material.dart';
import 'package:projet_mahesh/ChatBot.dart';
import 'package:projet_mahesh/HomeScreen.dart';

class Sistemadecontrole extends StatefulWidget {
  const Sistemadecontrole({super.key});

  @override
  State<Sistemadecontrole> createState() => _SistemadecontroleState();
}

class _SistemadecontroleState extends State<Sistemadecontrole> {
  @override
  bool _ligado = false;

  void _mudarEstado(state) {
    setState(() {
      _ligado = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Fundo bege (mais terroso)
drawer: Drawer(
  backgroundColor: const Color(0xff84a77f), // Verde Escuro
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: const Color(0xff6b8f5d), // Tom mais escuro para contraste
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home, color: Colors.white),
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        onTap: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen()));
        },
      ),
      ListTile(
        leading: Icon(Icons.chat, color: Colors.white),
        title: Text(
          'ChatBot',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        onTap: () {
         Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatScreen()));
        },
      ),
      ListTile(
        leading: Icon(Icons.settings, color: Colors.white),
        title: Text(
          'Configurações',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        onTap: () {
          // ação ao tocar
        },
      ),
      Divider(color: Colors.white54, indent: 16, endIndent: 16),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'Versão 1.0.0',
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ),
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
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: _ligado ? Colors.green[100] : Colors.red[100],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: _ligado ? Colors.green : Colors.red,
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _ligado ? Icons.check_circle : Icons.cancel,
                      color: _ligado ? Colors.green : Colors.red,
                    ),
                    SizedBox(width: 8),
                    Text(
                      _ligado
                          ? "Estado da bomba: Ligada"
                          : "Estado da bomba: Desligada",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _ligado ? Colors.green[800] : Colors.red[800],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => _mudarEstado(true),
                    icon: Icon(Icons.power),
                    label: Text("Ligar"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: () => _mudarEstado(false),
                    icon: Icon(Icons.power_off),
                    label: Text("Desligar"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                ],
              ),
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
