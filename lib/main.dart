import 'package:flutter/material.dart';
import 'package:todo/home_page/home_page.dart';
import 'package:todo/sign_in_page/sign_in_page.dart';
import 'package:todo/sign_up_page/sign_up_page.dart';
import 'package:todo/task_page/task_page.dart';

void main() {
  runApp(const MyApp());
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(_) =>
      const BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          checkboxTheme: CheckboxThemeData(side: AlwaysActiveBorderSide()),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.grey)),
      routes: {
        '/home': (context) => const HomePage(),
        '/signup': (context) => const SignUpPage(),
        '/signin': (context) => const SignInPage(),
        '/tasks': (context) => const TaskPage()
      },
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}
