import 'package:flutter/material.dart';
import 'package:flutter_crud/components/notify.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/usersProvider.dart';
import 'package:provider/provider.dart';

class UserEditForm extends StatelessWidget {
  UserEditForm({super.key});

  final _form = GlobalKey<FormState>();
  final Map<String, String?> _formData = {};

  void _loadFormData(User user) {
    // ignore: unnecessary_null_comparison
    if (user != null) {
      _formData['id'] = user.id;
      _formData['name'] = user.name;
      _formData['email'] = user.email;
      _formData['avatarUrl'] = user.avatarUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;

    _loadFormData(user);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar usuário"),
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
                Notify.show(context, 'Usuário editado com sucesso!');
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
                initialValue: _formData['name'],
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
                initialValue: _formData['email'],
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
                initialValue: _formData['avatarUrl'],
                decoration: const InputDecoration(labelText: 'URL do Avatar'),
                validator: (value) {
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
