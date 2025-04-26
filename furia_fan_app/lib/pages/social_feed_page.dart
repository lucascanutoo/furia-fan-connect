import 'package:flutter/material.dart';

class SocialFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feed da FURIA')),
      body: Center(
        child: Text(
          'Conteúdo social da FURIA: fanarts, memes, vídeos e mais!',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}