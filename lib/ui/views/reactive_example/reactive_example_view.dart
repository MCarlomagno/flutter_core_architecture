import 'package:flutter/material.dart';
import 'package:flutter_core_architecture/ui/views/reactive_example/double_increase_counter/double_increase_counter_view.dart';
import 'package:flutter_core_architecture/ui/views/reactive_example/reactive_example_view_model.dart';
import 'package:flutter_core_architecture/ui/views/reactive_example/single_increase_counter/single_increase_counter_view.dart';
import 'package:stacked/stacked.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReactiveExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SingleIncreaseCounterView(),
              SizedBox(
                width: 15,
              ),
              DoubleIncreaseCounterView(),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ReactiveExampleViewModel(),
    );
  }
}
