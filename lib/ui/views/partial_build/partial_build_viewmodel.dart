
import 'package:stacked/stacked.dart';


class PartialBuildViewModel extends BaseViewModel {


  String _title = "StartUp widget ";
  String get title => this._title;


  void updateString(String value) {
    _title = value;
    notifyListeners();
  }
}