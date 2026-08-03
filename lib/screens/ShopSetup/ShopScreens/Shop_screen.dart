import 'package:flutter/material.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/category_tab.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/grid_layout.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/tTap_Bar.dart';
import 'StoreParts/AppBar/custumAppBar.dart';
import 'StoreParts/brand_cards.dart';
import 'StoreParts/cartcounter.dart';
import 'StoreParts/searchBar.dart';
import 'StoreParts/section_heading.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CAppBar(
          title: const Text(
            "Store",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
          ),
          action: [
            Cartcounter(OnPress: () {},
              iconColor: Colors.black,
              textColor: Colors.white,
            )
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            expandedHeight: 440,
            backgroundColor: Colors.white,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(1),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const SizedBox(height: 16,),
                  const searchContainer(
                    text: '',
                    showBorder: true,
                    showBackground: false,
                  ),
                  const SizedBox(height: 16,),
                  SectionHeading(title: 'Featured brand', OnPress: () {},),
                  const SizedBox(height: 8,),
                  GridLayout(itemCount: 4, mainAxisSpacing: 80, itemBuilder: (_,index){
                    return const BrandCard(showBorder: true,);
                  })
                ],
              ),
            ),
            bottom: const TTabBar(
              tabs: [
                Tab(child: Text("Sports"),),
                Tab(child: Text("Cosmatics"),),
                Tab(child: Text("Furniture"),),
                Tab(child: Text("Electronics"),),
                Tab(child: Text("clothes"),),
            ],),
          )];
        },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          )
        ),
      ),
    );
  }
}
