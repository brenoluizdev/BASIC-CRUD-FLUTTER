import 'package:flutter/material.dart';
import 'package:flutter_crud/components/notify.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/usersProvider.dart';
import 'package:provider/provider.dart';

class UserForm extends StatelessWidget {
  UserForm({super.key});

  final _form = GlobalKey<FormState>();
  final Map<String, String?> _formData = {}; // Allow nullable values

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar usuário"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              if (_form.currentState!.validate()) {
                _form.currentState!.save();

                Provider.of<Users>(context, listen: false).put(User(
                  id: _formData['id'] ?? '',
                  name: _formData['name'] ?? '',
                  email: _formData['email'] ?? '',
                  avatarUrl: _formData['avatarUrl'] ?? '',
                ));

                Navigator.of(context).pop();
                Notify.show(context, 'Usuário criado com sucesso!');
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira um nome.';
                  }
                  return null;
                },
                onSaved: (value) => _formData['name'] = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira um email.';
                  }
                  return null;
                },
                onSaved: (value) => _formData['email'] = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'URL do Avatar'),
                validator: (value) {
                  /* if (value == null || value.isEmpty) {
                    return 'Por favor, insira a URL do Avatar.';
                  } */
                  return null;
                },
                onSaved: (value) => _formData['avatarUrl'] = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
