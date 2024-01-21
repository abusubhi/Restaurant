import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.imaget, required this.title, required this.onTap, required this.ItemPrice,});
final String imaget;
final String title;
final VoidCallback onTap;
final String ItemPrice;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
                width: 130,
              //  height: 115,
                decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  borderRadius: BorderRadius.all(Radius.circular(12))),
   child:   Column(
     mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(
       imaget,
       height: 70,
       width: 70,
    ),



      Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
SizedBox(height: 3,),
      /*Button*/
      SizedBox(height: 9,),
      Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 21,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(6),
      ),
        alignment: Alignment.center,
        child: Text(
          ItemPrice,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10,color: Colors.white),
        ),
  ),
      SizedBox(height: 12,),
  ],

   ),
    ),


    );
  }
}
