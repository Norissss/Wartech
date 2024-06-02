import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/success-surat-rV7.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/utils.dart';
import 'package:intl/intl.dart';

class SuratPengantarNikah extends StatefulWidget {
  @override
  State<SuratPengantarNikah> createState() => _SuratPengantarNikahState();
}

class _SuratPengantarNikahState extends State<SuratPengantarNikah> {
  final _auth = FirebaseAuth.instance;
  String? _jenisKelamin;
  String? _agama;
  String? _agamaAyah;
  String? _agamaIbu;

  String userName = '';
  String userNIK = '';
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
          namaLengkapAndaController.text = name;
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
          pekerjaanAndaController.text = pekerjaan;
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
          statusAndaController.text = status;
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
          _jenisKelamin = jenkel;
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

      // lister for agama changes
      DatabaseReference agamaRef =
          FirebaseDatabase.instance.ref('users/${_auth.currentUser!.uid}/agama');
      agamaRef.onValue.listen((event) {
        final String agama =
            event.snapshot.exists ? event.snapshot.value.toString() : 'No agama';
        setState(() {
          _agama = agama;
        });
      });     
    }
  }

  final namaLengkapAndaController = TextEditingController();
  final tempatTanggalLahirAndaController = TextEditingController();
  final pekerjaanAndaController = TextEditingController();
  final statusAndaController = TextEditingController();
  final namaLengkapAyahController = TextEditingController();
  final tempatTanggalLahirAyahController = TextEditingController();
  final pekerjaanAyahController = TextEditingController();
  final alamatAyahController = TextEditingController();
  final namaLengkapIbuController = TextEditingController();
  final tempatTanggalLahirIbuController = TextEditingController();
  final pekerjaanIbuController = TextEditingController();
  final alamatIbuController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement all dispose from the controller
    namaLengkapAndaController.dispose();
    tempatTanggalLahirAndaController.dispose();
    pekerjaanAndaController.dispose();
    statusAndaController.dispose();
    namaLengkapAyahController.dispose();
    tempatTanggalLahirAyahController.dispose();
    pekerjaanAyahController.dispose();
    alamatAyahController.dispose();
    namaLengkapIbuController.dispose();
    tempatTanggalLahirIbuController.dispose();
    pekerjaanIbuController.dispose();
    alamatIbuController.dispose();
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
              // suratpengantarnikahKSy (150:190)
              width: double.infinity,
              height: 1800 * fem,
              decoration: BoxDecoration(
                color: Color(0xff4479ff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle7SGh (150:191)
                    left: 0 * fem,
                    top: 50 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 375 * fem,
                        height: 711 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff4479ff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group12wz9 (150:192)
                    left: 28 * fem,
                    top: 150 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: namaLengkapAndaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText:
                                  'Masukan Nama Lengkap Anda (${userName})',
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
                    // group3022N3s (150:195)
                    left: 28 * fem,
                    top: 241 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: tempatTanggalLahirAndaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Tempat Tanggal Lahir Anda',
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
                    // group3023ypM (150:198)
                    left: 28 * fem,
                    top: 332 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              21 * fem, 19 * fem, 21.25 * fem, 20 * fem),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(100 * fem),
                          ),
                          child: DropdownButton<String>(
                            hint: Text('Pilih Jenis Kelamin Anda'),
                            value: _jenisKelamin,
                            onChanged: (String? newValue) {
                              setState(() {
                                _jenisKelamin = newValue;
                              });
                            },
                            items: [
                              DropdownMenuItem<String>(
                                value: 'Laki-Laki',
                                child: Text('Laki-Laki'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Perempuan',
                                child: Text('Perempuan'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3032fKo (150:201)
                    left: 28 * fem,
                    top: 514 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: pekerjaanAndaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText:
                                  'Masukan Pekerjaan Anda (${userPekerjaan})',
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
                    // group3033hvh (150:204)
                    left: 28 * fem,
                    top: 423 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          21 * fem, 19 * fem, 21.25 * fem, 20 * fem),
                      width: 320 * fem,
                      height: 57 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(100 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // pilihagamaajb (150:206)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: DropdownButton<String>(
                                hint: Text('Pilih Agama'),
                                value: _agama,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _agama = newValue;
                                  });
                                },
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'Kristen',
                                    child: Text('Kristen'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Islam',
                                    child: Text('Islam'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Hindu',
                                    child: Text('Hindu'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Buddha',
                                    child: Text('Buddha'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Katolik',
                                    child: Text('Katolik'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Konghucu',
                                    child: Text('Konghucu'),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group30346R7 (150:220)
                    left: 28 * fem,
                    top: 605 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: statusAndaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Status Anda (${userStatus})',
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
                    // datadiriayahMZb (150:256)
                    left: 28 * fem,
                    top: 700 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Text(
                          'Data Diri Ayah',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group12WLh (150:226)
                    left: 28 * fem,
                    top: 750 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: namaLengkapAyahController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 15, top: 10),
                              disabledBorder: InputBorder.none,
                              hintText: 'Masukan Nama Lengkap Ayah Kandung',
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
                    // group3022M6R (150:229)
                    left: 28 * fem,
                    top: 840 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: tempatTanggalLahirAyahController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 15, top: 10),
                              disabledBorder: InputBorder.none,
                              hintText: 'Tempat Tanggal Lahir Ayah Kandung',
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
                    // group3033hvh (150:204)
                    left: 28 * fem,
                    top: 930 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          21 * fem, 19 * fem, 21.25 * fem, 20 * fem),
                      width: 320 * fem,
                      height: 57 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(100 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // pilihagamaajb (150:206)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: DropdownButton<String>(
                                hint: Text('Pilih Agama Ayah'),
                                value: _agamaAyah,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _agamaAyah = newValue;
                                  });
                                },
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'Kristen',
                                    child: Text('Kristen'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Islam',
                                    child: Text('Islam'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Hindu',
                                    child: Text('Hindu'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Buddha',
                                    child: Text('Buddha'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Katolik',
                                    child: Text('Katolik'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Konghucu',
                                    child: Text('Konghucu'),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group3032bmT (150:238)
                    left: 28 * fem,
                    top: 1020 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: pekerjaanAyahController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Pekerjaan Ayah Kandung',
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
                    // group3032bmT (150:238)
                    left: 28 * fem,
                    top: 1110 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: alamatAyahController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Alamat Ayah Kandung',
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
                    // datadiriibuRHB (150:287)
                    left: 28 * fem,
                    top: 1200 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Text(
                          'Data Diri Ibu',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group12p57 (150:263)
                    left: 28 * fem,
                    top: 1250 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: namaLengkapIbuController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Nama Lengkap Ibu Kandung',
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
                    // group3022Dd3 (150:266)
                    left: 28 * fem,
                    top: 1340 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: tempatTanggalLahirIbuController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 15, top: 10),
                              disabledBorder: InputBorder.none,
                              hintText:
                                  'Masukan Tempat Tanggal Lahir Ibu Kandung',
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
                    // group3033gYZ (150:275)
                    left: 28 * fem,
                    top: 1430 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              21 * fem, 19 * fem, 21.25 * fem, 20 * fem),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(100 * fem),
                          ),
                          child: DropdownButton<String>(
                              hint: Text('Pilih Agama Ibu'),
                              value: _agamaIbu,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _agamaIbu = newValue;
                                  print(_agama);
                                });
                              },
                              items: [
                                DropdownMenuItem<String>(
                                  value: 'Kristen',
                                  child: Text('Kristen'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Islam',
                                  child: Text('Islam'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Hindu',
                                  child: Text('Hindu'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Buddha',
                                  child: Text('Buddha'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Katolik',
                                  child: Text('Katolik'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Konghucu',
                                  child: Text('Konghucu'),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3032rvu (150:269)
                    left: 28 * fem,
                    top: 1520 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: pekerjaanIbuController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Pekerjaan Ibu Kandung',
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
                    // group3022Dd3 (150:266)
                    left: 28 * fem,
                    top: 1610 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 320 * fem,
                        height: 57 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: alamatIbuController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 15, top: 10),
                              disabledBorder: InputBorder.none,
                              hintText: 'Masukan Alamat Ibu Kandung',
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
                    // group3029bub (150:210)
                    left: 28 * fem,
                    top: 1700 * fem,
                    child: TextButton(
                      onPressed: () {
                        //validate all the form field to make sure its not empty
                        if (namaLengkapAndaController.text.isEmpty ||
                            tempatTanggalLahirAndaController.text.isEmpty ||
                            pekerjaanAndaController.text.isEmpty ||
                            statusAndaController.text.isEmpty ||
                            namaLengkapAyahController.text.isEmpty ||
                            tempatTanggalLahirAyahController.text.isEmpty ||
                            pekerjaanAyahController.text.isEmpty ||
                            alamatAyahController.text.isEmpty ||
                            namaLengkapIbuController.text.isEmpty ||
                            tempatTanggalLahirIbuController.text.isEmpty ||
                            pekerjaanIbuController.text.isEmpty ||
                            alamatIbuController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Tolong isi semua data'),
                            ),
                          );
                          return;
                        }

                        final uid = FirebaseAuth.instance.currentUser?.uid;
                        // Reference to the user's data in the database
                        DatabaseReference ref =
                            FirebaseDatabase.instance.ref("surat/$uid").push();

                        // Save data to the database
                        ref.set({
                          "namaLengkapAnda": namaLengkapAndaController.text,
                          "tempatTanggalLahirAnda":
                              tempatTanggalLahirAndaController.text,
                          "jenisKelamin": _jenisKelamin,
                          "pekerjaanAnda": pekerjaanAndaController.text,
                          "agama": _agama,
                          "statusAnda": statusAndaController.text,
                          "namaLengkapAyah": namaLengkapAyahController.text,
                          "tempatTanggalLahirAyah":
                              tempatTanggalLahirAyahController.text,
                          "agamaAyah": _agamaAyah,
                          "pekerjaanAyah": pekerjaanAyahController.text,
                          "alamatAyah": alamatAyahController.text,
                          "namaLengkapIbu": namaLengkapIbuController.text,
                          "tempatTanggalLahirIbu":
                              tempatTanggalLahirIbuController.text,
                          "agamaIbu": _agamaIbu,
                          "pekerjaanIbu": pekerjaanIbuController.text,
                          "alamatIbu": alamatIbuController.text,
                          "statusSurat": "Proses",
                          'createdAt':
                              DateFormat('dd/MM/yyyy').format(DateTime.now()),
                          'jenisSurat': 'Surat Pengantar Nikah',
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SuccessSurat()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 320 * fem,
                        height: 57 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xfffef400),
                          borderRadius: BorderRadius.circular(100 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Kirim',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0x7f1e1e1e),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group3027rqX (150:213)
                    left: 17 * fem,
                    top: 56 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 13.21 * fem,
                        height: 22.22 * fem,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(
                                          user: FirebaseAuth
                                              .instance.currentUser!,
                                        )));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/page-1/images/group-3027-d5T.png',
                            width: 13.21 * fem,
                            height: 22.22 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // suratpengantarnikah9Jq (150:216)
                    left: 83 * fem,
                    top: 50 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 209 * fem,
                        height: 72 * fem,
                        child: Text(
                          'Surat\nPengantar Nikah',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w700,
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
      ),
    );
  }
}
