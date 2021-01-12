import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bloc_page_1.dart';
import '../bloc/bloc_page_2.dart';

// ignore: must_be_immutable
class Items extends StatelessWidget {
  String text;
  int price;
  int id;
  var state;

  Items(this.text, this.price, this.id, this.state);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BlocPage2Add>(create: (context) => BlocPage2Add()),
        BlocProvider<BlocPage2Del>(create: (context) => BlocPage2Del()),
      ],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            fit: BoxFit.fill,
            width: 50,
            height: 50,
            image: CachedNetworkImageProvider(url),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(this.text),
            width: MediaQuery.of(context).size.width - 260,
          ),
          Buttons(id, price, state),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '+${this.price} р.',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Buttons extends StatefulWidget {
  var state;
  int id;
  int price;
  Buttons(this.id, this.price, this.state);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final BlocPage2Add blocPage2add = BlocProvider.of<BlocPage2Add>(context);
    // ignore: close_sinks
    final BlocPage2Del blocPage2del = BlocProvider.of<BlocPage2Del>(context);
    // ignore: close_sinks
    final BlocPriceAdd blocPriceAdd = BlocProvider.of<BlocPriceAdd>(context);
    // ignore: close_sinks
    final BlocPriceDel blocPriceDel = BlocProvider.of<BlocPriceDel>(context);

    return Container(
      margin: EdgeInsets.only(bottom: 6, top: 6),
      width: 110,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          BlocBuilder<BlocPage2Del, Map>(
            builder: (context, count) {
              return Positioned(
                left: 35,
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 30,
                  color: Colors.blue[50],
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(count[widget.id].toString()),
                ),
              );
            },
          ),
          Positioned(
            left: 62,
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              mini: true,
              onPressed: () {
                setState(
                  () {
                    blocPage2add.add(widget.id);
                    blocPriceAdd.add(widget.price);
                    widget.state();
                  },
                );
              },
              child: Icon(Icons.add),
            ),
          ),
          Positioned(
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.blue[50],
              foregroundColor: Colors.black,
              mini: true,
              onPressed: () {
                setState(
                  () {
                    blocPage2del.add(widget.id);
                    blocPriceDel.add(widget.price);
                    widget.state();
                  },
                );
              },
              child: Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
