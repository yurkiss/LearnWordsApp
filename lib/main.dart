import 'package:flutter/material.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/application.dart';


void main() {
  configureDependencies();
  runApp(const DebugApplication());
}

