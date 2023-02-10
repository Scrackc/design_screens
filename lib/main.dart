import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
      ),
      initialRoute: 'home_design',

      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollScreen(),
        'home_design': (_) => const HomeScreen(),
      },
      
    );
  }
}