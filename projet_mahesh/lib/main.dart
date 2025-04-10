import 'package:projet_mahesh/tela2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Cria variáveis para armazenar o usuário e a senha
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();

  // Função para verificar o login
  _verificalogin() {
    if (user.text == "Senai" && senha.text == "2025") {
      // Chama a segunda tela
      Navigator.push(context, MaterialPageRoute(builder: (context) => Tela2()));
    } else {
      // Exibe uma mensagem de erro caso o login seja incorreto
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login incorreto"),
          duration: Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF86a880), // Cor de fundo da tela
      body: Center(
        child: SingleChildScrollView( // Adiciona um scroll caso o teclado apareça
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container para a logo
              Container(
                width: 200,
                height: 200,
                color: const Color(0xFFFFFCF7),
                child: Image.asset('assets/image/logo.jpeg', fit: BoxFit.fill),
              ),
              
              SizedBox(height: 20),

              // Container para os campos de login
              Container(
                padding: EdgeInsets.all(16), // Espaçamento interno
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFCF7), // Cor de fundo do Container
                  borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      offset: Offset(1, 1), // Sombra suave
                    ),
                  ],
                ),
                width: 250, // Largura do Container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Campo de texto para o usuário
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Digite seu usuário",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: user,
                    ),
                    SizedBox(height: 20), // Espaçamento entre os campos
                    // Campo de texto para a senha
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 4, // Limita o número de caracteres
                      decoration: InputDecoration(
                        labelText: "Digite sua senha",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                      controller: senha,
                      onSubmitted: (value) => _verificalogin(),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20), // Espaçamento entre o Container e o botão
              
              // Botão de login
              ElevatedButton(
                onPressed: _verificalogin,
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
