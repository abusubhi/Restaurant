import 'package:flutter/material.dart';
import 'package:my_work2/widgets/cat_item.dart';
import 'package:my_work2/widgets/home_item.dart';
import 'package:my_work2/widgets/main_cat_section.dart';
import 'package:my_work2/widgets/special_offers_item.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                /*This section for location and title 1*/
                Container(
                  height: 88,
                  padding: const EdgeInsets.only(left: 31, right: 22),
                  width: MediaQuery.sizeOf(context).width,
                  color: const Color(0xFFF5F5F5),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delived to??',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.cyanAccent,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF0A9C20),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                'El-Galaa.st',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Icon(
                          Icons.notifications_none,
                          color: Colors.cyan,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                //over flow error child: SingleChildScrollView(
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  /*This section for Catigory food 2*/
                  child: Row(
                    children: [
                      CatItem(
                        icon: 'assets/images/fast_food_ic.png',
                        title: 'Fast Food',
                        onTap: () {
                          print('object');
                        },
                      ),
                      const SizedBox(width: 12),
                      CatItem(
                        icon: 'assets/images/sea_food_ic.png',
                        title: 'Sea Food',
                        onTap: () {
                          print('seafood');
                        },
                      ),
                      const SizedBox(width: 12),
                      CatItem(
                        icon: 'assets/images/main_dishes_ic.png',
                        title: 'main Dishe',
                        onTap: () {
                          print('seafood');
                        },
                      ),
                      const SizedBox(width: 12),
                      CatItem(
                        icon: 'assets/images/dessert_ic.png',
                        title: 'Dessert Food',
                        onTap: () {
                          print('seafood');
                        },
                      ),
                      const SizedBox(width: 12),
                      CatItem(
                        icon: 'assets/images/fast_food_ic.png',
                        title: 'Fast Food',
                        onTap: () {
                          print('seafood');
                        },
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                ),

                //here the new items

                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  /*Design the title of sction (Top Rated & Sea All)*/
                  child: const Row(
                    children: [
                      Text(
                        'Top Rated',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        child: Text(
                          'Sea All',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.lightGreenAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                /*Listview for the data in EX API        for HomeItem*/
                Container(
                  height: 144,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    scrollDirection: Axis.horizontal,
                    children: [
                      HomeItem(
                          imaget: 'assets/images/pizza.png',
                          title: 'pizza Dish',
                          onTap: () {
                            print('happyness');
                          },
                          ItemPrice: '200JD'
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      HomeItem(
                          imaget: 'assets/images/pizza.png',
                          title: 'pizza Dish',
                          onTap: () {
                            print('happyness');
                          },
                          ItemPrice: '200JD'
                      ),
                      HomeItem(
                          imaget: 'assets/images/pizza.png',
                          title: 'pizza Dish',
                          onTap: () {
                            print('happyness');
                          },
                          ItemPrice: '200JD'
                      ),
                      HomeItem(
                          imaget: 'assets/images/pizza.png',
                          title: 'pizza Dish',
                          onTap: () {
                            print('happyness');
                          },
                          ItemPrice: '200JD'
                      ),
                    ],
                  ),
                ),

SpecialOfferItem(),
mainCatSection(
  mainCatTitle: 'rated top',
  onTapSeeAll: (){
    print('hello rated');
  },
  itemsList: homeTopRatedData['items'],
),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

Map<String, dynamic> homeTopRatedData = {
  'cat_title': 'Toprated',
  'items': [
    {
      'id': 1,
      'title': 'Lorem ipsum dolor',
      'itemPrice': '20 EEGP',
      'image_assets': 'assets/images/pizza.png',
    },
    {
      'id': 2,
      'title': 'Lorem ipsum dolor',
      'itemPrice': '20 EEGP',
      'image_assets': 'assets/images/pizza.png',
    },
    {
      'id': 3,
      'title': 'Lorem ipsum dolor2',
      'itemPrice': '15 EEGP',
      'image_assets': 'assets/images/pizza.png',
    },
    {
      'id': 4,
      'title': 'Lorem ipsum dolor3',
      'itemPrice': '10 EEGP',
      'image_assets': 'assets/images/pizza.png',
    },

  ]
};
