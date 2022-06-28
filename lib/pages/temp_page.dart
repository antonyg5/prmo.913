import 'package:flutter/material.dart';
class TemporariaPage extends StatefulWidget {
  const TemporariaPage({Key? key}) : super(key: key);

  @override
  State<TemporariaPage> createState() => _TemporariaPageState();
}

class _TemporariaPageState extends State<TemporariaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Temporária'),),
    );
  }
}
