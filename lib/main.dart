import 'package:flutter/material.dart';

void main() => runApp(VotacaoApp());

class VotacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: VotacaoPage());
  }
}

class VotacaoPage extends StatefulWidget {
  @override
  State<VotacaoPage> createState() => _VotacaoPageState();
}

class _VotacaoPageState extends State<VotacaoPage> {
  int contadorGato = 0;
  int contadorCao = 0;

  // Função para determinar o vencedor
  String getWinnerMessage() {
    if (contadorCao > contadorGato) {
      return 'Cachorros estão vencendo!';
    } else if (contadorGato > contadorCao) {
      return 'Gatos estão vencendo!';
    } else {
      return 'A votação está empatada!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simulador de Votação")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '🐱 Gatos: $contadorGato   🐶 Cachorros: $contadorCao',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 16),
            Text(
              "Resultado",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Text(
              getWinnerMessage(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: incrementCat, child: Text("Votar em Gatos")),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: incrementDog,
                  child: Text("Votar em Cachorros"),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text("Resetar Votação"),
            ),
          ],
        ),
      ),
    );
  }

  // Função para incrementar o contador de votos de gatos
  void incrementCat() {
    setState(() {
      contadorGato++;
    });
  }

  // Função para incrementar o contador de votos de cachorros
  void incrementDog() {
    setState(() {
      contadorCao++;
    });
  }

  // Função para resetar os contadores
  void reset() {
    setState(() {
      contadorCao = 0;
      contadorGato = 0;
    });
  }
}
