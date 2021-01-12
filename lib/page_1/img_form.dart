import 'package:flutter/material.dart';
import '../bloc/bloc_page_1.dart';

class ImageFormField extends StatefulWidget {
  @override
  _ImageFormFieldState createState() => _ImageFormFieldState();
}

class _ImageFormFieldState extends State<ImageFormField> {
  UrlBloc bloc = UrlBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  validate(value) {
    try {
      bool _validURL = Uri.parse(value).isAbsolute;
      if (_validURL != true) {
        throw 'error';
      }
      ;
      // ignore: dead_code
      bloc.inputEventSink.add(value);
      return false;
    } catch (n) {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width - 150,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'URL картинки',
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Пожалуйста введите URL.';
          } else if (validate(value)) {
            return 'Введите корректный URL.';
          }
          return null;
        },
      ),
    );
  }
}
