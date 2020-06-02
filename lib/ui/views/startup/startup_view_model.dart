import 'package:flutter_core_architecture/app/locator.dart';
import 'package:flutter_core_architecture/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class StartupViewModel extends BaseViewModel {

  final NavigationService _navigationService = locator<NavigationService>();

  String _title = "StartUp widget ";
  String get title => this._title;


  void navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeViewRoute);
  }
}