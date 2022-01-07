import 'package:cooking_recipe_app/screens/home/components/recipe_today_card.dart';
import 'package:cooking_recipe_app/screens/home/components/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.segment,
                  size: 30,
                ),
                Image.asset(
                  'asset/icons/bell.png',
                  height: 30,
                  width: 30,
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Bonjour, Asmaa',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const Text(
              'What Would you like to cooke today?',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SearchBar(),
                Icon(
                  Icons.filter_alt_outlined,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Today\'s Fresh Recipes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: const Text('See All',style: TextStyle(color: Colors.deepOrange),))
              ],
            ),
            // Container(
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 3,itemBuilder: (context,index){
            //     return Container(
            //       child: RecipeTodayCard(),
            //     );
            //   }),
            // )
          ],
        ),
      ),
    ));
  }
}
