import 'package:antony_913/pages/home_page.dart';
import 'package:antony_913/widget/custom_snackbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController pswdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

   buildBody(){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Placeholder(fallbackHeight: 150,),
            const SizedBox(height: 32,),
            TextField(
              controller: userController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
                prefixIcon: Icon(Icons.person_outline, size: 20,),
              ),
            ),
            const SizedBox(height: 32,),
            TextField(
              controller: pswdController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
                prefixIcon: Icon(Icons.key_outlined, size: 20,),
              ),
            ),
            const SizedBox(height: 32,),
            ElevatedButton(onPressed: onPressed,
                style: ElevatedButton.styleFrom(primary: const Color(0xFFE81F7C)),
                child:
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child:  Text(
                    'Entrar com a conta Hurb',
                    style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed(){
    String userDigitado = userController.text;
    String pswdDigitado = pswdController.text;

    String user = "asa@gmail.com";
    String senha = "asagigante";

    if(userDigitado == user && senha == pswdDigitado){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context){
                return const HomePage();
              },
          ),
      );
      final snack = Utils.customSnackBar(context, 'Login correto');

      ScaffoldMessenger.of(context).showSnackBar(snack);

    } else {
      final snack = Utils.customSnackBar(context, 'Senha ou usuário incorreto');
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }

  }
}
