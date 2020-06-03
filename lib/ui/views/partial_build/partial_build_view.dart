import 'package:flutter/material.dart';
import 'package:flutter_core_architecture/ui/views/partial_build/partial_build_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildView extends StatelessWidget {
  const PartialBuildView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildViewModel>.nonReactive(
      builder: (context, model, child) {
        print("PartialView rebuilt");
        return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _StringInput(),
              _TitleText(),
            ],
          ),
        ),
      );
      },
      viewModelBuilder: () => PartialBuildViewModel(),
    );
  }
}


class _StringInput extends HookViewModelWidget<PartialBuildViewModel> {
  _StringInput({Key key}) : super(key: key, reactive: false);


  @override
  Widget buildViewModelWidget(BuildContext context, PartialBuildViewModel model) {
    var text = TextEditingController();
    print("_string input rebuilt");
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}

class _TitleText extends ViewModelWidget<PartialBuildViewModel> {
  _TitleText({Key key}) : super(key: key, reactive: true);


  @override
  Widget build(BuildContext context, PartialBuildViewModel model) {
    print("_TitleText rebuilt");
    return Text(model.title?? '');
  }
}
