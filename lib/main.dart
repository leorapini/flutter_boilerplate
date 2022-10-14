import 'package:flutter/material.dart';

import 'injection.dart' as injection;
import 'presentation/pages/home.dart';
import 'presentation/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injection.init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Pics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: textThemeDefault,
        fontFamily: fontFamily,
      ),
      home: const Scaffold(
          body: Center(
        child: HomePage(),
      )),
    );
  }
}
