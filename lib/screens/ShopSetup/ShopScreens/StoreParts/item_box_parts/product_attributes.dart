import 'package:flutter/material.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/container1/circular_container.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/product_title_text.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/item_box_parts/the_choice_chip.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/section_heading.dart';
import 'package:readmore/readmore.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularContainer(
          padding: const EdgeInsets.all(16),
          backgroundColor: Colors.grey[300],
            child: const Column(
              children: [
                Row(
                  children: [
                    SectionHeading(title: "Validation",showActionButton: false,),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("\$25",style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 18),),
                            SizedBox(width: 16,),
                            Text("\$20",style: TextStyle(fontSize: 18),),
                          ],
                        ),
                        Row(
                          children: [
                            ProductTitleText(text: "Statuse:"),
                            SizedBox(width: 16,),
                            Text("In Stock")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                ProductTitleText(
                  text: "this is the discription of the producte and it can go up to 4 lines",
                  maxline: 4,
                ),
              ],
            ),
        ),
        const SizedBox(height: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: "Colors",showActionButton: false,),
            Wrap(
              children: [
                TheChoiceChip(text: 'green', selected: true,onSelected: (value){},),
                TheChoiceChip(text: 'blue', selected: false,onSelected: (value){},),
                TheChoiceChip(text: 'red', selected: false,onSelected: (value){},),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: "Size",showActionButton: false,),
            Wrap(
              spacing: 8,
              children: [
                TheChoiceChip(text: 'EU 34', selected: true,onSelected: (value){},),
                TheChoiceChip(text: 'EU 36', selected: false,onSelected: (value){},),
                TheChoiceChip(text: 'EU 38', selected: false,onSelected: (value){},),
              ],
            ),
            const SizedBox(height: 32,),
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
                child: const Text("Checkout"),),
            ),
            const SizedBox(height: 32,),
            const SectionHeading(title: "Description",showActionButton: false,),
            const SizedBox(height: 16,),

            const ReadMoreText(
              "bla bla bla bla bla bla bla bla bla bla bla "
                  "bla bla bla bla bla bla bla bla bla bla "
                  "bla bla bla bla bla bla bla bla bla bla "
                  "bla bla bla bla bla bla bla bla bla bla "
                  "bla bla bla bla bla bla bla bla bla",
              trimCollapsedText: "...read more",
              trimExpandedText: "...less",
              trimLines: 2,
              trimMode: TrimMode.Line,
              moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
              lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 16,),
            const Divider(),
            const SectionHeading(title: "Reviews",showActionButton: false,),
            const SizedBox(height: 16,),
          ],
        ),
      ],
    );
  }
}
