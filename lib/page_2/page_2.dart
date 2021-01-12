import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_app/page_2/total_price.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../bloc/bloc_page_1.dart';
import '../bloc/bloc_page_2.dart';
import '../models.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BlocPriceAdd>(create: (context) => BlocPriceAdd()),
        BlocProvider<BlocPriceDel>(create: (context) => BlocPriceDel()),
      ],
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: Container(
            child: ListView(
              children: [
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: url,
                    placeholder: (context, url) => Container(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.only(right: 100),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Произвольный текст как заголовок',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                WidgetToState(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetToState extends StatefulWidget {
  @override
  _WidgetToStateState createState() => _WidgetToStateState();
}

class _WidgetToStateState extends State<WidgetToState> {
  state() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          margin: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.blueGrey[50].withOpacity(0.8),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 14),
                alignment: Alignment.topLeft,
                child: Text(
                  'Дополнительно',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Column(
                children: toState(state),
              )
            ],
          ),
        ),
        TotaPrice(),
      ],
    );
  }
}
