import 'dart:io';

import 'package:app_baru/page-1/home.dart';
import 'package:app_baru/page-1/login.dart';
import 'package:app_baru/page-1/success-form-pelaporan.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_baru/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class FormPelaporan extends StatefulWidget {
  @override
  State<FormPelaporan> createState() => _FormPelaporanState();
}

class _FormPelaporanState extends State<FormPelaporan> {
  final _auth = FirebaseAuth.instance;

  String userName = '';
  String userNIK = '';
  String userAlamat = '';
  String userPekerjaan = '';
  String userNoTelpon = '';
  String userStatus = '';
  String userJenkel = '';

  final namaController = TextEditingController();
  final nikController = TextEditingController();
  final noHpController = TextEditingController();
  final laporanController = TextEditingController();

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
          namaController.text = userName;
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
          nikController.text = userNIK;
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
          noHpController.text = userNoTelpon;
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
  void dispose() {
    Provider.of<ImagePickerProvider>(context, listen: false).clearImage();
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
            height: 812 * fem,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                // formpelaporan6fb (124:3)
                width: double.infinity,
                height: 810 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff4479ff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle7bcM (124:6)
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
                    buildBackIcon(fem, context),
                    buildTitle(fem, ffem),
                    Positioned(
                      // group126p1 (124:10)
                      left: 28 * fem,
                      top: 121 * fem,
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
                                hintText: 'Masukan Nama Anda ($userName)',
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
                      // group3022Wcq (124:13)
                      left: 28 * fem,
                      top: 212 * fem,
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
                                hintText: 'Masukan NIK Anda ($userNIK)',
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
                      // group3023LLy (124:16)
                      left: 28 * fem,
                      top: 303 * fem,
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
                              controller: noHpController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                    21 * fem, 19 * fem, 21 * fem, 20 * fem),
                                hintText: 'Masukan Nomer HP ($userNoTelpon)',
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
                      // group3024f3o (124:19)
                      left: 28 * fem,
                      top: 388 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 320 * fem,
                          height: 149 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25 * fem),
                              color: Color(0xffffffff),
                            ),
                            child: TextField(
                              controller: laporanController,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 20, top: 10),
                                disabledBorder: InputBorder.none,
                                hintText: 'Laporan Pengaduan',
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
                      // group3028x7T (126:26)
                      left: 28 * fem,
                      top: 564 * fem,
                      child: TextButton(
                        onPressed: () async {
                          final provider = Provider.of<ImagePickerProvider>(
                              context,
                              listen: false);
                          await provider.pickImage(context);
                          if (provider.image != null) {
                            final bytes = await provider.image!.readAsBytes();
                            if (bytes.lengthInBytes > 5000000) {
                              // 5MB
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'File terlalu besar. Harap unggah file yang kurang dari 5MB.')),
                              );
                            }
                          }
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              20.24 * fem, 16.67 * fem, 163 * fem, 16.33 * fem),
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
                                // picfillpvM (126:29)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 6.76 * fem, 0 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Consumer<ImagePickerProvider>(
                                  builder: (context, provider, child) {
                                    if (provider.image != null) {
                                      return Image.file(
                                        provider.image!,
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        fit: BoxFit.cover,
                                      );
                                    } else {
                                      return Image.asset(
                                        'assets/page-1/images/picfill.png',
                                        width: 24 * fem,
                                        height: 24 * fem,
                                      );
                                    }
                                  },
                                ),
                              ),
                              Container(
                                // uploadfotobuktijXX (126:28)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1.35 * fem),
                                child: Text(
                                  'Upload Foto Bukti',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0x7f1e1e1e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group3029qKf (127:32)
                      left: 28 * fem,
                      top: 704 * fem,
                      child: TextButton(
                        onPressed: () async {
                          //validate the form
                          if (namaController.text.isEmpty ||
                              nikController.text.isEmpty ||
                              noHpController.text.isEmpty ||
                              laporanController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Harap isi semua kolom.')),
                            );
                            return;
                          }

                          final uid = FirebaseAuth.instance.currentUser?.uid;
                          // Reference to the user's data in the database
                          DatabaseReference ref = FirebaseDatabase.instance
                              .ref("surat/$uid")
                              .push();

                          // Dapatkan gambar dari Provider
                          var image = Provider.of<ImagePickerProvider>(context,
                                  listen: false)
                              .image;

                          // Pastikan gambar tidak null

                          // Dapatkan instance dari Firebase Storage
                          final firebaseStorageRef = FirebaseStorage.instance;
                          // Dapatkan timestamp untuk nama file
                          final timestamp =
                              DateTime.now().millisecondsSinceEpoch;
                          // Buat referensi untuk file yang akan diunggah
                          final storageReference = firebaseStorageRef
                              .ref()
                              .child('pelaporan/$uid/$timestamp.png');

                          final uploadTask = storageReference.putFile(image!);

                          // Tunggu sampai upload selesai
                          await uploadTask.whenComplete(() async {
                            // Setelah upload selesai, minta URL dari file tersebut
                            final imageUrl =
                                await storageReference.getDownloadURL();

                            // Sekarang Anda bisa menggunakan `imageUrl` ini untuk menyimpan di Firestore atau di mana pun Anda butuhkan
                            ref.set({
                              "nama": namaController.text,
                              "nik": nikController.text,
                              "noHp": noHpController.text,
                              "laporan": laporanController.text,
                              "statusSurat": "Proses",
                              'createdAt': DateFormat('dd/MM/yyyy')
                                  .format(DateTime.now()),
                              'jenisSurat': 'Pelaporan',
                              "imageUrl": imageUrl, // Menyimpan URL gambar
                            });
                          });

                          Provider.of<ImagePickerProvider>(context,
                                  listen: false)
                              .clearImage();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SuccessFormPelaporan()));
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
                      // group30313iZ (127:38)
                      left: 42 * fem,
                      top: 643 * fem,
                      child: Container(
                        width: 292 * fem,
                        height: 22 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupcc7sMz9 (25pEKAnFPbBftAJ7mfcc7S)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 6 * fem, 0 * fem),
                              width: 37 * fem,
                              height: 22 * fem,
                              child: SwitchExample(),
                            ),
                            Container(
                              // sayasetujudengansyaratketentua (127:39)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 0 * fem, 0 * fem),
                              child: Row(
                                children: [
                                  Text(
                                    'Saya Setuju dengan',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text(
                                                'Syarat dan Ketentuan'),
                                            content:
                                                const SingleChildScrollView(
                                              child: ListBody(
                                                children: <Widget>[
                                                  Text(
                                                    '1. Penggunaan Aplikasi',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      'Dengan mengunduh dan menggunakan aplikasi ini, pengguna setuju untuk mematuhi syarat dan ketentuan ini.'),
                                                  Text(
                                                    '2. Akun Pengguna',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      'Pengguna bertanggung jawab untuk menjaga kerahasiaan akun dan password mereka dan untuk semua aktivitas yang terjadi dalam akun mereka.'),
                                                  Text(
                                                    '3. Penggunaan Layanan',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      'Pengguna setuju untuk menggunakan layanan ini hanya untuk tujuan yang sah dan sesuai dengan hukum yang berlaku.'),
                                                  Text(
                                                    '3.1 Aplikasi Pelaporan',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                      'Pengguna harus memberikan informasi yang akurat dan lengkap saat membuat laporan. Pengguna dapat mengunggah lampiran dalam bentuk JPEG, JPG, PNG, atau PDF dengan ukuran maksimal 5MB.'),
                                                  Text(
                                                    '3.2 Aplikasi Persuratan Domisili',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                      'Pengguna harus mematuhi prosedur yang ditetapkan oleh aplikasi dalam membuat, mengirim, dan menerima surat.'),
                                                  Text(
                                                    '3.3 Fitur Pengantar Menikah',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                      'Pengguna harus memberikan informasi yang akurat dan lengkap saat mengajukan pengantar menikah.'),
                                                  Text(
                                                    '3.4 Fitur Keterangan Kematian',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                      'Pengguna harus memberikan informasi yang akurat dan lengkap saat mengajukan keterangan kematian.'),
                                                  Text(
                                                    '4. Pelanggaran',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      'Pelanggaran terhadap syarat dan ketentuan ini dapat mengakibatkan penangguhan atau penghentian akses ke layanan.'),
                                                  Text(
                                                    '5. Perubahan Syarat dan Ketentuan',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      'Kami berhak untuk mengubah syarat dan ketentuan ini kapan saja. Pengguna akan diberi tahu tentang perubahan tersebut dan penggunaan berkelanjutan dari layanan ini akan dianggap sebagai penerimaan terhadap perubahan tersebut.'),
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
                                    child: Text(
                                      ' Syarat & Ketentuan',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color.fromARGB(255, 4, 0, 255),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    ' Wartech',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Positioned buildBackIcon(double fem, BuildContext context) {
    return Positioned(
      // group3027V2q (124:22)
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
                      builder: (context) =>
                          HomePage(user: _auth.currentUser!)));
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Image.asset(
              'assets/page-1/images/group-3027-zrD.png',
              width: 13.21 * fem,
              height: 22.22 * fem,
            ),
          ),
        ),
      ),
    );
  }

  Positioned buildTitle(double fem, double ffem) {
    return Positioned(
      // pelaporanxSD (124:25)
      left: 124 * fem,
      top: 50 * fem,
      child: Align(
        child: SizedBox(
          width: 128 * fem,
          height: 36 * fem,
          child: Text(
            'Pelaporan',
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
    );
  }
}

class ImagePickerProvider with ChangeNotifier {
  File? _image;

  File? get image => _image;

  Future pickImage(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final bytes = await File(image.path).readAsBytes();
      if (bytes.lengthInBytes > 5000000) {
        // 100 bytes
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'File terlalu besar. Harap unggah file yang kurang dari 5 Mega Bytes.')),
        );
      } else {
        _image = File(image.path);
        notifyListeners();
      }
    }
  }

  void clearImage() {
    _image = null;
    notifyListeners();
  }
}
