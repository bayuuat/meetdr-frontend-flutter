import 'package:flutter/material.dart';
import 'package:meetdr/theme.dart';

class BannerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 195,
        height: 220,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff6270DD),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
