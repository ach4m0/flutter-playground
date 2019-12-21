import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {

  InputDecoration inputDecoration;
  TextStyle style;

  DatePicker({Key key, this.inputDecoration, this.style}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState(inputDecoration: this.inputDecoration, style: style);
}

class _DatePickerState extends State<DatePicker> {

  InputDecoration inputDecoration;
  TextStyle style;

  _DatePickerState({this.inputDecoration, this.style});

  String _dateTime;
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _dateController,
      decoration: inputDecoration,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      style: style,
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      locale: Locale('es', 'ES')
    );
    if(picked != null) {
      setState(() {
        _dateTime = picked.toString();
        _dateController.text = _dateTime;
      });
    }
  }
}