import 'package:flutter/material.dart';

class ExeDetailsList extends StatelessWidget {
  ExeDetailsList({
    super.key,
  });

  List exeDetailsList = [
    {
      'picture': 'assets/images/additional/ropeskiping.png',
      'exename': 'Exercises with Jumping',
      'ref': 'Rope',
      'kcal': '110 Kcal',
      'time': '10 min',
      'type': 'Beginner',
      'color': const Color(0xFFFBBC05),
    },
    {
      'picture': 'assets/images/additional/dumbbells.png',
      'exename': 'Exercises with Holding',
      'ref': 'Rope',
      'kcal': '135 kcal',
      'time': '8 min',
      'type': 'Beginner',
      'color': const Color(0xFFFF805E),
    },
    {
      'picture': 'assets/images/additional/sitting.png',
      'exename': 'Exercises with Sitting',
      'ref': 'Dumbbells',
      'kcal': '135 kcal',
      'time': '5 min',
      'type': 'Beginner',
      'color': const Color(0xFFFBBC05),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      itemCount: exeDetailsList.length,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: exeDetailsList[i]['color'],
                    image: DecorationImage(
                      image: AssetImage('${exeDetailsList[i]['picture']}'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${exeDetailsList[i]['exename']}',
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${exeDetailsList[i]['ref']}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/fire.png',
                          scale: 1.3,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          '${exeDetailsList[i]['kcal']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '|',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/clock.png',
                          scale: 1.3,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          '${exeDetailsList[i]['time']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${exeDetailsList[i]['type']}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              endIndent: 10,
              indent: 10,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        );
      },
    );
  }
}
