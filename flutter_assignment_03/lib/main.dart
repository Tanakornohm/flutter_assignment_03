import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/views/firstpage.dart';
import 'package:flutter_assignment_03/views/form_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // is not restarted.
        brightness:  Brightness.dark,
      ),
      //home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => FirstPage(),
        "/form_screen": (context) => form_screen(),
        },
    );
  }
}

