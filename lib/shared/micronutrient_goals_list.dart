import 'package:flutter/material.dart';

class MacronutrientGoals extends StatelessWidget {
   MacronutrientGoals({
    super.key,
  });

   List goalsList = [

     {
       'image' : 'assets/images/Macronutrient/protein.png',
       'name' : 'Protein',
       'grams' : '130',
     },
     {
       'image' : 'assets/images/Macronutrient/carbs.png',
       'name' : 'Carbs',
       'grams' : '235',
     },
     {
       'image' : 'assets/images/Macronutrient/fat.png',
       'name' : 'Fat',
       'grams' : '60',
     },




   ];


   @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: goalsList.length,



        itemBuilder: (ctx, i) {

          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [

                Column(
                  children: [

                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage('${goalsList[i]['image']}'),fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 10,),

                    Text('${goalsList[i]['name']}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black),),
                    SizedBox(height: 5,),


                    Text('${goalsList[i]['grams']}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),

                    SizedBox(height: 5,),

                    Text('Grams per day', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),),







                  ],
                ),
              ],
            ),
          );




        });
  }
}