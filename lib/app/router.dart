import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_core_architecture/ui/views/home/home_view.dart';
import 'package:flutter_core_architecture/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  StartupView startupViewRoute;
  HomeView homeViewRoute;
}