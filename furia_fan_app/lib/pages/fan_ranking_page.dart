import 'package:flutter/material.dart';

class FanRankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ranking de Super Fãs')),
      body: Center(
        child: Text(
          'Aqui vai o ranking dos fãs mais engajados da FURIA!',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}