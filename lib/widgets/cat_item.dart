import 'package:flutter/material.dart';

class CatItem extends StatelessWidget {
  const CatItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 74,
            height: 74,
            decoration:
                const BoxDecoration(color: Color(0xFFF5F5F5), shape: BoxShape.circle),
            child: Image.asset(
              //we must defined icon & title because call it in parameter of the function
              icon,
              color: Colors.yellow,
              cacheHeight: 33,
              cacheWidth: 44,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.w600,),
          )
        ],
      ),
    );
  }
}
