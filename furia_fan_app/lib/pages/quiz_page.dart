import 'package:flutter/material.dart';

class ProfileQuizPage extends StatefulWidget {
  @override
  _ProfileQuizPageState createState() => _ProfileQuizPageState();
}

class _ProfileQuizPageState extends State<ProfileQuizPage> {
  int currentQuestion = 0;
  List<String> answers = [];

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Qual seu jogador favorito da FURIA?',
      'options': ['KSCERATO', 'yuurih', 'arT', 'chelo', 'fallen']
    },
    {
      'question': 'Você prefere partidas:',
      'options': ['Rápidas e agressivas', 'Estratégicas e controladas', 'Mix dos dois estilos']
    },
    {
      'question': 'Qual tipo de conteúdo você mais gosta?',
      'options': ['Jogadas incríveis', 'Memes e zoeiras', 'Bastidores do time', 'Análises táticas']
    },
    {
      'question': 'Você já assistiu algum campeonato presencial da FURIA?',
      'options': ['Sim', 'Não']
    },
    {
      'question': 'Que tipo de evento você mais gostaria de participar?',
      'options': ['Meet & Greet com jogadores', 'Torneios online entre fãs', 'Eventos presenciais']
    },
    {
      'question': 'De qual jogo você mais acompanha a FURIA?',
      'options': ['CS2', 'Valorant', 'Rainbow Six', 'Todos']
    },
  ];

  void selectAnswer(String answer) {
    setState(() {
      answers.add(answer);
      if (currentQuestion < questions.length - 1) {
        currentQuestion++;
      } else {
        Navigator.pushReplacementNamed(
          context,
          '/result',
          arguments: answers,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz de Perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentQuestion]['question'],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ...questions[currentQuestion]['options'].map<Widget>((option) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => selectAnswer(option),
                  child: Text(option),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900],
                    foregroundColor: Colors.yellowAccent,
                    side: BorderSide(color: Colors.yellowAccent),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}