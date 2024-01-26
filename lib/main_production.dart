import 'package:care_book/care_book_app.dart';
import 'package:care_book/core/di/dependency_injection.dart';
import 'package:care_book/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  //To fix texts being hidden bug in flutter_screen_utils package in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(
    CareBookApp(
      appRouter: AppRouter(),
    ),
  );
}
