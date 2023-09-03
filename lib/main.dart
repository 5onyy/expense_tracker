import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'expenses.dart';

var gColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 130, 240, 134));

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]).then((fn) {
    runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: gColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: gColorScheme.onPrimaryContainer,
        foregroundColor: gColorScheme.primaryContainer,
      ),
      cardTheme: CardTheme().copyWith(
        color: gColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 15,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: gColorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: gColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
    ),
    home: const Expenses(),
  ));
  });
}
