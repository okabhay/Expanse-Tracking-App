import 'package:flutter/material.dart';

class NominalForm extends StatefulWidget {
  const NominalForm({ Key? key }) : super(key: key);

  @override
  _NominalFormState createState() => _NominalFormState();
}

class _NominalFormState extends State<NominalForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Transaction'),
        centerTitle: true,
      ),
    );
  }
}