import 'package:GoTravel/models/city.dart';
import 'package:GoTravel/models/space.dart';
import 'package:GoTravel/models/tips.dart';
import 'package:GoTravel/pages/home_page.dart';
import 'package:GoTravel/providers/space_provider.dart';
import 'package:GoTravel/theme.dart';
import 'package:GoTravel/widgets/bottom_navbar_item.dart';
import 'package:GoTravel/widgets/city_card.dart';
import 'package:GoTravel/widgets/space_card.dart';
import 'package:GoTravel/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                'Tentang GoTravel',
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
                'Cari Travel Mudah',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'about.png',
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge, right: edge),
              child: Text(
                'Aplikasi GoTravel ini adalah salah satu perangkat bergerak yang menggunakan flutter dimana itu merupakan framework dari bahasa pemrograman Dart, yang mana aplikasi ini bisa dipakai di handphone dan bisa di compile ke semua platform sekaligus Android, iOS, dan Web. Aplikasi ini menyajikan beberapa fitur untuk user yang sangat membantu untuk mendapatkan informasi tentang travel di Wonogiri.',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge, right: edge),
              child: Text(
                'Lokasi Tepat',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge, right: edge),
              child: Text(
                'Lokasi dari tiap agen travel dapat diakses dengan google maps, sehingga kita tidak perlu meminta bantuan ke orang sekitar',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge, right: edge),
              child: Text(
                'Booking Mudah',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge, right: edge),
              child: Text(
                'Dapat dihubungkan dengan agen travel yang bekerja, sehingga dapat dengan mudah untuk melakukan booking',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
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
                imageUrl: 'icon_home_normal.png',
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
                imageUrl: 'icon_card_active.png',
                isActive: true,
              ),
            ),
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
                imageUrl: 'assets/icon_love.png',
                isActive: false,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
