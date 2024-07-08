import 'package:flutter/material.dart';

class FavoriteMeal extends StatelessWidget {
   FavoriteMeal({
    super.key,

  });

   List favList = [
     {
       'pic': 'assets/images/fav/firstmeal.png',
       'exe': 'Green beans, tomatoes, eggs',
     },
     {
       'pic': 'assets/images/fav/secondmeal.png',
       'exe': 'Healthy balanced vegetarian food',
     },
     {
       'pic': 'assets/images/fav/thiredmeal.png',
       'exe': 'Ketogenic/paleo diet. fried eggs, salmon',
     },
   ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      itemCount: favList.length,
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
                            image: AssetImage('${favList[i]['pic']}'), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 340,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Colors.white),
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
                  '${favList[i]['exe']}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
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
                Image.asset('assets/images/fire.png', scale: 1.3,),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '135 Kcal',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '|',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/clock.png', scale: 1.3,),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '30 min',
                  style: TextStyle(
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