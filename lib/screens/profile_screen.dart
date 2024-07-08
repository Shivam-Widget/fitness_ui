import 'package:fitness_ui/shared/category_list.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../bottombar.dart';
import '../shared/micronutrient_goals_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        actions: const [
          Row(
            children: [
              Icon(
                Iconsax.edit,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.5),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/Ellipse.png'), fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Sophia!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Basic member',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '55kg',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Weight',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                '|',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    '170cm',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Height',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                '|',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    '18year',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Age',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),
                  ),
                ],
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
                'Goal',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(height: 130, child: Category()),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Macronutrient Goals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: MacronutrientGoals(),
          )
        ],
      ),
      bottomNavigationBar: const BottomBar(
        color: Colors.black,
      ),
    );
  }
}
