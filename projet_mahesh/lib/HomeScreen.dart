import 'package:flutter/material.dart';
import 'package:projet_mahesh/ChatBot.dart';
import 'package:projet_mahesh/MonitoramentoPage.dart';
import 'package:projet_mahesh/SistemaDeControle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Image.asset('assets/image/logoMahesh.png', height: 40),
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
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Monitoramentopage()))),
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
              icon: Icons.smart_toy_outlined,
              label: 'Chatbot',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
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
