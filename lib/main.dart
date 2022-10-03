import 'package:flutter_boiler/presentation/theme/theme.dart';

import 'injection.dart' as injection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injection.init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Space Pics',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: textThemeDefault,
          fontFamily: fontFamily,
        ),
        home: const Scaffold(
            body: Center(
          child: Text('Hey'),
        )),
      );

  }
}
