import 'package:custom_painting/UI/views/login_custom_paint.dart';
import 'package:custom_painting/UI/views/shape_painter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            children: [
              LoginCustomUI(),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.red,
              )
            ],
          ),
        )));
  }
}
