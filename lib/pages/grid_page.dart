import 'package:antony_913/widget/pacote_turistico_card1.dart';
import '../data/BD.dart';
import '../data/pacoteDAO.dart';
import '../domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class GridPacotes extends StatefulWidget {
  const GridPacotes({Key? key}) : super(key: key);

  @override
  State<GridPacotes> createState() => _GridPacotesState();
}

class _GridPacotesState extends State<GridPacotes> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: FutureBuilder<List<PacoteTuristico>>(
        future: PacoteDao().listarPacotes(),
          builder: (context, snapshot){
          if (snapshot.hasData){
            List<PacoteTuristico> lista = snapshot.data ?? [];

            return Padding(padding: const EdgeInsets.all(8.0),
            child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 2,
            childAspectRatio: 0.36,
            ),
            itemCount: lista.length,
              itemBuilder: (context, index){
              return CardPacoteTuristico(pacoteTuristico: lista[index],);
              },
            ),
            );
          }
          return const Center(child: CircularProgressIndicator());
          }
      ),
    );
  }
}
