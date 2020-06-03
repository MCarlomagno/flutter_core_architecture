
import 'package:flutter_core_architecture/app/locator.dart';
import 'package:flutter_core_architecture/services/counter_service.dart';
import 'package:stacked/stacked.dart';


class DoubleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;


  void updateCounter() {
    _counterService.doubleIncrementCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}