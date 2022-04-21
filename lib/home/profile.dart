import 'package:flutter/material.dart';
import 'package:meetdr/model/user_model.dart';
import 'package:meetdr/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:meetdr/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    // bool _loaded = false;
    // var img = Image.network(user.image);
    // var placeholder = AssetImage('assets/image_shop_logo.png');

    Widget header() {
      return Image.asset(
        'assets/image_background.png',
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryText,
            ),
            Icon(
              Icons.chevron_right,
              color: secondaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget listItem() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 32,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36),
          ),
          color: bgNavbar,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Account',
              style: primaryText.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            menuItem('Edit Profile'),
            menuItem('Your Orders'),
            menuItem('Help'),
            SizedBox(
              height: 30,
            ),
            Text(
              'General',
              style: primaryText.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            menuItem('Privacy & Policy'),
            menuItem('Term of Service'),
            menuItem('Rate App'),
            SizedBox(
              height: 40,
            ),
            // ProfileMenuItem(
            //   'assets/icon_prof_profile.png',
            //   'My Profile',
            // ),
            // ProfileMenuItem(
            //   'assets/icon_address.png',
            //   'My Address',
            // ),
            // ProfileMenuItem(
            //   'assets/icon_order.png',
            //   'My Order',
            // ),
            // ProfileMenuItem(
            //   'assets/icon_payment.png',
            //   'Payment Method',
            // ),
            // ProfileMenuItem(
            //   'assets/icon_prof_wishlist.png',
            //   'My Wishlist',
            // ),
            // ProfileMenuItem(
            //   'assets/icon_faq.png',
            //   'Frequently Asked Questions',
            // ),
            // ProfileMenuItem(
            //   'assets/icon_cs.png',
            //   'Customer Care',
            // ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          SizedBox(
            height: 130,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: (user.image != null)
                      ? Image.network(
                          user.image,
                          width: 120,
                        )
                      : Image.asset(
                          'assets/image_shop_logo.png',
                          width: 120,
                        ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  user.name,
                  style: blackText.copyWith(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          listItem(),
        ],
      );
    }

    return Stack(
      children: [
        header(),
        content(),
      ],
    );
  }
}
