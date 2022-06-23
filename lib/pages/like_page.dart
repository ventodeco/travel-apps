import 'package:GoTravel/models/travel.dart';
import 'package:GoTravel/pages/about_page.dart';
import 'package:GoTravel/pages/home_page.dart';
import 'package:GoTravel/providers/travel_provider.dart';
import 'package:GoTravel/theme.dart';
import 'package:GoTravel/widgets/bottom_navbar_item.dart';
import 'package:GoTravel/widgets/travel_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LikePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var travelProvider = Provider.of<TravelProvider>(context);

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Favorit',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Travel yang Disukai',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: Travel Agen
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Travel Agen',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: FutureBuilder(
                future: travelProvider.getFavoriteTravel(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Travel> data = snapshot.data;

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: TravelCard(item),
                        );
                      }).toList(),
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            SizedBox(
              height: 100 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              elevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              color: Color(0xffF6F7F8),
              child: BottomNavbarItem(
                imageUrl: 'assets/icon_home_normal.png',
                isActive: false,
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },
              elevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              color: Color(0xffF6F7F8),
              child: BottomNavbarItem(
                imageUrl: 'assets/icon_card.png',
                isActive: false,
              ),
            ),
            RaisedButton(
              onPressed: () {},
              elevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              color: Color(0xffF6F7F8),
              child: BottomNavbarItem(
                imageUrl: 'assets/icon_love_active.png',
                isActive: true,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
