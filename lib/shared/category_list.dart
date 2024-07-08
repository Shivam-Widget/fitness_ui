import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    super.key,
  });

  List categoryList = [
    {'image': 'assets/images/category/yoga.png', 'name': 'YOGA'},
    {'image': 'assets/images/category/gym.png', 'name': 'GYM'},
    {'image': 'assets/images/category/cardio.png', 'name': 'CARDIO'},
    {'image': 'assets/images/category/stretch.png', 'name': 'STRETCH'},
    {'image': 'assets/images/category/fullbody.png', 'name': 'FULL BODY'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: categoryList.length,
      itemBuilder: (ctx, i) {
        return Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.grey),
                  child: Image.asset('${categoryList[i]['image']}'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${categoryList[i]['name']}',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
