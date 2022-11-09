import 'package:flutter/material.dart';
import 'package:test_for_physical/presentation/widgets/auth_widget.dart';
import 'package:test_for_physical/presentation/screens/errors_screen_widget.dart';
import 'package:test_for_physical/presentation/screens/success_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      routes: {
          '/auth': (context) => const AuthWidget(),
          '/errors_screen': (context) => const ErrorsScreenWidget(),
          '/success_screen': (context) => const SuccessScreenWidget(),
        },
        initialRoute: '/auth',
    );
  }
}