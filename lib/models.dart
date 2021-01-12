import 'package:flutter/cupertino.dart';

import 'page_2/items_to_column.dart';
import 'bloc/bloc_page_1.dart';

toState(state) {
  List<Widget> modelsToPrint = [];
  modelsToPrint.add(Items(item1['text'], item1['price'], item1['id'], state));
  modelsToPrint.add(Items(item2['text'], item2['price'], item2['id'], state));
  modelsToPrint.add(Items(item3['text'], item3['price'], item3['id'], state));
  modelsToPrint.add(Items(item4['text'], item4['price'], item4['id'], state));
  modelsToPrint.add(Items(item5['text'], item5['price'], item5['id'], state));
  modelsToPrint = modelsToPrint.sublist(0, items);
  return modelsToPrint;
}

Map item1 = {
  'text': 'Компьютеры',
  'price': 5,
  'id': 1,
};

Map item2 = {
  'text': 'Телефоны',
  'price': 10,
  'id': 2,
};

Map item3 = {
  'text': 'Ноутбуки',
  'price': 15,
  'id': 3,
};

Map item4 = {
  'text': 'Планшеты',
  'price': 20,
  'id': 4,
};

Map item5 = {
  'text': 'Наушники',
  'price': 25,
  'id': 5,
};
