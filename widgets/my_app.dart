import 'package:flutter/material.dart';
import 'package:quizz_les_ordinateurs/widgets/home.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizz Vrai ou Faux',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Quizz : Les Ordinateurs'),
    );
  }
}