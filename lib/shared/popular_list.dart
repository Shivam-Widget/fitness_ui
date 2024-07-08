import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  PopularList({
    super.key,
  });

  List popularList = [
    {
      'pic': 'assets/images/popularexercise/shot-beautiful.png',
      'exe': 'Full Shot Woman Stretching Arm',
      'time': '30 min'
    },
    {
      'pic': 'assets/images/popularexercise/looking-shocked.png',
      'exe': 'Athlete Practicing Monochrome',
      'time': '50 min'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      itemCount: popularList.length,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            Stack(
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
                            image: AssetImage('${popularList[i]['pic']}'), fit: BoxFit.fitWidth)),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 350,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
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
                  '${popularList[i]['exe']}',
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
                const Text(
                  'Beginner',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '|',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.alarm,
                  color: Colors.blue,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '${popularList[i]['time']}',
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
