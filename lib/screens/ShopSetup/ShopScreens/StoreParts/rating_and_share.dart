import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RatingBar.builder(
              itemCount: 5,
              initialRating: 0,
              allowHalfRating: true,
              direction: Axis.horizontal,
              minRating: 1,
              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
              itemBuilder: (context,_) => const Icon(Icons.star,color: Colors.amber,),
              onRatingUpdate: (rating){print(rating);},
                ),
            // Icon(Iconsax.star,color: Colors.amber,size: 24),
            // SizedBox(width: 16,),
            // Text.rich(
            //     TextSpan(
            //         children: [
            //           TextSpan(text: "5.0",style: TextStyle(fontSize: 15)),
            //           TextSpan(text: '(199)'),
            //         ]
            //     )
            // ),
            const SizedBox(width: 16,),

          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: 24,))
      ],
    );
  }
}
