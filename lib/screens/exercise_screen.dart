import 'package:flutter/material.dart';
import '../bottombar.dart';
import '../shared/exer_list.dart';
import '../shared/exercise_list.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Full Exercise',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 10,),
            SizedBox(
              height: 60,
              child: ExerciseList(),
            ),
            const SizedBox(
              height: 10,
            ),
            ExerList(),
          ],
        ),
      ),
     
    );
  }
}
