import 'package:app_baru/page-1/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/utils.dart';

class SuccessSurat extends StatelessWidget {
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
          // successsurathyB (150:894)
          padding:
              EdgeInsets.fromLTRB(65 * fem, 175 * fem, 64 * fem, 176 * fem),
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
                  // group3031R8V (150:895)
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
                    // icondone8Ho (150:897)
                    child: SizedBox(
                      width: 171.79 * fem,
                      height: 130.8 * fem,
                      child: Image.asset(
                        'assets/page-1/images/icon-done.png',
                        width: 171.79 * fem,
                        height: 130.8 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // suratandaakansegerakamiproses3 (150:899)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 53 * fem),
                constraints: BoxConstraints(
                  maxWidth: 246 * fem,
                ),
                child: Text(
                  'Surat anda akan segera\nkami proses',
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
                // group30307vR (150:900)
                margin:
                    EdgeInsets.fromLTRB(32 * fem, 0 * fem, 32 * fem, 15 * fem),
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
