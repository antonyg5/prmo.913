import 'package:antony_913/pages/home_page.dart';
import 'package:antony_913/widget/custom_snackbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
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
        child: Form(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              const Placeholder(fallbackHeight: 150,),
              const SizedBox(height: 32,),
              TextFormField(
                controller: userController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Campo de E-mail obrigatório';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                  prefixIcon: Icon(Icons.mail_outline_outlined, size: 20, color: Colors.grey,),
                ),
              ),
              const SizedBox(height: 32,),
              TextFormField(
                controller: pswdController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Campo de Senha obrigatório';
                  } else if (value.length < 8) {
                    return 'Senha deve conter 8 dígitos';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.lock_outline, size: 20, color: Colors.grey,),
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
      ),
    );
  }

  void onPressed(){
    if(_formKey.currentState!.validate()) {
      String userDigitado = userController.text;
      String pswdDigitado = pswdController.text;

      String user = "asa@gmail.com";
      String senha = "asagigante";

      if (userDigitado == user && senha == pswdDigitado) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
        final snack = Utils.customSnackBar(context, 'Login correto');

        ScaffoldMessenger.of(context).showSnackBar(snack);
      } else {
        final snack = Utils.customSnackBar(
            context, 'Erro na validação');
        ScaffoldMessenger.of(context).showSnackBar(snack);
      }
    }

  }
}
