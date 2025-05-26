import 'package:flutter/material.dart';

class Monitoramente extends StatefulWidget {
  const Monitoramente({super.key});

  @override
  State<Monitoramente> createState() => _MonitoramenteState();
}

class _MonitoramenteState extends State<Monitoramente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF86a880), // Verde Escuro
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white), // Amarelo
        centerTitle: true,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Monitoramento',
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
          Container(
            child: Text("Temperamento"),
            decoration: BoxDecoration(),
            width: 300,
            height: 40,
          ),
          Container(
            child: Text("Umidade"),
            decoration: BoxDecoration(),
            width: 300,
            height: 40,
          ),
            Container(),
        ],
      ),
    );
  }
}
