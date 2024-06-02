import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/profile-2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String name = "";
  String status = "";
  String pekerjaan = "";
  String alamat = "";
  String agama = "";
  String noTelpon = "";
  String jenkel = "";

  final nameController = TextEditingController();
  final statusController = TextEditingController();
  final pekerjaanController = TextEditingController();
  final alamatController = TextEditingController();
  final agamaController = TextEditingController();
  final noTelponController = TextEditingController();
  final jenkelController = TextEditingController();

  @override
  void dispose() {
    // Jika Anda memiliki controller, jangan lupa untuk dispose mereka
    nameController.dispose();
    statusController.dispose();
    pekerjaanController.dispose();
    alamatController.dispose();
    agamaController.dispose();
    noTelponController.dispose();
    jenkelController.dispose();

    super.dispose();
  }

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
              // accountjDo (336:357)
              width: double.infinity,
              height: 800 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle7FC9 (336:358)
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
                    // group3027jt1 (336:359)
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
                            'assets/page-1/images/group-3027-DfT.png',
                            width: 13.21 * fem,
                            height: 22.22 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // accountHo3 (336:403)
                    left: 135 * fem,
                    top: 44 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 105 * fem,
                        height: 36 * fem,
                        child: Text(
                          'Account',
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
                    // group121js (336:405)
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
                            controller: nameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Ubah Nama Anda',
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
                    // group30464rZ (336:408)
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
                            controller: statusController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Ubah Status Anda',
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
                    // group30476oF (336:411)
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
                            controller: pekerjaanController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Ubah Pekerjaan Anda',
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
                    // group3048W6H (336:415)
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
                            controller: alamatController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Ubah Alamat Anda',
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
                    // group3048W6H (336:415)
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
                            controller: agamaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Ubah Agama Anda',
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
                    // group3048W6H (336:415)
                    left: 28 * fem,
                    top: 471 * fem,
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
                            controller: noTelponController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Ubah Nomor Telepon Anda',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            keyboardType: TextInputType.number,
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
                    // group3048W6H (336:415)
                    left: 28 * fem,
                    top: 541 * fem,
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
                            controller: jenkelController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Ubah Jenis Kelamin Anda',
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
                    // group30452cD (336:373)
                    left: 17 * fem,
                    top: 620 * fem,
                    child: Container(
                      width: 339 * fem,
                      height: 54 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xfffef400),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          if (nameController.text.isNotEmpty ||
                              statusController.text.isNotEmpty ||
                              pekerjaanController.text.isNotEmpty ||
                              alamatController.text.isNotEmpty ||
                              agamaController.text.isNotEmpty ||
                              noTelponController.text.isNotEmpty ||
                              jenkelController.text.isNotEmpty) {
                            await FirebaseDatabase.instance
                                .ref(
                                    'users/${FirebaseAuth.instance.currentUser!.uid}')
                                .update({
                              if (nameController.text.isNotEmpty)
                                "name": nameController.text,
                              if (statusController.text.isNotEmpty)
                                "status": statusController.text,
                              if (pekerjaanController.text.isNotEmpty)
                                "pekerjaan": pekerjaanController.text,
                              if (alamatController.text.isNotEmpty)
                                "alamat": alamatController.text,
                              if (agamaController.text.isNotEmpty)
                                "agama": agamaController.text,
                              if (noTelponController.text.isNotEmpty)
                                "noTelpon": noTelponController.text,
                              if (jenkelController.text.isNotEmpty)
                                "jenkel": jenkelController.text,
                            });

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          }
                        },
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
                    // vector26jo (336:424)
                    left: 0 * fem,
                    top: 471 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 375 * fem,
                        height: 0 * fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-2-Tuf.png',
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
