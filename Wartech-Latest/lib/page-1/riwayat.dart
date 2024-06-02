import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/notifikasi.dart';
import 'package:app_baru/page-1/profile-2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../utils.dart';

class Riwayat extends StatelessWidget {
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
            // riwayat2EiH (334:2)
            width: double.infinity,
            height: 812 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // rectangle7jf3 (334:3)
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
                  // group30323Qq (334:13)
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
                            'assets/page-1/images/ellipse-19-wsb.png',
                          ),
                        ),
                      ),
                      child: Center(
                        // iconuser7vV (334:15)
                        child: SizedBox(
                          width: 24.34 * fem,
                          height: 30.28 * fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-user.png',
                            width: 24.34 * fem,
                            height: 30.28 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // aplikasipelayananwargaF17 (334:27)
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
                  // ellipse28SLV (334:30)
                  left: 30 * fem,
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
                  // riwayathari01022023rHj (334:150)
                  left: 18 * fem,
                  top: 50 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 119 * fem,
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
                              text: 'Riwayat\n',
                            ),
                            TextSpan(
                              text:
                                  'Hari,${DateFormat('dd/MM/yyyy').format(DateTime.now())}',
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
                  // group3078BUR (334:151)
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
                    child: FutureBuilder(
                      // Fetch the data from Firebase
                      future:
                          FirebaseDatabase.instance.ref("surat/$uid").once(),
                      builder: (BuildContext context,
                          AsyncSnapshot<DatabaseEvent> snapshot) {
                        if (snapshot.hasData) {
                          // Get the data from the snapshot
                          Map<dynamic, dynamic> values = snapshot
                                  .data!.snapshot.value is Map<dynamic, dynamic>
                              ? snapshot.data!.snapshot.value
                                  as Map<dynamic, dynamic>
                              : <dynamic, dynamic>{};

                          // Check if there are any values
                          if (values.isEmpty) {
                            // If there are no values, return a Text widget saying "Anda belum membuat surat"
                            return Text('Anda belum membuat surat');
                          } else {
                            // Convert the values to a list
                            List<dynamic> suratList = values.values.toList();

                            // Return a ListView.builder to generate the Positioned widgets
                            return ListView.builder(
                              padding: EdgeInsets.only(
                                  top: 0 * fem), // Add top padding here,
                              itemCount: suratList.length,
                              itemBuilder: (context, index) {
                                // Get the current surat
                                Map<Object?, Object?> surat =
                                    suratList[index] as Map<Object?, Object?>;

                                // Return the Positioned widget
                                return Padding(
                                  padding: EdgeInsets.only(
                                      top: index == 0 ? 0 * fem : 20 * fem,
                                      left: 27 * fem),
                                  child: Container(
                                    width: 400 * fem,
                                    height: 25 *
                                        fem, // Set the height for a single item
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group3098ow3 (334:169)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 27 * fem, 0 * fem),
                                          width: 55 * fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: (surat['statusSurat'] ==
                                                        'Terima' ||
                                                    surat['statusSurat'] ==
                                                        'Tolak')
                                                ? Color(0xff4bc949)
                                                : Color(
                                                    0xff4479ff), // Change color based on status,
                                            borderRadius:
                                                BorderRadius.circular(10 * fem),
                                          ),
                                          child: Center(
                                            child: Text(
                                              (surat['statusSurat'] ==
                                                          'Terima' ||
                                                      surat['statusSurat'] ==
                                                          'Tolak')
                                                  ? 'Selesai'
                                                  : 'Proses', // Change text based on status,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5 * ffem / fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // pelaporan69T (334:172)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 50 * fem, 0 * fem),
                                          child: Text(
                                            surat['jenisSurat']
                                                as String, // Cast the jenisSurat value to String
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        } else {
                          // Show a loading spinner if the data is still loading
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  ),
                ),
                //   Positioned(
                //     // group3117tJH (334:168)
                //     left: 31 * fem,
                //     top: 134 * fem,
                //     child: Container(
                //       width: 301.45 * fem,
                //       height: 25 * fem,
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             // group3098ow3 (334:169)
                //             margin: EdgeInsets.fromLTRB(
                //                 0 * fem, 0 * fem, 27 * fem, 0 * fem),
                //             width: 55 * fem,
                //             height: double.infinity,
                //             decoration: BoxDecoration(
                //               color: Color(0xff4479ff),
                //               borderRadius: BorderRadius.circular(10 * fem),
                //             ),
                //             child: Center(
                //               child: Text(
                //                 'Proses',
                //                 style: SafeGoogleFont(
                //                   'Poppins',
                //                   fontSize: 14 * ffem,
                //                   fontWeight: FontWeight.w600,
                //                   height: 1.5 * ffem / fem,
                //                   color: Color(0xffffffff),
                //                 ),
                //               ),
                //             ),
                //           ),
                //           Container(
                //             // pelaporan69T (334:172)
                //             margin: EdgeInsets.fromLTRB(
                //                 0 * fem, 0 * fem, 132.52 * fem, 0 * fem),
                //             child: Text(
                //               'Pelaporan',
                //               style: SafeGoogleFont(
                //                 'Poppins',
                //                 fontSize: 15 * ffem,
                //                 fontWeight: FontWeight.w700,
                //                 height: 1.5 * ffem / fem,
                //                 color: Color(0xffffffff),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                //   Positioned(
                //     // group3124Ebf (334:224)
                //     left: 31 * fem,
                //     top: 519 * fem,
                //     child: Container(
                //       width: 301.45 * fem,
                //       height: 25 * fem,
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             // group3105kK7 (334:225)
                //             margin: EdgeInsets.fromLTRB(
                //                 0 * fem, 0 * fem, 27 * fem, 0 * fem),
                //             width: 55 * fem,
                //             height: double.infinity,
                //             decoration: BoxDecoration(
                //               color: Color(0xff4bc949),
                //               borderRadius: BorderRadius.circular(10 * fem),
                //             ),
                //             child: Center(
                //               child: Text(
                //                 'Selesai',
                //                 style: SafeGoogleFont(
                //                   'Poppins',
                //                   fontSize: 14 * ffem,
                //                   fontWeight: FontWeight.w600,
                //                   height: 1.5 * ffem / fem,
                //                   color: Color(0xffffffff),
                //                 ),
                //               ),
                //             ),
                //           ),
                //           Container(
                //             // pelaporanyxZ (334:231)
                //             margin: EdgeInsets.fromLTRB(
                //                 0 * fem, 0 * fem, 132.52 * fem, 0 * fem),
                //             child: Text(
                //               'Pelaporan',
                //               style: SafeGoogleFont(
                //                 'Poppins',
                //                 fontSize: 15 * ffem,
                //                 fontWeight: FontWeight.w700,
                //                 height: 1.5 * ffem / fem,
                //                 color: Color(0xffffffff),
                //               ),
                //             ),
                //           ),
                //           Expanded(
                //             child: Container(
                //               // group3114Vvu (334:228)
                //               margin: EdgeInsets.fromLTRB(
                //                   0 * fem, 0.77 * fem, 0 * fem, 0 * fem),
                //               child: TextButton(
                //                 onPressed: () {},
                //                 style: TextButton.styleFrom(
                //                   padding: EdgeInsets.zero,
                //                 ),
                //                 child: Container(
                //                   width: 6.93 * fem,
                //                   height: 11.77 * fem,
                //                   child: Image.asset(
                //                     'assets/page-1/images/group-3114.png',
                //                     width: 6.93 * fem,
                //                     height: 11.77 * fem,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                Positioned(
                  // notification1eEZ (334:101)
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
                          'assets/page-1/images/notification-1-pAq.png',
                          fit: BoxFit.cover,
                        ),
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
                        onPressed: () {},
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
                  // iconlylightoutlinehomekEh (334:36)
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
                          'assets/page-1/images/iconly-light-outline-home.png',
                          width: 35.8 * fem,
                          height: 37.56 * fem,
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
