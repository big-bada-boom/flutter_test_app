import 'package:flutter/material.dart';
import '../bloc/bloc_page_1.dart';

class IntFormField extends StatefulWidget {
  @override
  _IntFormFieldState createState() => _IntFormFieldState();
}

class _IntFormFieldState extends State<IntFormField> {
  validate(value) {
    try {
      int.parse(value);
      bloc.inputEventSink.add(value);
      return false;
    } catch (FormatException) {
      return true;
    }
  }

  ItemBloc bloc = ItemBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width - 150,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Целое число',
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Пожалуйста введите число.';
          } else if (validate(value)) {
            return 'Введите целое число.';
          }
          return null;
        },
      ),
    );
  }
}
