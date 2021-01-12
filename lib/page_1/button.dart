import 'package:flutter/material.dart';
import 'package:flutter_test_app/page_2/page_2.dart';

class MyButton extends StatelessWidget {
  LabeledGlobalKey<FormState> _formKey;
  MyButton(this._formKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        color: Colors.blue,
        onPressed: () {
          if (_formKey.currentState.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page2(),
              ),
            );
          }
        },
        child: Text(
          'Enter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
