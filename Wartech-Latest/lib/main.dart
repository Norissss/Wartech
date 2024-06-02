import 'package:app_baru/page-1/account.dart';
import 'package:app_baru/page-1/form-pelaporan.dart';
import 'package:app_baru/page-1/first-look.dart';
import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/login.dart';
import 'package:app_baru/page-1/notifikasi.dart';
import 'package:app_baru/page-1/riwayat.dart';
import 'package:app_baru/page-1/security.dart';
import 'package:app_baru/page-1/settings.dart';
import 'package:app_baru/page-1/sign-up.dart';
import 'package:app_baru/page-1/success-form-pelaporan.dart';
import 'package:app_baru/page-1/success-surat-rV7.dart';
import 'package:app_baru/page-1/success.dart';
import 'package:app_baru/page-1/surat-domisili-warga.dart';
import 'package:app_baru/page-1/surat-pengantar-nikah.dart';
import 'package:app_baru/page-1/suratkematianwarga.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/utils.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'page-1/profile-2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
    create: (context) => ImagePickerProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: FirstLook(),
        ),
      ),
    );
  }
}
