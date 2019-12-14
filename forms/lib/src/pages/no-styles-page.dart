import 'package:flutter/material.dart';
import 'package:forms/src/widgets/date-picker.dart';

class NoStylesPage extends StatelessWidget {
  
  const NoStylesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sin validaciones'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            _getDefaultFields(context),
          ],
        ),
      )
    );
  }

  Widget _getDefaultFields(BuildContext context) {
    return Column( children: [
      TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: 'Nombre',
          hintText: 'Nombre'
        ),
      ),
      TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Edad',
          hintText: 'Edad',
        ),
      ),
      TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: 'Teléfono',
          hintText: 'Teléfono',
        ),
      ),
      DatePicker(),
      TextField(
        maxLines: 4,
        decoration: InputDecoration(
          labelText: 'Descripcion',
          hintText: 'Escribe aquí la descripcion'
        ),
      ),
      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Email',
          suffixIcon: Icon(Icons.alternate_email)
        ),
      ),
      TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_open),
          hintText: 'Password',
          labelText: 'Password',
          helperText: 'La password debe contener 8 caracteres',
          counterText: 'Caracteres: 0'
        ),
        obscureText: true,
      )
    ]);
  }

}