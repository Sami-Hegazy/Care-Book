import 'package:care_book/care_book_app.dart';
import 'package:care_book/core/di/dependency_injection.dart';
import 'package:care_book/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(CareBookApp(
    appRouter: AppRouter(),
  ));
}
