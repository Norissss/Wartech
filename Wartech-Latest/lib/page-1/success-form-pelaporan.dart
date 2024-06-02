import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/utils.dart';

class SuccessFormPelaporan extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 350;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: double.infinity,
        child: Container(
          // successformpelaporancsK (127:43)
          padding:
              EdgeInsets.fromLTRB(65 * fem, 130 * fem, 64 * fem, 224 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff4479ff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  // group3031KFw (127:44)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  padding: EdgeInsets.fromLTRB(
                      37 * fem, 58 * fem, 37.21 * fem, 57.2 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(123 * fem),
                  ),
                  child: Center(
                    // icondoneoS1 (127:46)
                    child: SizedBox(
                      width: 171.79 * fem,
                      height: 130.8 * fem,
                      child: Image.asset(
                        'assets/page-1/images/icon-done-MhT.png',
                        width: 171.79 * fem,
                        height: 130.8 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // selamatandatelahberhasilmelapo (127:48)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                constraints: BoxConstraints(
                  maxWidth: 232 * fem,
                ),
                child: Text(
                  'Selamat Anda\nTelah Berhasil Melapor',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // group3030ar5 (127:49)
                margin:
                    EdgeInsets.fromLTRB(32 * fem, 0 * fem, 32 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                user: FirebaseAuth.instance.currentUser!)));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 36 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff5bb0ff),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Kembali',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xbfffffff),
                        ),
                      ),
                    ),
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
