import 'package:app_baru/page-1/form-pelaporan.dart';
import 'package:app_baru/page-1/notifikasi.dart';
import 'package:app_baru/page-1/riwayat.dart';
import 'package:app_baru/page-1/surat-domisili-warga.dart';
import 'package:app_baru/page-1/suratkematianwarga.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../utils.dart';
import 'profile-2.dart';
import 'surat-pengantar-nikah.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class HomePage extends StatefulWidget {
  final User user;
  final String username;

  HomePage({required this.user}) : username = user.email!.split('@')[0];
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // home2tA9 (324:2)
            width: double.infinity,
            height: 812 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // rectangle7Psb (324:3)
                  left: 0 * fem,
                  top: 50 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 375 * fem,
                      height: 711 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle9ey7 (7:77)
                  left: 18 * fem,
                  top: 130 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 350 * fem,
                      height: 200 * fem,
                      child: Column(children: [
                        Expanded(
                          child: CarouselSlider(
                            items: imageSliders,
                            carouselController: _controller,
                            options: CarouselOptions(
                                height: MediaQuery.of(context).size.height,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                aspectRatio: 2.5,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imgList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Colors.black)
                                        .withOpacity(
                                            _current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                      ]),
                    ),
                  ),
                ),
                Positioned(
                  // group3056gER (324:6)
                  left: 18 * fem,
                  top: 330 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FormPelaporan()));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          45 * fem, 17 * fem, 44 * fem, 17 * fem),
                      width: 339 * fem,
                      height: 76 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff4478ff),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // group3052M5f (324:8)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // document3fillhfK (324:9)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 13 * fem, 0 * fem),
                              width: 42 * fem,
                              height: 42 * fem,
                              child: Image.asset(
                                'assets/page-1/images/document3fill.png',
                                width: 42 * fem,
                                height: 42 * fem,
                              ),
                            ),
                            Text(
                              // formpelaporan1R7 (324:12)
                              'Form Pelaporan',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group30328kd (324:13)
                  left: 300 * fem,
                  top: 50 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          16 * fem, 13 * fem, 16.66 * fem, 13.13 * fem),
                      width: 57 * fem,
                      height: 56.41 * fem,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/page-1/images/ellipse-19.png',
                          ),
                        ),
                      ),
                      child: Center(
                        // iconuserPAm (324:15)
                        child: SizedBox(
                          width: 24.34 * fem,
                          height: 30.28 * fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-user-4WH.png',
                            width: 24.34 * fem,
                            height: 30.28 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // aplikasipelayananwargazwF (324:27)
                  left: 32 * fem,
                  top: 259 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 273 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Aplikasi Pelayanan Warga',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle8V7K (324:29)
                  left: 15 * fem,
                  top: 723 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 350 * fem,
                      height: 76 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100 * fem),
                          color: Color(0xff4479ff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // ellipse29zJy (324:33)
                  left: 150 * fem,
                  top: 723 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 75.11 * fem,
                      height: 76 * fem,
                      child: Image.asset(
                        'assets/page-1/images/ellipse-29.png',
                        width: 75.11 * fem,
                        height: 76 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // notification1W2R (324:34)
                  left: 300 * fem,
                  top: 738 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 42 * fem,
                      height: 42 * fem,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifikasi()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          'assets/page-1/images/notification-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconlylightoutlinepaperpoo (324:36)
                  left: 50 * fem,
                  top: 740 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 32.62 * fem,
                      height: 38 * fem,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Riwayat()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          'assets/page-1/images/iconly-light-outline-paper-GF7.png',
                          width: 32.62 * fem,
                          height: 38 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconlylightoutlinehome6WR (324:39)
                  left: 170 * fem,
                  top: 740 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 35.8 * fem,
                      height: 37.56 * fem,
                      child: Image.asset(
                        'assets/page-1/images/iconly-light-outline-home-ukq.png',
                        width: 35.8 * fem,
                        height: 37.56 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // helloguestselamatdatangdiwarte (324:42)
                  left: 18 * fem,
                  top: 52 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 209 * fem,
                      height: 53 * fem,
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff4478ff),
                          ),
                          children: [
                            TextSpan(
                              text: 'HELLO, ',
                            ),
                            TextSpan(
                              text: '${widget.username}\n',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff2d4990),
                              ),
                            ),
                            TextSpan(
                              text: 'Selamat datang di Wartech',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff4478ff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group3128XtZ (324:102)
                  left: 18 * fem,
                  top: 430 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuratDomisiliWarga()));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          14 * fem, 14 * fem, 17.01 * fem, 15 * fem),
                      width: 339 * fem,
                      height: 69 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff2d4990),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // group3127QhT (324:101)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group3057N8V (324:45)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 11 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  3 * fem, 5 * fem, 6 * fem, 4 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10 * fem),
                              ),
                              child: Center(
                                // 52u (324:47)
                                child: SizedBox(
                                  width: 31 * fem,
                                  height: 31 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/Group 3058.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // suratdomisiliwargazff (324:94)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24 * fem, 0 * fem),
                              child: Text(
                                'Surat Domisili Warga',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // group3027hpy (324:98)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.63 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 13.99 * fem,
                                    height: 22.63 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-3027-bPs.png',
                                      width: 13.99 * fem,
                                      height: 22.63 * fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group3129Bk9 (324:103)
                  left: 15 * fem,
                  top: 530 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuratPengantarNikah()));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          14 * fem, 14 * fem, 17.01 * fem, 15 * fem),
                      width: 339 * fem,
                      height: 69 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff2d4990),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // group3127Gmb (324:105)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group3057pYD (324:106)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 11 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  3 * fem, 5 * fem, 6 * fem, 4 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10 * fem),
                              ),
                              child: Center(
                                // 8Yu (324:108)
                                child: SizedBox(
                                  width: 31 * fem,
                                  height: 31 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/Group 3060.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // suratpengantarnikahUMs (324:109)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              child: Text(
                                'Surat Pengantar Nikah',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // group3027avh (324:110)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.63 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 13.99 * fem,
                                    height: 22.63 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-3027-pCd.png',
                                      width: 13.99 * fem,
                                      height: 22.63 * fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group3130gTw (324:113)
                  left: 15 * fem,
                  top: 630 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuratKematianWarga()));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          14 * fem, 14 * fem, 17.01 * fem, 15 * fem),
                      width: 339 * fem,
                      height: 69 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff2d4990),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // group3127mEV (324:115)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group30577JM (324:116)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 11 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  3 * fem, 5 * fem, 6 * fem, 4 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10 * fem),
                              ),
                              child: Center(
                                // QoF (324:118)
                                child: SizedBox(
                                  width: 31 * fem,
                                  height: 31 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/Group 3064.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // suratkematianwargax45 (324:119)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 6 * fem, 0 * fem),
                              child: Text(
                                'Surat Kematian Warga',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // group30274cu (324:120)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.63 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 13.99 * fem,
                                    height: 22.63 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-3027.png',
                                      width: 13.99 * fem,
                                      height: 22.63 * fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
