import '../domain/pacote_turistico.dart';

class BD {
  static List<PacoteTuristico> lista = [
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
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWMlQfD_SY0QvvEqAj2tHxRA3vO29ps6gOEA&usqp=CAU',
  titulo: 'Pacote Catar 2022',
  transporte: 'Hotel All inclusive',
  cidade: 'DOHA, CATAR',
  validade: 'De 01 nov 2022 até 30 nov 2022',
  numDiarias: 25,
  numPessoas: 2,
  numParcelas: 12,
  desconto: 30,
  precoAntigo: 48519,
  precoAtual: 29819,
  ),
  PacoteTuristico(
  imagem:
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEz6DRg8U_eOVsFDbqzUuumkAwOYmdTtN85w&usqp=CAU',
  titulo: 'Pacote Salvador 2023',
  transporte: 'Hotel All inclusive',
  cidade: 'SALVADOR, BRA',
  validade: 'De 07 fev 2023 até 12 fev 2023',
  numDiarias: 6,
  numPessoas: 1,
  numParcelas: 12,
  desconto: 25,
  precoAntigo: 6000,
  precoAtual: 4500,
  ),
  PacoteTuristico(
  imagem:
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6IUJBmaHlyt93F2bH55XQ7pMP7mMAAtLqmw&usqp=CAU',
  titulo: 'Pacote Rio de Janeiro 2023',
  transporte: 'Hotel All inclusive',
  cidade: 'RIO DE JANEIRO, BRA',
  validade: 'De 01 ago 2023 até 30 set 2023',
  numDiarias: 5,
  numPessoas: 3,
  numParcelas: 12,
  desconto: 30,
  precoAntigo: 8819,
  precoAtual: 5819,
  ),
  PacoteTuristico(
  imagem:
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHBxBMpJpeQKCPyiuSF2CsYEL9VkZf2voHmg&usqp=CAU',
  titulo: 'Pacote Final Libertadores 2023',
  transporte: 'Hotel All inclusive',
  cidade: 'GUAYAQUIL, ECU',
  validade: 'De 27 out 2022 até 30 out 2022',
  numDiarias: 4,
  numPessoas: 1,
  numParcelas: 12,
  desconto: 10,
  precoAntigo: 2019,
  precoAtual: 1981,
  ),
  ];

  static Future <List<PacoteTuristico>> getValues() async {
    await Future.delayed(const Duration(seconds: 10));
    return lista;
  }
}
