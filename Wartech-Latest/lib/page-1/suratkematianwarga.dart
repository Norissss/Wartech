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

class SuratKematianWarga extends StatefulWidget {
  @override
  State<SuratKematianWarga> createState() => _SuratKematianWargaState();
}

class _SuratKematianWargaState extends State<SuratKematianWarga> {
  final _auth = FirebaseAuth.instance;
  String? _agama;
  String? _jenisKelamin;
  String? _jenisKelaminMeninggal;
  String? _agamaMeninggal;

  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

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
          namaLengkap.text = name;
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
          noKKNIK.text = nik;
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

  final namaLengkap = TextEditingController();
  final hubungan = TextEditingController();
  final namaLengkapMeninggal = TextEditingController();
  final tempatTanggalLahir = TextEditingController();
  final noKKNIK = TextEditingController();
  final kewarganegaraan = TextEditingController();
  final alamatWargaMeninggal = TextEditingController();
  final tempatMeninggal = TextEditingController();
  final penyebabMeninggal = TextEditingController();
  final tanggalMeninggal = TextEditingController();
  final waktuMeninggal = TextEditingController();

  @override
  void dispose() {
    namaLengkap.dispose();
    hubungan.dispose();
    namaLengkapMeninggal.dispose();
    tempatTanggalLahir.dispose();
    noKKNIK.dispose();
    kewarganegaraan.dispose();
    alamatWargaMeninggal.dispose();
    tempatMeninggal.dispose();
    penyebabMeninggal.dispose();
    tanggalMeninggal.dispose();
    waktuMeninggal.dispose();
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
              // suratkematianwargaHdj (150:759)
              width: double.infinity,
              height: 1600 * fem,
              decoration: BoxDecoration(
                color: Color(0xff4479ff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle7bPX (150:760)
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
                    // group3027Weu (150:788)
                    left: 17 * fem,
                    top: 56 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 20 * fem,
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
                            'assets/page-1/images/group-3027-3RK.png',
                            width: 13.21 * fem,
                            height: 22.22 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // suratkematianwargaQEV (150:791)
                    left: 84 * fem,
                    top: 50 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 208 * fem,
                        height: 72 * fem,
                        child: Text(
                          'Surat\nKematian warga',
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
                    // group30745Ld (150:795)
                    left: 28 * fem,
                    top: 150 * fem,
                    child: Container(
                      width: 320 * fem,
                      height: 2000 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group12ywo (150:761)
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: namaLengkap,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                    21 * fem, 19 * fem, 21 * fem, 20 * fem),
                                hintText:
                                    'Masukan Nama Lengkap Anda ($userName)',
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group3023RJ1 (150:767)
                            padding: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 21.25 * fem, 10 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(100 * fem),
                            ),
                            child: DropdownButton<String>(
                              hint: Text('Pilih Jenis Kelamin'),
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group3033fCM (150:779)
                            padding: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 21.25 * fem, 10 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(100 * fem),
                            ),
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
                          SizedBox(
                            height: 35 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: hubungan,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Hubungan anda dengan yang meninggal',
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: namaLengkapMeninggal,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Masukan Nama Lengkap yang Meninggal',
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: tempatTanggalLahir,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Masukan Tempat Tanggal Lahir',
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group3023RJ1 (150:767)
                            padding: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 21.25 * fem, 10 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(100 * fem),
                            ),
                            child: DropdownButton<String>(
                              hint: Text('Pilih Jenis Kelamin yang meninggal'),
                              value: _jenisKelaminMeninggal,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _jenisKelaminMeninggal = newValue;
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group3033fCM (150:779)
                            padding: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 21.25 * fem, 10 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(100 * fem),
                            ),
                            child: DropdownButton<String>(
                                hint: Text('Pilih Agama yang Meninggal'),
                                value: _agamaMeninggal,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _agamaMeninggal = newValue;
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: noKKNIK,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Masukan No. KK/NIK ($userNIK)',
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: kewarganegaraan,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: alamatWargaMeninggal,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Masukan Alamat Warga yang Meninggal',
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextFormField(
                              controller: waktuMeninggal,
                              readOnly:
                                  true, // membuat field tidak bisa ditulis secara manual
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 20, top: 15),
                                disabledBorder: InputBorder.none,
                                hintText: _selectedTime == null
                                    ? 'Waktu Kematian'
                                    : _selectedTime?.format(context),
                                hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                                suffixIcon: Transform.translate(
                                  offset:
                                      Offset(-10, 5), // mengubah posisi ikon
                                  child: Icon(Icons.access_time),
                                ),
                              ),
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              onTap: () async {
                                final TimeOfDay? picked = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );
                                if (picked != null && picked != _selectedTime) {
                                  setState(() {
                                    _selectedTime = picked;
                                  });
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextFormField(
                              controller: tanggalMeninggal,
                              readOnly:
                                  true, // membuat field tidak bisa ditulis secara manual
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 20, top: 15),
                                disabledBorder: InputBorder.none,
                                hintText: _selectedDate == null
                                    ? 'Tanggal Meninggal'
                                    : DateFormat('yyyy-MM-dd')
                                        .format(_selectedDate!),
                                hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                                suffixIcon: Transform.translate(
                                  offset:
                                      Offset(-10, 5), // mengubah posisi ikon
                                  child: Icon(Icons.calendar_today),
                                ),
                              ),
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              onTap: () async {
                                final DateTime? picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                );
                                if (picked != null && picked != _selectedDate) {
                                  setState(() {
                                    _selectedDate = picked;
                                  });
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: tempatMeninggal,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Tempat Meninggal',
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
                          SizedBox(
                            height: 34 * fem,
                          ),
                          Container(
                            // group30227q3 (150:764)
                            width: double.infinity,
                            height: 57 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: penyebabMeninggal,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 15, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Penyebab Meninggal',
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group3029Vjo (150:785)
                    left: 28 * fem,
                    top: 1500 * fem,
                    child: TextButton(
                      onPressed: () async {
                        //validate all the field of the form to make sure its not empty
                        if (namaLengkap.text.isEmpty ||
                            hubungan.text.isEmpty ||
                            namaLengkapMeninggal.text.isEmpty ||
                            tempatTanggalLahir.text.isEmpty ||
                            _jenisKelamin == null ||
                            _agama == null ||
                            _jenisKelaminMeninggal == null ||
                            _agamaMeninggal == null ||
                            noKKNIK.text.isEmpty ||
                            kewarganegaraan.text.isEmpty ||
                            alamatWargaMeninggal.text.isEmpty ||
                            waktuMeninggal.text.isEmpty ||
                            tanggalMeninggal.text.isEmpty ||
                            tempatMeninggal.text.isEmpty ||
                            penyebabMeninggal.text.isEmpty) {
                          //show snackbar tolong isi semua data
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Tolong isi semua data'),
                            ),
                          );
                          return; // Stop execution if validation fails
                        }

                        final uid = FirebaseAuth.instance.currentUser?.uid;
                        // Reference to the user's data in the database
                        DatabaseReference ref =
                            FirebaseDatabase.instance.ref("surat/$uid").push();

                        // Store all the data the user's UID
                        await ref.set({
                          "namaLengkap": namaLengkap.text,
                          "hubungan": hubungan.text,
                          "namaLengkapMeninggal": namaLengkapMeninggal.text,
                          "tempatTanggalLahir": tempatTanggalLahir.text,
                          "jenisKelamin": _jenisKelamin,
                          "agama": _agama,
                          "jenisKelaminMeninggal": _jenisKelaminMeninggal,
                          "agamaMeninggal": _agamaMeninggal,
                          "noKKNIK": noKKNIK.text,
                          "kewarganegaraan": kewarganegaraan.text,
                          "alamatWargaMeninggal": alamatWargaMeninggal.text,
                          "waktuMeninggal": waktuMeninggal.text,
                          "tanggalMeninggal": tanggalMeninggal.text,
                          "tempatMeninggal": tempatMeninggal.text,
                          "penyebabMeninggal": penyebabMeninggal.text,
                          "statusSurat": "Proses",
                          'createdAt':
                              DateFormat('dd/MM/yyyy').format(DateTime.now()),
                          'jenisSurat': 'Surat Kematian Warga',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
