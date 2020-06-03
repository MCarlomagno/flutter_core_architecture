import 'package:flutter/material.dart';
import 'package:flutter_core_architecture/ui/views/reactive_example/double_increase_counter/double_increase_counter_view_model.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterView extends StatelessWidget {
  const DoubleIncreaseCounterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Update double"),
              Text(model.counter.toString())
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
    );
  }
}
