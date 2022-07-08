import 'package:flutter/material.dart';
import 'package:instagram_ui/navigation_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Colors.white,
            onPrimary: Colors.black,
            // Colors that are not relevant to AppBar in LIGHT mode:
            primaryVariant: Colors.grey,
            secondary: Colors.grey,
            secondaryVariant: Colors.grey,
            onSecondary: Colors.grey,
            background: Colors.grey,
            onBackground: Colors.grey,
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
          ),
          // primaryColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: NavigationContainer());
  }
}
