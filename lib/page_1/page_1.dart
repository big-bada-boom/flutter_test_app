import 'package:flutter/material.dart';
import 'package:flutter_test_app/page_1/button.dart';
import 'package:flutter_test_app/page_1/img_form.dart';
import 'package:flutter_test_app/page_1/int_form.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.height - 280,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageFormField(),
                IntFormField(),
                MyButton(_formKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
