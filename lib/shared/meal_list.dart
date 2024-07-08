import 'package:flutter/material.dart';

class MealList extends StatelessWidget {
  MealList({
    super.key,
  });

  List mealList = [
    {
      'pik': 'assets/images/meal/meal1.png',
      'meal': 'Greek salad with lettuce, green onion, ',
      'kcal': '150 kcal'
    },
    {
      'pik': 'assets/images/meal/meal2.png',
      'meal': 'Salad of fresh vegetables',
      'kcal': '270 Kcal'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      itemCount: mealList.length,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage('${mealList[i]['pik']}'), fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '${mealList[i]['meal']}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
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
                Text(
                  '${mealList[i]['kcal']}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),
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
