import 'package:flutter/material.dart';

class InputsScreens extends StatefulWidget {
  const InputsScreens({super.key});

  @override
  State<InputsScreens> createState() => _InputsScreensState();
}

class _InputsScreensState extends State<InputsScreens> {
  String _userName = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          _crearEntradaPassword(),
        ],
      ),
    );
  }

  Widget _crearEntradaNombre() {
    return TextField(
        autofocus: true,
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.sentences,
        style:const TextStyle(
          color: Colors.amberAccent,
          fontWeight: FontWeight.bold
        ),
        cursorColor: Colors.red,
        cursorRadius: const Radius.circular(10.0),
        cursorWidth: 5.0,
        maxLines: null,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          hintText: "Escriba su nombre de usuario",
          labelText: ('User'),
          icon :const Icon(Icons.person),
          iconColor: Colors.blueGrey,
          //prefix: const CircularProgressIndicator(),
        ),
        onChanged: (valor) {
          _userName = valor;
          print(_userName);
        }
        );
  }

  Widget _crearEntradaPassword() {
    return TextField(
        autofocus: true,
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.sentences,
        style:const TextStyle(
          color: Colors.amberAccent,
          fontWeight: FontWeight.bold
        ),
        cursorColor: Colors.red,
        cursorRadius: const Radius.circular(10.0),
        cursorWidth: 5.0,
        maxLength: 8,
        obscureText: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          hintText: "Escriba su password",
          labelText: ('Password'),
          icon :const Icon(Icons.password),
          iconColor: Colors.blueGrey,
          //prefix: const CircularProgressIndicator(),
        ),
        onChanged: (valor) {
          _userName = valor;
          print(_password);
        }
        );
  }
}