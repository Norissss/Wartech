import 'package:app_baru/page-1/success-form-pelaporan.dart';
import 'package:app_baru/page-1/success.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/utils.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String emailAddress = '';
  String password = '';
  String name = '';
  String alamat = '';
  String noTelpon = '';
  String NIK = '';
  String agama = '';
  String pekerjaan = '';
  String status = '';
  String jenkel = '';

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final alamatController = TextEditingController();
  final noTelponController = TextEditingController();
  final NIKController = TextEditingController();
  final agamaController = TextEditingController();
  final pekerjaanController = TextEditingController();
  final statusController = TextEditingController();
  final jenkelController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  Future<void> _createUser() {
    return _auth.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
  }

  // Future<void> _createUser() async {
  //   try {
  //     final credential = await _auth.createUserWithEmailAndPassword(
  //       email: emailAddress,
  //       password: password,
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('The password provided is too weak.'),
  //         ),
  //       );
  //     } else if (e.code == 'email-already-in-use') {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('The account already exists for that email.'),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(e.toString()),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Material(
        type: MaterialType.transparency,
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              // signup9vy (3:106)
              padding: EdgeInsets.fromLTRB(0 * fem, 34 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff4479ff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupc1mzH1b (25p6qoQ1v2Csp715VeC1mz)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    padding: EdgeInsets.fromLTRB(
                        15 * fem, 0 * fem, 15 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // group3027PaR (7:50)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 13.78 * fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 13.21 * fem,
                              height: 22.22 * fem,
                              child: Image.asset(
                                'assets/page-1/images/group-3027-ftM.png',
                                width: 13.21 * fem,
                                height: 22.22 * fem,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // image1sEh (58:3)

                          child: Image.asset(
                            'assets/page-1/images/image-1.png',
                            width: 139 * fem,
                            height: 38 * fem,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // silahkandaftarkandiriandaz4R (7:5)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Silahkan Daftarkan Diri Anda',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupcolu67T (25p7WnH4in8MVKPmYHcoLU)
                    padding: EdgeInsets.fromLTRB(
                        28 * fem, 24 * fem, 26 * fem, 27 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group12b4D (7:6)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 34 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: nameController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Nama Anda',
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
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
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
                            controller: emailController,
                          ),
                        ),
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Alamat Anda',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            controller: alamatController,
                          ),
                        ),
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Nomor Telepon Anda',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            controller: noTelponController,
                          ),
                        ),
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan NIK Anda',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            controller: NIKController,
                          ),
                        ),
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                    21 * fem, 19 * fem, 21 * fem, 20 * fem),
                                hintText: 'Masukan Agama Anda',
                                hintStyle: TextStyle(
                                  color: Color(0x7f1e1e1e),
                                  fontSize: 13,
                                ),
                              ),
                              value: agamaController.text.isEmpty
                                  ? null
                                  : agamaController.text,
                              isExpanded: true,
                              iconSize: 24,
                              elevation: 16,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  agamaController.text = newValue;
                                }
                              },
                              items: <String>[
                                'Kristen',
                                'Islam',
                                'Buddha',
                                'Hindu',
                                'Khonghucu'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Masukan Pekerjaan Anda',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            controller: pekerjaanController,
                          ),
                        ),
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                    21 * fem, 19 * fem, 21 * fem, 20 * fem),
                                hintText: 'Masukan Status Anda',
                                hintStyle: TextStyle(
                                  color: Color(0x7f1e1e1e),
                                  fontSize: 13,
                                ),
                              ),
                              value: statusController.text.isEmpty
                                  ? null
                                  : statusController.text,
                              isExpanded: true,
                              iconSize: 24,
                              elevation: 16,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  statusController.text = newValue;
                                }
                              },
                              items: <String>[
                                'Belum Menikah',
                                'Menikah',
                                'Cerai',
                                'Janda',
                                'Duda'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        Container(
                          // group3022DLV (7:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 39 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                    21 * fem, 19 * fem, 21 * fem, 20 * fem),
                                hintText: 'Masukan Jenis Kelamin Anda',
                                hintStyle: TextStyle(
                                  color: Color(0x7f1e1e1e),
                                  fontSize: 13,
                                ),
                              ),
                              value: jenkelController.text.isEmpty
                                  ? null
                                  : jenkelController.text,
                              isExpanded: true,
                              iconSize: 24,
                              elevation: 16,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  jenkelController.text = newValue;
                                }
                              },
                              items: <String>[
                                'Pria',
                                'Wanita',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        Container(
                          // group3023cdX (7:12)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 25 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Buat Password Anda',
                              hintStyle: TextStyle(color: Color(0x7f1e1e1e)),
                            ),
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            controller: passwordController,
                          ),
                        ),
                        Container(
                          // group3024FgV (7:15)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 19 * fem),
                          width: 320 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: Color(0xffffffff),
                          ),
                          child: TextField(
                            controller: passwordConfirmController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(
                                  21 * fem, 19 * fem, 21 * fem, 20 * fem),
                              hintText: 'Konfirmasi Password',
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
                        Container(
                          // group30256x1 (7:21)
                          margin: EdgeInsets.fromLTRB(
                              15 * fem, 0 * fem, 63 * fem, 27 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: SwitchExample(),
                              ),
                              Container(
                                // byclickingonsignupyoureagreein (7:18)
                                constraints: BoxConstraints(
                                  maxWidth: 198 * fem,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2102272034 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            'By clicking on ‘sign up’, you’re agreeing\n',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Terms of Service',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff2d4990),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'and',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Privacy',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff2d4990),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Policy',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff2d4990),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group3022AwB (7:23)
                          margin: EdgeInsets.fromLTRB(
                              66 * fem, 0 * fem, 73 * fem, 27 * fem),
                          child: TextButton(
                            // validate the form to make sure its not empty

                            onPressed: () {
                              if (nameController.text.isEmpty ||
                                  emailController.text.isEmpty ||
                                  alamatController.text.isEmpty ||
                                  noTelponController.text.isEmpty ||
                                  NIKController.text.isEmpty ||
                                  agamaController.text.isEmpty ||
                                  pekerjaanController.text.isEmpty ||
                                  statusController.text.isEmpty ||
                                  jenkelController.text.isEmpty ||
                                  passwordController.text.isEmpty ||
                                  passwordConfirmController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Tolong isi semua data'),
                                  ),
                                );
                                return;
                              }

                              if (!RegExp(
                                      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$')
                                  .hasMatch(passwordController.text)) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Kata sandi harus mengandung setidaknya satu huruf besar, satu huruf kecil, satu simbol, dan satu angka, serta memiliki panjang minimal 8 karakter'),
                                  ),
                                );
                                return;
                              }

                              if (passwordController.text !=
                                  passwordConfirmController.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Konfirmasi Password tidak sesuai'),
                                  ),
                                );
                                return;
                              }
                              setState(() {
                                name = nameController.text;
                                alamat = alamatController.text;
                                noTelpon = noTelponController.text;
                                NIK = NIKController.text;
                                agama = agamaController.text;
                                pekerjaan = pekerjaanController.text;
                                status = statusController.text;
                                emailAddress = emailController.text;
                                password = passwordController.text;
                                jenkel = jenkelController.text;
                              });
                              _createUser().catchError((e) {
                                if (e is FirebaseAuthException) {
                                  String errorMessage;
                                  switch (e.code) {
                                    case 'email-already-in-use':
                                      errorMessage =
                                          'The email address is already in use by another account.';
                                      break;
                                    case 'weak-password':
                                      errorMessage =
                                          'The password provided is too weak.';
                                      break;
                                    // Add more cases for different error codes as needed
                                    default:
                                      errorMessage =
                                          'An undefined Error happened.';
                                  }
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(errorMessage),
                                      backgroundColor: Colors.redAccent,
                                    ),
                                  );
                                }
                              });
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Success(
                                            name: name,
                                            alamat: alamat,
                                            noTelpon: noTelpon,
                                            NIK: NIK,
                                            agama: agama,
                                            pekerjaan: pekerjaan,
                                            status: status,
                                            jenkel: jenkel,
                                          )));
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
                                  'Sign Up',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color.fromARGB(255, 0, 72, 255),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
