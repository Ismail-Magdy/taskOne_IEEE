import 'package:first_project/food/models/category_model.dart';
import 'package:first_project/food/models/deals_category_model.dart';
import 'package:first_project/food/models/nearby_reasturant_model.dart';
import 'package:first_project/food/widgets/custom_deal_card.dart';
import 'package:first_project/food/widgets/custom_recent_order_container.dart';
import 'package:first_project/food/widgets/custom_restaurant_card.dart';
import 'package:first_project/food/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  // First Category List
  List<CategoryModel> categories = [
    CategoryModel(icon: "🍕", color: Colors.orange.shade100, title: "Pizza"),
    CategoryModel(icon: "🍔", color: Colors.pink.shade100, title: "Burger"),
    CategoryModel(icon: "🍟", color: Colors.blue.shade100, title: "Fried"),
    CategoryModel(icon: "🌭", color: Colors.red.shade100, title: "Hot"),
    CategoryModel(icon: "🍿", color: Colors.grey.shade200, title: "Corn"),
    CategoryModel(icon: "🥐", color: Colors.purple.shade100, title: "Bread"),
    CategoryModel(icon: "🧋", color: Colors.green.shade100, title: "Drink"),
    CategoryModel(icon: "🥩", color: Colors.teal.shade100, title: "Steak"),
  ];
  //
  // Second Category List
  List<DealsCategoryModel> dealsCategories = [
    DealsCategoryModel(title: "Lunch Deal", image: "assets/images/5.jpg"),
    DealsCategoryModel(title: "Family Pack", image: "assets/images/4.jpg"),
    DealsCategoryModel(title: "Pancake", image: "assets/images/3.jpg"),
    DealsCategoryModel(title: "BreakFast", image: "assets/images/2.jpg"),
  ];
  //
  // Third Category List
  List<NearbyReasturantModel> nearbyReasturant = [
    NearbyReasturantModel(
      image: "assets/images/1.jpg",
      title: "Happy Restaurants One",
      subTitle: "BBQ . Burger . Fast Food",
      rate: "4.5",
    ),
    NearbyReasturantModel(
      image: "assets/images/1.jpg",
      title: "Happy Restaurants Two",
      subTitle: "BBQ . Desert . Fast Food",
      rate: "4",
    ),
    NearbyReasturantModel(
      image: "assets/images/1.jpg",
      title: "Happy Restaurants Three",
      subTitle: "BBQ . Pancake . Fast Food",
      rate: "3.5",
    ),
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const .symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5),
                // First Section
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Hello, Ismail 👋",
                          style: TextStyle(fontSize: 25, fontWeight: .bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text(
                              " Cairo, Egypt",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "assets/images/profile_image.jpeg",
                      ),
                    ),
                  ],
                ),
                //
                SizedBox(height: 30),
                //
                CustomText(text: "Categories"),
                //
                SizedBox(height: 13),
                //
                SingleChildScrollView(
                  scrollDirection: .horizontal,
                  child: Row(
                    spacing: 15,
                    children: [
                      ...List.generate(
                        categories.length,
                        (index) => Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: categories[index].color,
                              child: Text(
                                categories[index].icon,
                                style: TextStyle(fontSize: 35),
                              ),
                            ),
                            //
                            SizedBox(height: 5),
                            //
                            Text(
                              categories[index].title,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: .bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //
                SizedBox(height: 30),
                //
                CustomText(text: "Popular Deals 🔥"),
                //
                SizedBox(height: 10),
                // Image Cards
                GridView.builder(
                  itemCount: dealsCategories.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .75,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) => CustomDealCard(
                    title: dealsCategories[index].title,
                    image: dealsCategories[index].image,
                  ),
                ),
                //
                SizedBox(height: 20),
                //
                CustomText(text: "Nearby Restaurants"),
                //
                SizedBox(height: 10),
                // Nearby Restaurants List
                Column(
                  children: [
                    ...List.generate(
                      nearbyReasturant.length,
                      (index) => CustomRestaurantCard(
                        image: nearbyReasturant[index].image,
                        title: nearbyReasturant[index].title,
                        subTitle: nearbyReasturant[index].subTitle,
                        rate: nearbyReasturant[index].rate,
                      ),
                    ),
                  ],
                ),
                //
                SizedBox(height: 5),
                //
                CustomText(text: "Recent Orders"),
                //
                SizedBox(height: 5),
                // Last Category
                SingleChildScrollView(
                  scrollDirection: .horizontal,
                  child: Row(
                    children: [
                      CustomRecentOrderContainer(),
                      SizedBox(width: 15),
                      CustomRecentOrderContainer(),
                    ],
                  ),
                ),
                //
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
