import 'package:flutter/material.dart';
import 'package:meetdr/theme.dart';
import 'package:meetdr/widget/banner_card.dart';
import 'package:meetdr/widget/doctor_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_hand.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bayu Aditya',
                    style: blackText.copyWith(
                      fontSize: 21,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Image.asset(
                'assets/icon_cart.png',
                width: 19,
              ),
            ),
          ],
        ),
      );
    }

    Widget feelingTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'How you feel today?',
          style: blackText.copyWith(
            fontSize: 21,
          ),
        ),
      );
    }

    Widget banners() {
      return Container(
        margin: EdgeInsets.only(top: 18),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              BannerCard(),
              BannerCard(),
              BannerCard(),
            ],
          ),
        ),
      );
    }

    Widget feelings() {
      return Container(
        margin: EdgeInsets.only(top: 18),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27,
                  vertical: 8,
                ),
                margin: EdgeInsets.only(
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgNavbar,
                ),
                child: Text(
                  'Cold',
                  style: blackText.copyWith(fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27,
                  vertical: 8,
                ),
                margin: EdgeInsets.only(
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgNavbar,
                ),
                child: Text(
                  'Cough',
                  style: blackText.copyWith(fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27,
                  vertical: 8,
                ),
                margin: EdgeInsets.only(
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgNavbar,
                ),
                child: Text(
                  'Sniffles',
                  style: blackText.copyWith(fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27,
                  vertical: 8,
                ),
                margin: EdgeInsets.only(
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgNavbar,
                ),
                child: Text(
                  'Cold',
                  style: blackText.copyWith(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget doctorTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Meet our best doctor',
          style: blackText.copyWith(
            fontSize: 21,
          ),
        ),
      );
    }

    Widget doctorItem() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            DoctorTile(),
            DoctorTile(),
            DoctorTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        banners(),
        feelingTitle(),
        feelings(),
        doctorTitle(),
        doctorItem(),
      ],
    );
  }
}
