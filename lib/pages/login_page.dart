import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                const Placeholder(fallbackHeight: 180),
                const SizedBox(height: 48),
                TextFormField(
                  controller: userController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo e-mail obrigatório';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo senha obrigatório';
                    } else if (value.length < 6) {
                      return 'Campo senha deve conter no mínimo 6 digitos';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 48),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFE81F7C),
                  ),
                  onPressed: onPressed,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Entrar com o Hurb',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {

      String userLogin = "joao@gmail.com";
      String passwordLogin = "123456";

      String user = userController.text;
      String pwd = passwordController.text;

      if (userLogin == user && passwordLogin == pwd) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login incorreto')));
      }

    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Formulário inválido')));
    }
  }
}

