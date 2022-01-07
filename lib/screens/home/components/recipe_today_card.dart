import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipeTodayCard extends StatelessWidget {
  const RecipeTodayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.favorite_border),
          Image.asset('asset/images/1.png',height: 200,width: 200,),
          const Text(
            'Breakfast',
            style: TextStyle(color: Colors.blueAccent),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('French Toast with Berries',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          const SizedBox(
            height: 10,
          ),
          RatingBar.builder(
            initialRating: 3.5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5, itemSize: 20,
            // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.deepOrange,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '120 Calories',
            style: TextStyle(color: Colors.deepOrange),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.access_time, size: 15,
                    color: Colors.grey,
                  ),
                  Text(
                    '10 mins',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(width: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.room_service_outlined, color: Colors.grey, size: 15,),
                  Text('1 Serving', style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
