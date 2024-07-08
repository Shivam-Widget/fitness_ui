import 'package:flutter/material.dart';

import '../shared/exe_details_list.dart';
import '../shared/exercise_list.dart';

class ExerciseDetailsScreen extends StatefulWidget {
  const ExerciseDetailsScreen({super.key});

  @override
  State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
}

class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/exedetails.png'), fit: BoxFit.cover)),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300, left: 50),
                  child: Container(
                    width: 320,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/fire.png',
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '135 Kcal',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '|',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/clock.png',
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '5 min',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 100,
                          width: 320,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color(0xFFFCFCFC)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      'Level',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: const Color(0xFFEDEDED)),
                                      child: const Center(
                                          child: Text(
                                        'Beginner',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black),
                                      )),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      'Category',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: const Color(0xFFEDEDED)),
                                      child: const Center(
                                          child: Text(
                                        'Cardio',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black),
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      'Weight',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: const Color(0xFFEDEDED)),
                                      child: const Center(
                                          child: Text(
                                        'Lose',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black),
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Exercise with sitting \nDumbbells',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'There are many variations of passages of Lorem \nIpsum available, but the majority have suffered \nalteration in some form, by injected humour,',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  '3 Weeks - 20 Exercise',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 120,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black),
                  child: const Center(
                      child: Text(
                    'Schedule',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Exercise Program',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(height: 50, child: ExerciseList()),
            ExeDetailsList(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: const Color(0xFFB0C929)),
                child: const Center(
                    child: Text(
                  'START NOW',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
