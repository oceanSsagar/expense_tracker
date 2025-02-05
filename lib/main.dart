import "package:flutter/material.dart";
import "package:expense_tracker/widgets/expenses.dart";
// import "package:flutter/services.dart";

final kColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    tertiary: Colors.black,
    seedColor: const Color.fromARGB(255, 0, 242, 255));

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  tertiary: Colors.white,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.secondary,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primary,
              foregroundColor: kDarkColorScheme.onPrimary),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
            
            color: kColorScheme.secondary,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5)),
        textTheme: TextTheme().copyWith(
          bodyLarge: TextStyle(color: kColorScheme.tertiary),
          displayLarge: TextStyle(color: kColorScheme.tertiary),
          displayMedium: TextStyle(color: kColorScheme.tertiary),
          labelMedium: TextStyle(color: kColorScheme.tertiary),
          displaySmall: TextStyle(color: kColorScheme.tertiary),
          bodyMedium: TextStyle(color: kColorScheme.tertiary),
          titleLarge: TextStyle(color: kColorScheme.onSecondary, fontSize: 24),
          titleMedium: TextStyle(color: kColorScheme.tertiary), // used by the dropdown
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primary,
              foregroundColor: kColorScheme.onPrimary),
        ),
      ),
      home: Expenses(),
    ),
  );
  // });
}
