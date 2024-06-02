import 'package:app_baru/page-1/profile-2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Security extends StatefulWidget {
  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  final katasSandiLamaController = TextEditingController();
  final konfirmasiKataSandiLamaController = TextEditingController();
  final kataSandiBaruController = TextEditingController();
  final konfirmasiKataSandiBaruController = TextEditingController();
  final emailAndaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // securityDSM (336:427)
              width: double.infinity,
              height: 700 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle7wNM (336:428)
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
                    // group3027eXf (336:429)
                    left: 17 * fem,
                    top: 50 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 13.21 * fem,
                        height: 22.22 * fem,
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
                          child: Image.asset(
                            'assets/page-1/images/group-3027-nZT.png',
                            width: 13.21 * fem,
                            height: 22.22 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // securityybs (336:436)
                    left: 136 * fem,
                    top: 44 * fem,
                    child: Align(
                      child: Container(
                        width: 140 * fem,
                        height: 36 * fem,
                        child: Text(
                          'Keamanan',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff4478ff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group1231f (336:437)
                    left: 28 * fem,
                    top: 121 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0x668f8f8f),
                          ),
                          child: TextField(
                            controller: katasSandiLamaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Kata Sandi Lama',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3046SpV (336:440)
                    left: 28 * fem,
                    top: 191 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0x668f8f8f),
                          ),
                          child: TextField(
                            controller: konfirmasiKataSandiLamaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Konfirmasi Kata Sandi Lama',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3047suo (336:443)
                    left: 28 * fem,
                    top: 261 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0x668f8f8f),
                          ),
                          child: TextField(
                            controller: kataSandiBaruController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Kata Sandi Baru',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3048wem (336:446)
                    left: 28 * fem,
                    top: 331 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0x668f8f8f),
                          ),
                          child: TextField(
                            controller: konfirmasiKataSandiBaruController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Konfirmasi Kata Sandi Baru',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3049Cqb (336:449)
                    left: 28 * fem,
                    top: 401 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0x668f8f8f),
                          ),
                          child: TextField(
                            controller: emailAndaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Email Anda',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3045gsw (336:433)
                    left: 17 * fem,
                    top: 470 * fem,
                    child: TextButton(
                      onPressed: () async {
                        if (emailAndaController.text !=
                            FirebaseAuth.instance.currentUser!.email) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Email tidak sesuai'),
                            ),
                          );
                          return;
                        }

                        // cek apakah kata sandi lama sesuai dengan kata sandi yang ada di database
                        User user = FirebaseAuth.instance.currentUser!;
                        AuthCredential credential =
                            EmailAuthProvider.credential(
                          email: user.email!,
                          password: katasSandiLamaController.text,
                        );

                        try {
                          UserCredential userCredential = await user
                              .reauthenticateWithCredential(credential);
                          // Jika kode di atas tidak melempar eksepsi, maka kata sandi cocok
                          print('Kata sandi cocok');
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'wrong-password') {
                            print('Kata sandi tidak cocok');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Kata sandi lama tidak sesuai'),
                              ),
                            );
                            return;
                          }
                        }

                        if (katasSandiLamaController.text !=
                            konfirmasiKataSandiLamaController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'KonfirmasiKata sandi lama tidak sesuai'),
                            ),
                          );
                          return;
                        }

                        if (kataSandiBaruController.text !=
                            konfirmasiKataSandiBaruController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Konfirmasi Kata sandi baru tidak sesuai'),
                            ),
                          );
                          return;
                        }

                        FirebaseAuth.instance.currentUser!
                            .updatePassword(kataSandiBaruController.text)
                            .then((_) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        }).catchError((error) {
                          print("Error updating password: $error");
                          // Handle the error here - show a dialog, for example
                        });
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 339 * fem,
                        height: 54 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xfffef400),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Kirim',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff8f8f8f),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vector3suX (336:501)
                    left: 0 * fem,
                    top: 499 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 375 * fem,
                        height: 0 * fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-3.png',
                          width: 375 * fem,
                          height: 0 * fem,
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
    );
  }
}
