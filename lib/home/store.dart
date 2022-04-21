import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meetdr/model/drug_model.dart';
import 'package:meetdr/theme.dart';
import 'package:meetdr/widget/drug_card.dart';

class StorePage extends StatelessWidget {
  final drugList = Drug.generate();

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'MeetPharm',
          style: blackText.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 42,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: bgNavbar,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: '...',
                          hintStyle: subtitleText,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: Image.asset(
                    'assets/icon_search.png',
                    width: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget feelings() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 20,
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
                  borderRadius: BorderRadius.circular(6),
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
                  borderRadius: BorderRadius.circular(6),
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
                  borderRadius: BorderRadius.circular(6),
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
                  borderRadius: BorderRadius.circular(6),
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

    Widget drugItems() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            crossAxisCount: 4,
            itemCount: drugList.length,
            itemBuilder: (_, index) => DrugCard(drugList[index]),
            staggeredTileBuilder: (_) => const StaggeredTile.fit(2),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        chatInput(),
        feelings(),
        drugItems(),
      ],
    );
  }
}
