import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/screens/home.dart';
import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: Colors.white.createMaterialColor(),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light()
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
