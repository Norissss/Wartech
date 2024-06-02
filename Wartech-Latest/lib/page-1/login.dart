import 'package:app_baru/page-1/sign-up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/page-1/first-look.dart';
import 'home.dart';
import 'package:app_baru/utils.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String emailAddress = '';
  String password = '';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _signInUser() {
    String emailAddress = emailController.text;
    String password = passwordController.text;

    return _auth.signInWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is no longer needed
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Container(
            // login8XB (2:53)
            padding: EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 0 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff4479ff),
            ),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // group3027RmB (7:52)
                      margin: EdgeInsets.fromLTRB(
                          18 * fem, 0 * fem, 0 * fem, 42.78 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstLook()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 13.21 * fem,
                          height: 22.22 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-3027-Mff.png',
                            width: 13.21 * fem,
                            height: 22.22 * fem,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      // image2HoP (58:5)
                      child: Image.asset(
                        'assets/page-1/images/image-2.png',
                        fit: BoxFit.cover,
                        width: 228 * fem,
                        height: 38 * fem,
                      ),
                    ),
                    Center(
                      // silahkanmasukanakunandapHX (2:62)
                      child: Text(
                        'Silahkan Masukan Akun Anda',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 3 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // login7Gd (2:76)
                      margin: EdgeInsets.fromLTRB(
                          49 * fem, 10 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Login',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupkblcRYD (25p99V4GNXdX6jBEBwkbLC)
                      padding: EdgeInsets.fromLTRB(
                          28 * fem, 3 * fem, 27 * fem, 80 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group12Y73 (2:68)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 27 * fem),
                            width: double.infinity,
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
                                hintText: 'Masukan Email Atau No. Telphone',
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
                            // passwordapR (2:77)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 260 * fem, 3 * fem),
                            child: Text(
                              'Password',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // group11Uuo (2:67)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 25 * fem),
                            width: double.infinity,
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
                                hintText: 'Masukan Password',
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
                            // autogroup4ntyXNH (25p8pk6VXHCvbqVKUX4ntY)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 30 * fem),
                            width: double.infinity,
                            height: 22 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group13eC1 (2:81)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 141 * fem, 0 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupajm6BSq (25p8yQWj31BvJmoFV7AJM6)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                        width: 37 * fem,
                                        height: 22 * fem,
                                        child: SwitchExample(),
                                      ),
                                      Container(
                                        // ingatsayahAH (2:80)
                                        margin: EdgeInsets.fromLTRB(
                                            5 * fem, 1 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Ingat Saya',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group2v33 (2:72)
                            margin: EdgeInsets.fromLTRB(
                                69 * fem, 0 * fem, 69 * fem, 26 * fem),
                            child: TextButton(
                              onPressed: () {
                                if (emailController.text.isEmpty ||
                                    passwordController.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Email atau Password tidak boleh kosong'),
                                    ),
                                  );
                                  return;
                                }
                                setState(() {
                                  emailAddress = emailController.text;
                                  password = passwordController.text;
                                });
                                _signInUser().then((credential) {
                                  if (_auth.currentUser != null) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(
                                          user: _auth.currentUser!,
                                        ),
                                      ),
                                    );
                                  }
                                }).catchError((error) {
                                  print(error.code);
                                  if (error is FirebaseAuthException) {
                                    if (error.code == 'user-not-found') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Tidak ada pengguna yang ditemukan untuk email tersebut.'),
                                        ),
                                      );
                                    } else if (error.code == 'wrong-password') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Password yang dimasukkan salah untuk pengguna tersebut.'),
                                        ),
                                      );
                                    } else if (error.code == 'invalid-email') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Format alamat email salah.'),
                                        ),
                                      );
                                    } else if (error.code ==
                                        'invalid-credential') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Kredensial autentikasi yang diberikan salah, tidak benar atau telah kadaluarsa.'),
                                        ),
                                      );
                                    }
                                  }
                                });
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 36 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xff5bb0ff),
                                  borderRadius:
                                      BorderRadius.circular(100 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Log In',
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
                          Container(
                            // line2xVX (2:75)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 24 * fem),
                            width: 319 * fem,
                            height: 2 * fem,
                            decoration: BoxDecoration(
                              color: Color(0x33000000),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Center(
                              // belumpunyaakundaftarsekarangyL (3:105)
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 2 * ffem / fem,
                                      letterSpacing: 0.3000000119 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Belum Punya Akun?  ',
                                      ),
                                      TextSpan(
                                        text: ' Daftar Sekarang',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2 * ffem / fem,
                                          letterSpacing: 0.3000000119 * fem,
                                          color: Color(0xff000e92),
                                        ),
                                      ),
                                    ],
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
              ],
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
