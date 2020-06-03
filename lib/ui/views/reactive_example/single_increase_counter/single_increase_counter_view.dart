import 'package:flutter/material.dart';
import 'package:flutter_core_architecture/ui/views/reactive_example/single_increase_counter/single_increase_counter_view_model.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounterView extends StatelessWidget {
  const SingleIncreaseCounterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Update single"),
              Text(model.counter.toString())
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SingleIncreaseCounterViewModel(),
    );
  }
}
