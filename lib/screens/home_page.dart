import 'package:flutter/material.dart';
import '../bottombar.dart';
import '../shared/additional_list.dart';
import '../shared/category_list.dart';
import '../shared/meal_list.dart';
import '../shared/popular_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              color: Color(0xFfB0C929),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/menu-toggle.png',
                      scale: 2.5,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade300,
                      ),
                      child: Image.asset('assets/images/Ellipse.png'),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.notifications,
                      size: 35,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Hello, Good Morning',
                    style:
                        TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Sophia !',
                    style:
                        TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFF6A010),
                        Color(0xFFD48103),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 70, top: 20),
                        child: Text(
                          'Fit Young Woman Doing\n Battle Stretch  Training',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xFfFABC06),
                              borderRadius: BorderRadius.circular(7)),
                          child: const Center(
                            child: Text(
                              'Start Exercise',
                              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0.1,
                child: Image.asset(
                  'assets/images/girl.png',
                  scale: 4.7,
                ),
              ),
              Positioned(
                top: 110,
                left: 200,
                child: Image.asset(
                  'assets/images/dumbells.png',
                  scale: 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'Select your Goal',
                style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF696969).withOpacity(0.3)),
                  child: const Center(
                    child: Text(
                      'Loose Weight',
                      style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black),
                  child: const Center(
                    child: Text(
                      'Gain Weight',
                      style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF696969).withOpacity(0.3)),
                  child: const Center(
                    child: Text(
                      'Body Building',
                      style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF696969).withOpacity(0.3)),
                  child: const Center(
                    child: Text(
                      'Healthy',
                      style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
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
                'Category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 120,
            child: Category(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            endIndent: 10,
            indent: 10,
            color: Colors.black54,
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
                'Popular Exercise',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          PopularList(),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Meal Plans',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          MealList(),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Additional Exercise',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          AdditionalList(),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
