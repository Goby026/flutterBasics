import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {  

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

String _nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _creaInput(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _creaInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras 0'),
        hintText: 'Nombres',
        labelText: 'Nombre',
        helperText: 'Solo nombres',
        suffix: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona(){
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}