import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bloc_page_2.dart';

class TotaPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: Colors.blue[50],
      child: Container(
        decoration: DottedDecoration(
          shape: Shape.box,
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: BlocBuilder<BlocPriceAdd, List>(
          builder: (context, count) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Дополнительно',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  children: [
                    Text('x${count[0]}'),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text('${count[1]} р.'),
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
