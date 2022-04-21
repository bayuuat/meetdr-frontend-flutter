import 'package:flutter/material.dart';
import 'package:meetdr/theme.dart';

class LoadingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 50),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(secondaryTextColor),
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'Loading',
              style: whiteText.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
