import 'package:flutter/material.dart';

import '../shared/fav_meal.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        title: const Text(
          'My Favorites',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black),
                    child: const Center(
                      child: Text(
                        'Meal',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey),
                    child: const Center(
                      child: Text(
                        'Workout',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            FavoriteMeal(),
          ],
        ),
      ),
    );
  }
}
