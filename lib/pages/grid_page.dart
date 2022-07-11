import 'package:antony_913/widget/pacote_turistico_card1.dart';

import '../domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class GridPacotes extends StatefulWidget {
  const GridPacotes({Key? key}) : super(key: key);

  @override
  State<GridPacotes> createState() => _GridPacotesState();
}

class _GridPacotesState extends State<GridPacotes> {
  List<PacoteTuristico>? lista;

  Future<List<PacoteTuristico>> getValues() async {
    await Future.delayed(const Duration(seconds: 10));
    lista = [
      PacoteTuristico(
        imagem:
        'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
        titulo: 'Pacote Cancún 2022/2023',
        transporte: 'Aéreo - Hotel All inclusive',
        cidade: 'CANCÚN, MEX',
        validade: 'De 01 ago 2022 até 30 set 2023',
        numDiarias: 5,
        numPessoas: 2,
        numParcelas: 6,
        desconto: 45,
        precoAntigo: 6819,
        precoAtual: 2819,
      ),
      PacoteTuristico(
        imagem:
        'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
        titulo: 'Pacote Maragogi 2023',
        transporte: 'Hotel All inclusive',
        cidade: 'MARAGOGI, BRA',
        validade: 'De 01 ago 2022 até 30 set 2023',
        numDiarias: 7,
        numPessoas: 3,
        numParcelas: 12,
        desconto: 30,
        precoAntigo: 4819,
        precoAtual: 819,
      ),
      PacoteTuristico(
        imagem:
        'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
        titulo: 'Pacote Maragogi 2023',
        transporte: 'Hotel All inclusive',
        cidade: 'MARAGOGI, BRA',
        validade: 'De 01 ago 2022 até 30 set 2023',
        numDiarias: 7,
        numPessoas: 3,
        numParcelas: 12,
        desconto: 30,
        precoAntigo: 4819,
        precoAtual: 819,
      ),
      PacoteTuristico(
        imagem:
        'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
        titulo: 'Pacote Maragogi 2023',
        transporte: 'Hotel All inclusive',
        cidade: 'MARAGOGI, BRA',
        validade: 'De 01 ago 2022 até 30 set 2023',
        numDiarias: 7,
        numPessoas: 3,
        numParcelas: 12,
        desconto: 30,
        precoAntigo: 4819,
        precoAtual: 819,
      ),
      PacoteTuristico(
        imagem:
        'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
        titulo: 'Pacote Maragogi 2023',
        transporte: 'Hotel All inclusive',
        cidade: 'MARAGOGI, BRA',
        validade: 'De 01 ago 2022 até 30 set 2023',
        numDiarias: 7,
        numPessoas: 3,
        numParcelas: 12,
        desconto: 30,
        precoAntigo: 4819,
        precoAtual: 819,
      ),
      PacoteTuristico(
        imagem:
        'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
        titulo: 'Pacote Maragogi 2023',
        transporte: 'Hotel All inclusive',
        cidade: 'MARAGOGI, BRA',
        validade: 'De 01 ago 2022 até 30 set 2023',
        numDiarias: 7,
        numPessoas: 3,
        numParcelas: 12,
        desconto: 30,
        precoAntigo: 4819,
        precoAtual: 819,
      ),
    ];
    return lista ?? [];
  }


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: FutureBuilder<List<PacoteTuristico>>(
        future: getValues(),
          builder: (context, snapshot){
          if (snapshot.hasData){
            List<PacoteTuristico> l = snapshot.data ?? [];

            return Padding(padding: const EdgeInsets.all(8.0),
            child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 2,
            childAspectRatio: 0.36,
            ),
            children: [
            CardPacoteTuristico(pacoteTuristico: l[0]),
            CardPacoteTuristico(pacoteTuristico: l[1]),
            CardPacoteTuristico(pacoteTuristico: l[2]),
            CardPacoteTuristico(pacoteTuristico: l[3]),
            CardPacoteTuristico(pacoteTuristico: l[4]),
            CardPacoteTuristico(pacoteTuristico: l[5]),
            ],
            ),
            );
          }
          return const Center(child: CircularProgressIndicator());
          }
      ),
    );
  }
}
