import 'package:antony_913/domain/pacote_turistico.dart';
import 'package:antony_913/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PacoteDetalhes extends StatefulWidget{
  final PacoteTuristico pacoteTuristico;

  const PacoteDetalhes({Key? key, required this.pacoteTuristico})
      : super(key: key);

  @override
  _PacoteDetalhesState createState() => _PacoteDetalhesState();
}
class _PacoteDetalhesState extends State<PacoteDetalhes> {
  PacoteTuristico get pacote => widget.pacoteTuristico;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: buildBody(),
    );
  }

  buildBody(){
    return ListView(
      children: [
        Image.network(pacote.imagem),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pacote.cidade, style:
              const TextStyle(
                fontSize: (20),
              ),
              ),
              const SizedBox(height: 8),
              Text(pacote.titulo, style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 16),
              Text(pacote.transporte),
              const SizedBox(height: 16),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        children: [
                          const Icon(Icons.wb_sunny_outlined),
                          const SizedBox(width: 8),
                          Text('${pacote.numDiarias} diárias',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]
                    ),
                    Container(
                      color: const Color(0xFFFD6C00),
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      child: Text('-${pacote.desconto}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text ('Válido até:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text ('${pacote.validade}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'A partir de R\$6.908,00',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text('R\$${pacote.precoAtual}',
                        style:
                        const TextStyle(
                          color: Color(0xFFFD6C00),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('O que está incluso',
                    style:
                    TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.done_outlined, color: Color(0xFF3FDA3C)),
                      Text('Cancelamento Grátis',
                        style: TextStyle(
                          color: Color(0xFF3FDA3C),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children:const [
                      Icon(Icons.done_outlined,),
                      SizedBox(height: 16),
                      Text('Apartamento', style:
                      TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                  ),
                  Column(
                    children:const [
                      Icon(Icons.restaurant_menu_outlined,),
                      SizedBox(height: 16),
                      Text('All Inclusive', style:
                      TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                  ),
                  Column(
                    children:const [
                      Icon(Icons.flight_takeoff_outlined,),
                      const SizedBox(height: 16),
                      Text('Passagem Aérea', style:
                      TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Oferta Especial', style:
                  TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text('Mais Saídas', style:
                  TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE81F7C),
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    child:
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: const Text('Escolher opção', style: TextStyle(color: Colors.white,),),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFE81F7C)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
