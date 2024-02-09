import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipebook/firebase_options.dart';
import 'package:recipebook/screens/RecipeScreen.dart';
import 'package:recipebook/screens/WelcomeScreen.dart';
import 'package:recipebook/screens/temp.dart';

void main(List<String> args) async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const RecipeBook());
}

class RecipeBook extends StatelessWidget {
  const RecipeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RecipeScreen());
  }
}
