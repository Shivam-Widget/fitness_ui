import 'package:fitness_ui/screens/exercise_details_screen.dart';
import 'package:fitness_ui/screens/exercise_screen.dart';
import 'package:fitness_ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  ExerciseScreen(),
    );
  }
}

