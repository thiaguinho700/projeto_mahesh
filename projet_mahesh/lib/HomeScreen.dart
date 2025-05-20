import 'package:flutter/material.dart';
import 'package:projet_mahesh/ChatBot.dart';
import 'package:projet_mahesh/SistemaDeControle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Column(
        children: [
          SizedBox(height: 30),
          _DashboardButton(
              icon: Icons.analytics_outlined,
              label: 'Monitoramento',
              onTap: () {}),
          SizedBox(height: 30),
          _DashboardButton(
              icon: Icons.settings_remote_outlined,
              label: 'Sistema de controle',
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Sistemadecontrole()))),
          SizedBox(height: 30),
          _DashboardButton(
              icon: Icons.smart_toy_outlined, label: 'Chatbot', onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
              }),
        ],
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

class _DashboardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DashboardButton(
      {required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 5,
        color: Colors.green[100],
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.brown,
                size: 40,
              ),
              SizedBox(width: 16),
              Text(
                label,
                style: TextStyle(fontSize: 18, color: Colors.brown), // Amarelo
              ),
            ],
          ),
        ),
      ),
    );
  }
}
