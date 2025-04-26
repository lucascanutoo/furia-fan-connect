import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController favPlayerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Idade'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: cityController,
                decoration: InputDecoration(labelText: 'Cidade'),
              ),
              TextFormField(
                controller: favPlayerController,
                decoration: InputDecoration(labelText: 'Jogador favorito da FURIA'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/quiz');
                  }
                },
                child: Text('Continuar para o Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}