import 'package:flutter/material.dart';

class ProfileQuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz de Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Qual é seu estilo de fã da FURIA?',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Responder Quiz'),
              onPressed: () {
                Navigator.pushNamed(context, '/result');
              },
            ),
          ],
        ),
      ),
    );
  }
}