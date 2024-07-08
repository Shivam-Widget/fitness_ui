import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  ExerciseList({
    super.key,

  });

  List exerciseList = [
    {
      'name': 'Cardio',
      'color': Color(0xFFFFFFFF),
      'bgcolor': Color(0xff000000),
    },
    {'name': 'Legs', 'color': Color(0xff3A4750), 'bgcolor': Color(0xffEDEDED)},
    {'name': 'Back', 'color': Color(0xff3A4750), 'bgcolor': Color(0xffEDEDED)},
    {'name': 'Chest', 'color': Color(0xff3A4750), 'bgcolor': Color(0xffEDEDED)},
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: exerciseList.length,
        itemBuilder: (ctx, i) {
          return Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: exerciseList[i]['bgcolor'],
                ),
                child: Center(
                    child: Text(
                      '${exerciseList[i]['name']}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: exerciseList[i]['color']),
                    )),
              ),
            ],
          );
        });
  }
}
