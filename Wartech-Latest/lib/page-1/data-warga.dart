import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/riwayat.dart';
import 'package:app_baru/utils.dart';

class DataWarga extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: double.infinity,
        child: Container(
          // datawargamJy (150:1388)
          width: double.infinity,
          height: 800 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // rectangle7r5X (150:1389)
                left: 0 * fem,
                top: 50 * fem,
                child: Align(
                  child: SizedBox(
                    width: 375 * fem,
                    height: 600 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group30788Hw (150:1519)
                left: 18 * fem,
                top: 120 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 55 * fem, 0 * fem, 29 * fem),
                  width: 339 * fem,
                  height: 636 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff2d4990),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Container(
                    // group3077ciu (150:1518)
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 55 * fem, 0 * fem, 55 * fem),
                    width: 331 * fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // line11K7X (150:1508)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                        Container(
                          // line10RRT (150:1507)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                        Container(
                          // line12xRP (150:1509)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                        Container(
                          // line1361o (150:1510)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                        Container(
                          // line15cVw (150:1512)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                        Container(
                          // line16MCd (150:1513)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                        Container(
                          // line17Uo3 (150:1514)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                        Container(
                          // line18pM7 (150:1515)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 54 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // maskgroupkVf (150:1504)
                left: 18 * fem,
                top: 119 * fem,
                child: Align(
                  child: SizedBox(
                    width: 339 * fem,
                    height: 580 * fem,
                    child: Image.asset(
                      'assets/page-1/images/mask-group-egy.png',
                      width: 339 * fem,
                      height: 580 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle8rYh (150:1416)
                left: 18 * fem,
                top: 723 * fem,
                child: Align(
                  child: SizedBox(
                    width: 339 * fem,
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
                // ellipse28ZT7 (150:1417)
                left: 106 * fem,
                top: 723 * fem,
                child: Align(
                  child: SizedBox(
                    width: 75.11 * fem,
                    height: 76 * fem,
                    child: Image.asset(
                      'assets/page-1/images/ellipse-28.png',
                      width: 75.11 * fem,
                      height: 76 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // notification1fW9 (150:1421)
                left: 299 * fem,
                top: 740 * fem,
                child: Align(
                  child: SizedBox(
                    width: 42 * fem,
                    height: 42 * fem,
                    child: Image.asset(
                      'assets/page-1/images/notification-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // todolist1ad7 (150:1422)
                left: 213 * fem,
                top: 742 * fem,
                child: Align(
                  child: SizedBox(
                    width: 38 * fem,
                    height: 38 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Riwayat()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/to-do-list-1-5Tw.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconlylightoutlinepaperUiV (150:1423)
                left: 127 * fem,
                top: 742 * fem,
                child: Align(
                  child: SizedBox(
                    width: 32.62 * fem,
                    height: 38 * fem,
                    child: Image.asset(
                      'assets/page-1/images/iconly-light-outline-paper-ZDB.png',
                      width: 32.62 * fem,
                      height: 38 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconlylightoutlinehomemxV (150:1426)
                left: 38 * fem,
                top: 742 * fem,
                child: Align(
                  child: SizedBox(
                    width: 35.8 * fem,
                    height: 37.56 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(user: _auth.currentUser!)));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/iconly-light-outline-home.png',
                        width: 35.8 * fem,
                        height: 37.56 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // datawargaentahbrantahrt02rw03F (150:1429)
                left: 18 * fem,
                top: 52 * fem,
                child: Align(
                  child: SizedBox(
                    width: 206 * fem,
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
                            text: 'Data Warga\n',
                          ),
                          TextSpan(
                            text: 'Entah Brantah RT/02 RW/03',
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
                // group3088Wh7 (150:1568)
                left: 34 * fem,
                top: 132 * fem,
                child: Container(
                  width: 290.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // budicahyadiEd7 (150:1520)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 52 * fem, 0 * fem),
                        child: Text(
                          'Budi Cahyadi',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3027xJD (150:1538)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0.23 * fem, 0 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                54 * fem, 0.23 * fem, 0 * fem, 0 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3027-v7T.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group30892os (150:1569)
                left: 34 * fem,
                top: 187 * fem,
                child: Container(
                  width: 290.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // aryomaulanamFf (150:1522)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 70 * fem, 0 * fem),
                        child: Text(
                          'Aryo Maulana',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3079t5P (150:1541)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0.23 * fem, 0 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                70 * fem, 0.23 * fem, 0 * fem, 0 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3079.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group3090aU1 (150:1570)
                left: 35 * fem,
                top: 242 * fem,
                child: Container(
                  width: 289.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // intanpermatasVay (150:1523)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 50 * fem, 0 * fem),
                        child: Text(
                          'Intan Permata S.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3080bP7 (150:1544)
                        margin: EdgeInsets.fromLTRB(
                            13 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                45 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3080.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group3091gQZ (150:1571)
                left: 35 * fem,
                top: 297 * fem,
                child: Container(
                  width: 289.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // sugiartoR7F (150:1524)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 140 * fem, 0 * fem),
                        child: Text(
                          'Sugiarto',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3081wrH (150:1547)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0.23 * fem, 0 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                45 * fem, 0.23 * fem, 0 * fem, 0 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3081.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group3092SY9 (150:1572)
                left: 34 * fem,
                top: 352 * fem,
                child: Container(
                  width: 290.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // andisudirmanAj3 (150:1525)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 80 * fem, 0 * fem),
                        child: Text(
                          'Andi Sudirman',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3082gBb (150:1550)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                45 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3082.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group3093a25 (150:1573)
                left: 34 * fem,
                top: 407 * fem,
                child: Container(
                  width: 290.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // jerrybastianJTs (150:1526)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 80 * fem, 0 * fem),
                        child: Text(
                          'Jerry Bastian',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group30832Ps (150:1553)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                65 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3083.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group3094W49 (150:1574)
                left: 34 * fem,
                top: 462 * fem,
                child: Container(
                  width: 290.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // yulisulistina2YH (150:1528)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 80 * fem, 0 * fem),
                        child: Text(
                          'Yuli Sulistina',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3084jxV (150:1556)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                65 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3084.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group30953CV (150:1575)
                left: 34 * fem,
                top: 517 * fem,
                child: Container(
                  width: 290.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // ekasekarwaTK (150:1529)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 100 * fem, 0 * fem),
                        child: Text(
                          'Eka Sekar W.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3085gmF (150:1559)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                35 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3085.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group3096a5w (150:1576)
                left: 34 * fem,
                top: 572 * fem,
                child: Container(
                  width: 400 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // verraangelinaguf (150:1530)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 40 * fem, 0 * fem),
                        child: Text(
                          'Verra Angelina',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3086ozH (150:1562)
                        margin: EdgeInsets.fromLTRB(
                            53 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3086.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group3097Jg9 (150:1577)
                left: 34 * fem,
                top: 627 * fem,
                child: Container(
                  width: 290.93 * fem,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // mhaikalrohman3Nq (150:1531)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 30 * fem, 0 * fem),
                        child: Text(
                          'M. Haikal Rohman',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // group3087mJq (150:1565)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                60 * fem, 0 * fem, 0 * fem, 0.23 * fem),
                            width: 6.93 * fem,
                            height: 11.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-3087.png',
                              width: 6.93 * fem,
                              height: 11.77 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
