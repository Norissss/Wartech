import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/profile-2.dart';
import 'package:app_baru/page-1/riwayat.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Notifikasi extends StatefulWidget {
  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final uid = FirebaseAuth.instance.currentUser!.uid;

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
            // notifikasiZuw (334:71)
            width: double.infinity,
            height: 812 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // rectangle7hem (334:72)
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
                  // group3032bVF (334:82)
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
                            'assets/page-1/images/ellipse-19-NyT.png',
                          ),
                        ),
                      ),
                      child: Center(
                        // iconuserrAH (334:84)
                        child: SizedBox(
                          width: 24.34 * fem,
                          height: 30.28 * fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-user-ydf.png',
                            width: 24.34 * fem,
                            height: 30.28 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // aplikasipelayananwargaN8d (334:96)
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
                  // ellipse31XQq (334:100)
                  left: 283 * fem,
                  top: 723 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 75.11 * fem,
                      height: 76 * fem,
                      child: Image.asset(
                        'assets/page-1/images/ellipse-31.png',
                        width: 75.11 * fem,
                        height: 76 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // notification1eEZ (334:101)
                  left: 300 * fem,
                  top: 738 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 42 * fem,
                      height: 42 * fem,
                      child: Image.asset(
                        'assets/page-1/images/notification-1-pAq.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconlylightoutlinepaperMPs (334:102)
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
                          'assets/page-1/images/iconly-light-outline-paper-7Pj.png',
                          width: 32.62 * fem,
                          height: 38 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconlylightoutlinehomeSAR (334:105)
                  left: 170 * fem,
                  top: 740 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 35.8 * fem,
                      height: 37.56 * fem,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        user: _auth.currentUser!,
                                      )));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          'assets/page-1/images/iconly-light-outline-home-5s3.png',
                          width: 35.8 * fem,
                          height: 37.56 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // notifikasiKzu (334:248)
                  left: 18 * fem,
                  top: 63 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 98 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Notifikasi',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff4478ff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group3078cUD (334:249)
                  left: 18 * fem,
                  top: 119 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 18 * fem, 0 * fem, 29 * fem),
                    width: 339 * fem,
                    height: 580 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff2d4990),
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Container(
                        // group30774r1 (334:251)
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 55 * fem),
                        width: 331 * fem,
                        height: 700 * fem,
                        child: StreamBuilder(
                          stream: FirebaseDatabase.instance
                              .ref("surat/$uid")
                              .onValue,
                          builder: (BuildContext context,
                              AsyncSnapshot<dynamic> snapshot) {
                            if (snapshot.hasData) {
                              DataSnapshot dataSnapshot =
                                  snapshot.data.snapshot;
                              Map<dynamic, dynamic> values = dataSnapshot.value
                                      is Map<dynamic, dynamic>
                                  ? dataSnapshot.value as Map<dynamic, dynamic>
                                  : <dynamic, dynamic>{};
                              List<String> createdAtList = [];
                              List<String> jenisSuratList = [];
                              List<String> statusSuratList = [];

                              if (values.isEmpty) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      top: 0 * fem, left: 30 * fem),
                                  child: SizedBox(
                                    width: 243 * fem,
                                    height: 36 * fem,
                                    child: Text(
                                      'Anda belum membuat surat',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                values.forEach((key, value) {
                                  createdAtList.add(value['createdAt']);
                                  jenisSuratList.add(value['jenisSurat']);
                                  statusSuratList.add(value['statusSurat']);
                                });

                                // Create a Column widget for each 'createdAt' and 'jenisSurat' value
                                List<Widget> columnWidgets =
                                    createdAtList.asMap().entries.map((entry) {
                                  int idx = entry.key;
                                  String createdAt = entry.value;
                                  String message;

                                  switch (statusSuratList[idx]) {
                                    case 'Terima':
                                      message =
                                          '$createdAt\n${jenisSuratList[idx]} Sudah siap, silahkan ambil ke rumah ketua RT';
                                      break;
                                    case 'Tolak':
                                      message =
                                          '$createdAt\n${jenisSuratList[idx]} Anda ditolak';
                                      break;
                                    default:
                                      message =
                                          '$createdAt\n${jenisSuratList[idx]} Anda sedang diproses';
                                      break;
                                  }

                                  return Padding(
                                    padding: EdgeInsets.only(
                                        top: 0 *
                                            fem), // Increase the top padding by 50 for each item
                                    child: Align(
                                      child: SizedBox(
                                        width: 300 * fem,
                                        height: 60 * fem,
                                        child: Text(
                                          message, // Use jenisSuratList here
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList();

                                // Return a Stack with the Positioned widgets
                                return SingleChildScrollView(
                                    child: Column(children: columnWidgets));
                              }
                            } else {
                              // Show a loading spinner if the data is still loading
                              return CircularProgressIndicator();
                            }
                          },
                        )),
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
