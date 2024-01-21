import 'package:flutter/material.dart';
import 'package:my_work2/widgets/home_item.dart';

class mainCatSection extends StatelessWidget {
  const mainCatSection({super.key, required this.mainCatTitle, required this.onTapSeeAll, required this.itemsList});

final String mainCatTitle;
final VoidCallback onTapSeeAll;
 final List<Map<String, dynamic>> itemsList;

  @override
  Widget build(BuildContext context) {
    print('items list : ${itemsList.length}');
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child:  Row(
            children: [
              Text(
                mainCatTitle,
                style:const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: onTapSeeAll,
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
        Container(
          height: 144,
          child:
          Builder(
            builder: (context) {
              return ListView.separated(
                   padding: EdgeInsets.symmetric(horizontal: 22),
                itemCount: itemsList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                     return
                  HomeItem(
                              imaget: itemsList[index]['image_assets'],
                              title: itemsList[index]['title'],
                              onTap: () {
                              },
                              ItemPrice: itemsList[index]['itemPrice'],
                          );
                }, separatorBuilder: (BuildContext context, int index) {
                     return SizedBox(width: 16,);
              },);
            }
          ),
          // child: ListView(
          //   padding: EdgeInsets.symmetric(horizontal: 22),
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     HomeItem(
          //         imaget: 'assets/images/pizza.png',
          //         title: 'pizza Dish',
          //         onTap: () {
          //           print('happyness');
          //         },
          //         ItemPrice: '200JD'
          //     ),
          //     const SizedBox(
          //       width: 8,
          //     ),
          //     HomeItem(
          //         imaget: 'assets/images/pizza.png',
          //         title: 'pizza Dish',
          //         onTap: () {
          //           print('happyness');
          //         },
          //         ItemPrice: '200JD'
          //     ),
          //     SizedBox(
          //       width: 8,
          //     ),
          //     HomeItem(
          //         imaget: 'assets/images/pizza.png',
          //         title: 'pizza Dish',
          //         onTap: () {
          //           print('happyness');
          //         },
          //         ItemPrice: '200JD'
          //     ),
          //     SizedBox(
          //       width: 8,
          //     ),
          //     HomeItem(
          //         imaget: 'assets/images/pizza.png',
          //         title: 'pizza Dish',
          //         onTap: () {
          //           print('happyness');
          //         },
          //         ItemPrice: '200JD'
          //     ),
          //   ],
          // ),
        ),
      ],
    );

  }
}
