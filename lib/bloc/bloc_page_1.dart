import 'dart:async';

String url;
int items;

class UrlBloc {
  final _inputEventController = StreamController<String>();

  StreamSink<String> get inputEventSink => _inputEventController.sink;

  void _mapEventToState(String event) {
    url = event;
  }

  UrlBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
  }
}

class ItemBloc {
  final _inputEventController = StreamController<String>();

  StreamSink<String> get inputEventSink => _inputEventController.sink;

  void _mapEventToState(String event) {
    items = int.parse(event);
  }

  ItemBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
  }
}
