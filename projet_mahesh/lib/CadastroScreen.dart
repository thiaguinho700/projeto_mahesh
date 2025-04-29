import 'package:flutter/material.dart';

class Cadastroscreen extends StatefulWidget {
  const Cadastroscreen({super.key});

  @override
  State<Cadastroscreen> createState() => _CadastroscreenState();
}

class _CadastroscreenState extends State<Cadastroscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF86a880),
        appBar: AppBar(
          backgroundColor: const Color(0xFF86a880),
          leading: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/image/logoWhite.png',
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            // MediaQuery(data: data, child: child)
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Text("Cadastro"),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Nome",
                          labelText: "Digite seu nome",
                          icon: Icon(Icons.person)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          labelText: "Digite seu email",
                          icon: Icon(Icons.email)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Senha",
                          labelText: "Digite sua senha",
                          icon: Icon(Icons.lock)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF86a880),
                          
                          ),
                    ),
                    Text("Já tem conta? Faça o login")
                  ],
                ),
                width: double.infinity,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(90))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
