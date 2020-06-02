import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel {

  String _title = "Counter: ";
  String get title => this._title;

  int _counter = 0;
  int get counter => _counter;


  /**
   * when incrementCounter is called from the view the method increases the counter and 
   * [notifyListeners] function rebuilds the view so the changes are updated on ui
   */
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}