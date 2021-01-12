import 'package:flutter_bloc/flutter_bloc.dart';
import '../models.dart';

Map buttonsInfo = <int, int>{
  1: 0,
  2: 0,
  3: 0,
  4: 0,
  5: 0,
};

List additionally = [0, 0.00];

class BlocPage2Add extends Bloc<int, Map> {
  BlocPage2Add() : super(buttonsInfo);

  @override
  Stream<Map> mapEventToState(event) async* {
    if (event == 1) {
      if (buttonsInfo[1] < 20) {
        buttonsInfo[1] += 1;
        additionally[0] += 1;
        additionally[1] += item1['price'];
      }
    } else if (event == 2) {
      if (buttonsInfo[2] < 20) {
        buttonsInfo[2] += 1;
        additionally[0] += 1;
        additionally[1] += item2['price'];
      }
    } else if (event == 3) {
      if (buttonsInfo[3] < 20) {
        buttonsInfo[3] += 1;
        additionally[0] += 1;
        additionally[1] += item3['price'];
      }
    } else if (event == 4) {
      if (buttonsInfo[4] < 20) {
        buttonsInfo[4] += 1;
        additionally[0] += 1;
        additionally[1] += item4['price'];
      }
    } else if (event == 5) {
      if (buttonsInfo[5] < 20) {
        buttonsInfo[5] += 1;
        additionally[0] += 1;
        additionally[1] += item5['price'];
      }
    }
    yield buttonsInfo;
  }
}

class BlocPage2Del extends Bloc<int, Map> {
  BlocPage2Del() : super(buttonsInfo);

  @override
  Stream<Map> mapEventToState(event) async* {
    if (event == 1) {
      if (buttonsInfo[1] > 0) {
        buttonsInfo[1] -= 1;
        additionally[0] -= 1;
        additionally[1] -= item1['price'];
      }
    } else if (event == 2) {
      if (buttonsInfo[2] > 0) {
        buttonsInfo[2] -= 1;
        additionally[0] -= 1;
        additionally[1] -= item2['price'];
      }
    } else if (event == 3) {
      if (buttonsInfo[3] > 0) {
        buttonsInfo[3] -= 1;
        additionally[0] -= 1;
        additionally[1] -= item3['price'];
      }
    } else if (event == 4) {
      if (buttonsInfo[4] > 0) {
        buttonsInfo[4] -= 1;
        additionally[0] -= 1;
        additionally[1] -= item4['price'];
      }
    } else if (event == 5) {
      if (buttonsInfo[5] > 0) {
        buttonsInfo[5] -= 1;
        additionally[0] -= 1;
        additionally[1] -= item5['price'];
      }
    }
    if (additionally[1] < 0) {
      additionally[1] = 0;
    }
    yield buttonsInfo;
  }
}

class BlocPriceAdd extends Bloc<int, List> {
  BlocPriceAdd() : super(additionally);

  @override
  Stream<List> mapEventToState(int event) async* {
    print(additionally);
    yield additionally;
  }
}

class BlocPriceDel extends Bloc<int, List> {
  BlocPriceDel() : super(additionally);

  @override
  Stream<List> mapEventToState(int event) async* {
    print(additionally);
    yield additionally;
  }
}
