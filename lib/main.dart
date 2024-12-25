import 'package:flutter/widgets.dart';
import 'package:reaeeman/bootstrap.dart';
import 'package:reaeeman/core/model/environment.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  return lazyBootstrap(widgetsBinding, Environment.dev);
}
