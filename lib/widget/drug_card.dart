import 'package:flutter/material.dart';
import 'package:meetdr/model/drug.dart';

class DrugCard extends StatelessWidget {
  final Drug drug;
  const DrugCard(this.drug);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/product');
      },
      child: Container(
        height: drug.height as double,
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffE6ECFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
