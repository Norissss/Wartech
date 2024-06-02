import 'package:app_baru/page-1/account.dart';
import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/security.dart';
import 'package:app_baru/page-1/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';
import 'login.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String userName = '';
  String userNIK = '';
  String userAgama = '';
  String userAlamat = '';
  String userPekerjaan = '';
  String userNoTelpon = '';
  String userStatus = '';
  String userJenkel = '';

  @override
  void initState() {
    super.initState();
    if (_auth.currentUser != null) {
      // Listen for name changes
      DatabaseReference nameRef =
          FirebaseDatabase.instance.ref('users/${_auth.currentUser!.uid}/name');
      nameRef.onValue.listen((event) {
        final String name =
            event.snapshot.exists ? event.snapshot.value.toString() : 'No name';
        setState(() {
          userName = name;
        });
      });

      // Listen for NIK changes
      DatabaseReference nikRef =
          FirebaseDatabase.instance.ref('users/${_auth.currentUser!.uid}/NIK');
      nikRef.onValue.listen((event) {
        final String nik =
            event.snapshot.exists ? event.snapshot.value.toString() : 'No NIK';
        setState(() {
          userNIK = nik;
        });
      });

      // Listen for agama changes
      DatabaseReference agamaRef = FirebaseDatabase.instance
          .ref('users/${_auth.currentUser!.uid}/agama');
      agamaRef.onValue.listen((event) {
        final String agama = event.snapshot.exists
            ? event.snapshot.value.toString()
            : 'No agama';
        setState(() {
          userAgama = agama;
        });
      });

      // Listen for noTelpon changes
      DatabaseReference noTelponRef = FirebaseDatabase.instance
          .ref('users/${_auth.currentUser!.uid}/noTelpon');
      noTelponRef.onValue.listen((event) {
        final String noTelpon = event.snapshot.exists
            ? event.snapshot.value.toString()
            : 'No noTelpon';
        setState(() {
          userNoTelpon = noTelpon;
        });
      });

      // Listen for pekerjaan changes
      DatabaseReference pekerjaanRef = FirebaseDatabase.instance
          .ref('users/${_auth.currentUser!.uid}/pekerjaan');
      pekerjaanRef.onValue.listen((event) {
        final String pekerjaan = event.snapshot.exists
            ? event.snapshot.value.toString()
            : 'No pekerjaan';
        setState(() {
          userPekerjaan = pekerjaan;
        });
      });

      // Listen for status changes
      DatabaseReference statusRef = FirebaseDatabase.instance
          .ref('users/${_auth.currentUser!.uid}/status');
      statusRef.onValue.listen((event) {
        final String status = event.snapshot.exists
            ? event.snapshot.value.toString()
            : 'No status';
        setState(() {
          userStatus = status;
        });
      });

      // Listen for jenkel changes
      DatabaseReference jenkelRef = FirebaseDatabase.instance
          .ref('users/${_auth.currentUser!.uid}/jenkel');
      jenkelRef.onValue.listen((event) {
        final String jenkel = event.snapshot.exists
            ? event.snapshot.value.toString()
            : 'No jenkel';
        setState(() {
          userJenkel = jenkel;
        });
      });

      // Listen for alamat changes
      DatabaseReference alamatRef = FirebaseDatabase.instance
          .ref('users/${_auth.currentUser!.uid}/alamat');
      alamatRef.onValue.listen((event) {
        final String alamat = event.snapshot.exists
            ? event.snapshot.value.toString()
            : 'No alamat';
        setState(() {
          userAlamat = alamat;
        });
      });
    }
  }

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
            // profileE4u (74:2)
            width: double.infinity,
            height: 812 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // rectangle7wV7 (74:4)
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
                  // group30273HF (74:5)
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
                                  builder: (context) =>
                                      HomePage(user: _auth.currentUser!)));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          'assets/page-1/images/group-3027-N3w.png',
                          width: 13.21 * fem,
                          height: 22.22 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle35iPP (336:487)
                  left: 0 * fem,
                  top: 108 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 375 * fem,
                      height: 288 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff2d4990),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // budisuciptodFT (74:12)
                  left: 17 * fem,
                  top: 125 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 300 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Nama : ${userName}',
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
                  // budisucipto123gmailcomW4M (74:13)
                  left: 18 * fem,
                  top: 155 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 250 * fem,
                      height: 23 * fem,
                      child: Text(
                        "Email: ${_auth.currentUser!.email}",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group3040BRP (74:30)
                  left: 133 * fem,
                  top: 718 * fem,
                  child: TextButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 109 * fem,
                      height: 43 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffff6565),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Log Out',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xbfffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group30486gm (96:9)
                  left: 18 * fem,
                  top: 421 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 14 * fem, 31.71 * fem, 12 * fem),
                      width: 339 * fem,
                      height: 56 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffd9d9d9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25 * fem),
                          topRight: Radius.circular(25 * fem),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // accountNPP (74:26)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 190 * fem, 0 * fem),
                            child: Text(
                              'Akun',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group3049A4M (96:11)
                  left: 18 * fem,
                  top: 476.9999694824 * fem,
                  child: Container(
                    width: 339 * fem,
                    height: 50 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle19fnd (96:4)
                          left: 0 * fem,
                          top: 0.0000305176 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 339 * fem,
                              height: 50 * fem,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Security()));
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffd9d9d9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // securitysN5 (74:23)
                          left: 24 * fem,
                          top: 9.0000305176 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 120 * fem,
                              height: 30 * fem,
                              child: Text(
                                'Keamanan',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // group3047Npd (96:8)
                  left: 18 * fem,
                  top: 527 * fem,
                  child: Container(
                    width: 339 * fem,
                    height: 50 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle2071X (96:5)
                          left: 0 * fem,
                          top: 0.0000305176 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 339 * fem,
                              height: 50 * fem,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Settings()));
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffd9d9d9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // settingsE69 (74:24)
                          left: 24 * fem,
                          top: 10.0000305176 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 200 * fem,
                              height: 30 * fem,
                              child: Text(
                                'Pengaturan',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // group304633b (96:7)
                  left: 18 * fem,
                  top: 577 * fem,
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Kebijakan dan Privasi'),
                            content: const SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(
                                    'Wartech adalah aplikasi yang bertujuan untuk memudahkan para warga (RT) membuat surat permohonan dan juga pelaporan. Dengan adanya Wartech, anda tidak perlu lagi membuat surat permohonan secara manual yang meliputi; \n1. Surat Keterangan Domisili \n2.  Surat Pengantar Menikah \n3. Surat Keterangan Kematian \n4. Pelaporan \nAda juga Notifikasi yang tersedia dan Riwayat untuk mengetahui Proses Surat atau laporan yang telah anda minta. \nUntuk Bantuan lebih lanjut, anda bisa menghubungi wartech@gmail.com atau whatsapp ke 081958196395',
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Tutup'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 11 * fem, 31.71 * fem, 9 * fem),
                      width: 339 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffd9d9d9),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25 * fem),
                          bottomLeft: Radius.circular(25 * fem),
                        ),
                      ),
                      child: Container(
                        // autogroupmwx1JkD (PAsCYiRqhU11te49UxMwx1)
                        width: 500 * fem,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // help4Db (74:25)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Bantuan',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
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
                  // profile477 (74:46)
                  left: 148 * fem,
                  top: 44 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 79 * fem,
                      height: 36 * fem,
                      child: Text(
                        'Profil',
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
                  // desaentahbrantahrt01rw02kecbra (336:488)
                  left: 17 * fem,
                  top: 191 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 329 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Alamat : $userAlamat',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // SdT (336:489)
                  left: 17 * fem,
                  top: 214 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 300 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Nomor Telepon : $userNoTelpon',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // xxxxxxxxxxxxwaD (336:490)
                  left: 17 * fem,
                  top: 250 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 200 * fem,
                      height: 23 * fem,
                      child: Text(
                        'NIK: $userNIK',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // lakilakiF57 (336:491)
                  left: 17 * fem,
                  top: 273 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 200 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Jenis Kelamin : ${userJenkel}',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // islamkGm (336:492)
                  left: 17 * fem,
                  top: 296 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 150 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Agama: ${userAgama}',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // wiraswastaTgy (336:493)
                  left: 17 * fem,
                  top: 332 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 200 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Pekerjaan : $userPekerjaan',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // sudahmenikahZzu (336:494)
                  left: 17 * fem,
                  top: 355 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 200 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Status: ${userStatus}',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
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
