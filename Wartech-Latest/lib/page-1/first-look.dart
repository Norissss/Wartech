import 'package:app_baru/page-1/sign-up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/page-1/login.dart';
import 'package:app_baru/utils.dart';
import 'package:app_baru/page-1/login.dart';

class FirstLook extends StatelessWidget {
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
            // firstlookJ49 (1:3)
            padding: EdgeInsets.fromLTRB(
                17 * fem, 110.43 * fem, 18 * fem, 120 * fem),
            width: double.infinity,
            height: 812 * fem,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-0.741, -0.945),
                radius: 1.15,
                colors: <Color>[Color(0xffe3e4ff), Color(0xff4478ff)],
                stops: <double>[0, 1],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group3kRw (1:16)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 28.61 * fem, 0 * fem),
                  width: 291.39 * fem,
                  height: 305.57 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // group10U73 (1:17)
                        left: 148.049407959 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 143.34 * fem,
                            height: 289.32 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-10.png',
                              width: 143.34 * fem,
                              height: 289.32 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // low1m69 (1:25)
                        left: 0 * fem,
                        top: 25.569152832 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 281 * fem,
                            height: 280 * fem,
                            child: Image.asset(
                              'assets/page-1/images/low-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group656q (1:26)
                        left: 47.2053833008 * fem,
                        top: 85.9102172852 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 28.69 * fem,
                            height: 11.06 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-6.png',
                              width: 28.69 * fem,
                              height: 11.06 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // ellipse11Ae5 (1:35)
                        left: 232.3150939941 * fem,
                        top: 42.3637084961 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 22.81 * fem,
                            height: 22.81 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(11.4041099548 * fem),
                                border: Border.all(color: Color(0xffffffff)),
                                color: Color(0x00c4c4c4),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group5GBK (1:36)
                        left: 245.0536117554 * fem,
                        top: 240.6076660156 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 29.36 * fem,
                            height: 29.99 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-5.png',
                              width: 29.36 * fem,
                              height: 29.99 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // selamatdatangdiaplikasiwartech (1:14)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 12 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 247 * fem,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                      children: [
                        TextSpan(
                          text: 'Selamat Datang\nDi Aplikasi ',
                        ),
                        TextSpan(
                          text: 'Wartech',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000e92),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // silahkanpilihloginjikasudahmem (1:15)
                  margin:
                      EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 30 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 229 * fem,
                  ),
                  child: Text(
                    'Silahkan Pilih Log In Jika Sudah Memiliki Akun\nAtau Sign Up Jika Belum Memiliki Akun',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                Container(
                  // group2G6m (1:13)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff5bb0ff),
                        borderRadius: BorderRadius.circular(100 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xbfffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  // group1b2Z (1:12)
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff5bb0ff),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xbfffffff),
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
