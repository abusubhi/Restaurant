import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialOfferItem extends StatelessWidget {
  const SpecialOfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20,left: 25),
      width: double.infinity,
      height: 150,
      decoration:  BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(16),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
          Color(0xff23AA49),
          Color(0xff5BE07A)
        ])
      ),

    child:
         Row(
           children: [
             Column(
               children: [
                 Row(
                     children: [
                       Text(
                         '30',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 40,
                           fontWeight: FontWeight.w400,
                         ),
                       ),
                       Text(
                         '%',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 34,
                           fontWeight: FontWeight.w500,
                         ),
                       ),
                     ]
                 ),
                 SizedBox(height: 30,),
                 Text("data"),
               ],
             ),
    SvgPicture.asset('assets/images/food.svg',
      height: 110,
    )
           ],
         )
    );
  }
}
