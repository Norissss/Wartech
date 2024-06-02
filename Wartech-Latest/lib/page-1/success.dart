import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/utils.dart';

class Success extends StatefulWidget {
  final String name;
  final String alamat;
  final String noTelpon;
  final String NIK;
  final String agama;
  final String pekerjaan;
  final String status;
  final String jenkel;
  Success(
      {required this.name,
      required this.alamat,
      required this.noTelpon,
      required this.NIK,
      required this.agama,
      required this.pekerjaan,
      required this.status,
      required this.jenkel});
  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
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
              EdgeInsets.fromLTRB(50 * fem, 110 * fem, 50 * fem, 224 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff4479ff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group3031KFw (127:44)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
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
              Expanded(
                flex: 1,
                child: Container(
                  // selamatandatelahberhasilmelapo (127:48)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 200 * fem,
                  ),
                  child: Text(
                    'Selamat Anda\nTelah Berhasil Mendaftar',
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
              ),
              Container(
                // group3030ar5 (127:49)
                margin:
                    EdgeInsets.fromLTRB(32 * fem, 0 * fem, 32 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {
                    final uid = FirebaseAuth.instance.currentUser?.uid;
                    if (uid != null) {
                      // Reference to the user's data in the database
                      DatabaseReference ref =
                          FirebaseDatabase.instance.ref("users/$uid");

                      // Store all the data the user's UID
                      ref.set({
                        'name': widget.name,
                        'alamat': widget.alamat,
                        'noTelpon': widget.noTelpon,
                        'NIK': widget.NIK,
                        'agama': widget.agama,
                        'pekerjaan': widget.pekerjaan,
                        'status': widget.status,
                        'jenkel': widget.jenkel,
                      });
                    }
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
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
                        'Log in',
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
