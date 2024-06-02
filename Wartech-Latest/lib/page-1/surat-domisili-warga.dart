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

class SuratDomisiliWarga extends StatefulWidget {
  @override
  State<SuratDomisiliWarga> createState() => _SuratDomisiliWargaState();
}

class _SuratDomisiliWargaState extends State<SuratDomisiliWarga> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? _agama;

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
          namaController.text = name;
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
          nikController.text = nik;
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
          pekerjaanController.text = pekerjaan;
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
          statusPerkawinanController.text = status;
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
          alamatAsalController.text = alamat;
        });
      });
    }
  }

  final namaController = TextEditingController();
  final tempatTanggalLahirController = TextEditingController();
  final nikController = TextEditingController();
  final pekerjaanController = TextEditingController();
  TextEditingController agamaController =
      TextEditingController(text: 'Kristen');
  final statusPerkawinanController = TextEditingController();
  final kewarganegaraanController = TextEditingController();
  final alamatAsalController = TextEditingController();
  final alamatSekarangController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    tempatTanggalLahirController.dispose();
    nikController.dispose();
    pekerjaanController.dispose();
    agamaController.dispose();
    statusPerkawinanController.dispose();
    kewarganegaraanController.dispose();
    alamatAsalController.dispose();
    alamatSekarangController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            width: double.infinity,
            child: Container(
              // suratdomisiliwargaZrZ (150:101)
              width: double.infinity,
              height: 850 * fem,
              decoration: BoxDecoration(
                color: Color(0xff4479ff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle7gwB (150:102)
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
                    // group12zws (150:103)
                    left: 28 * fem,
                    top: 130 * fem,
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
                            controller: namaController,
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
                    // group3022afB (150:106)
                    left: 28 * fem,
                    top: 200 * fem,
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
                            controller: tempatTanggalLahirController,
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
                    // group3023B9B (150:109)
                    left: 28 * fem,
                    top: 270 * fem,
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
                            controller: nikController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan NIK Anda (${userNIK})',
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
                    // group3032PW9 (150:132)
                    left: 28 * fem,
                    top: 340 * fem,
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
                            controller: pekerjaanController,
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
                    // group3033zF3 (150:136)
                    left: 28 * fem,
                    top: 410 * fem,
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
                            hint: Text('Pilih Agama'),
                            value: agamaController.text.isEmpty
                                ? null
                                : agamaController.text,
                            onChanged: (String? newValue) {
                              setState(() {
                                agamaController.text = newValue!;
                                print(agamaController.text);
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group12gtZ (150:144)
                    left: 28 * fem,
                    top: 480 * fem,
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
                            controller: statusPerkawinanController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText:
                                  'Masukan Status Perkawinan Anda (${userStatus})',
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
                    // group30227iy (150:147)
                    left: 28 * fem,
                    top: 550 * fem,
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
                            controller: kewarganegaraanController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Kewarganegaraan',
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
                    // group30237sP (150:150)
                    left: 28 * fem,
                    top: 620 * fem,
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
                            controller: alamatAsalController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Alamat Asal (${userAlamat})',
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
                    // group3032MFw (150:153)
                    left: 28 * fem,
                    top: 690 * fem,
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
                            controller: alamatSekarangController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Alamat Sekarang',
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
                    // group3029QZf (150:118)
                    left: 28 * fem,
                    top: 760 * fem,
                    child: TextButton(
                      onPressed: () async {
                        // Validate the form
                        if (namaController.text.isEmpty ||
                            tempatTanggalLahirController.text.isEmpty ||
                            nikController.text.isEmpty ||
                            pekerjaanController.text.isEmpty ||
                            agamaController.text.isEmpty ||
                            statusPerkawinanController.text.isEmpty ||
                            kewarganegaraanController.text.isEmpty ||
                            alamatAsalController.text.isEmpty ||
                            alamatSekarangController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Harap isi semua data'),
                            ),
                          );
                          return;
                        }

                        final uid = FirebaseAuth.instance.currentUser?.uid;
                        // Reference to the user's data in the database
                        DatabaseReference ref =
                            FirebaseDatabase.instance.ref("surat/$uid").push();

                        // Store all the data the user's UID
                        await ref.set({
                          'nama': namaController.text,
                          'tempatTanggalLahir':
                              tempatTanggalLahirController.text,
                          'nik': nikController.text,
                          'pekerjaan': pekerjaanController.text,
                          'agama': agamaController.text,
                          'statusPerkawinan': statusPerkawinanController.text,
                          'kewarganegaraan': kewarganegaraanController.text,
                          'alamatAsal': alamatAsalController.text,
                          'alamatSekarang': alamatSekarangController.text,
                          'createdAt':
                              DateFormat('dd/MM/yyyy').format(DateTime.now()),
                          'jenisSurat': 'Surat Domisili Warga',
                          "statusSurat": "Proses"
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
                    // group3027qus (150:124)
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
                                            .instance.currentUser!)));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/page-1/images/group-3027-rW5.png',
                            width: 13.21 * fem,
                            height: 22.22 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // suratdomisiliwarga88H (150:127)
                    left: 93 * fem,
                    top: 50 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 190 * fem,
                        height: 72 * fem,
                        child: Text(
                          'Surat\nDomisili Warga',
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
