import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../utils.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: double.infinity,
        child: Container(
          // settingsuDF (336:456)
          width: double.infinity,
          height: 812 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // rectangle7oZX (336:457)
                left: 0 * fem,
                top: 50 * fem,
                child: Align(
                  child: SizedBox(
                    width: 375 * fem,
                    height: 711 * fem,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group302774R (336:458)
                left: 17 * fem,
                top: 50 * fem,
                child: Align(
                  child: SizedBox(
                    width: 13.21 * fem,
                    height: 22.22 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/group-3027-QcM.png',
                        width: 13.21 * fem,
                        height: 22.22 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group3047sxh (336:511)
                left: 344 * fem,
                top: 245 * fem,
                child: Align(
                  child: SizedBox(
                    width: 5.6 * fem,
                    height: 9.33 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/group-3047.png',
                        width: 5.6 * fem,
                        height: 9.33 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group3048moB (336:514)
                left: 344 * fem,
                top: 293 * fem,
                child: Align(
                  child: SizedBox(
                    width: 5.6 * fem,
                    height: 9.33 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/group-3048.png',
                        width: 5.6 * fem,
                        height: 9.33 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group3049rZj (336:517)
                left: 344 * fem,
                top: 339 * fem,
                child: Align(
                  child: SizedBox(
                    width: 5.6 * fem,
                    height: 9.33 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/group-3049.png',
                        width: 5.6 * fem,
                        height: 9.33 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // settingsMFb (336:465)
                left: 137 * fem,
                top: 44 * fem,
                child: Align(
                  child: Container(
                    width: 150 * fem,
                    height: 36 * fem,
                    child: Text(
                      'Pengaturan',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff4478ff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // vector2dyo (336:481)
                left: 0 * fem,
                top: 178 * fem,
                child: Align(
                  child: SizedBox(
                    width: 375 * fem,
                    height: 0 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-2.png',
                      width: 375 * fem,
                      height: 0 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // vector5ZcZ (336:508)
                left: 0 * fem,
                top: 316 * fem,
                child: Align(
                  child: SizedBox(
                    width: 375 * fem,
                    height: 0 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-5.png',
                      width: 375 * fem,
                      height: 0 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // vector6HHf (336:509)
                left: 0 * fem,
                top: 362 * fem,
                child: Align(
                  child: SizedBox(
                    width: 375 * fem,
                    height: 0 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-6.png',
                      width: 375 * fem,
                      height: 0 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // vector7oWu (336:510)
                left: 0 * fem,
                top: 674 * fem,
                child: Align(
                  child: SizedBox(
                    width: 375 * fem,
                    height: 0 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-7.png',
                      width: 375 * fem,
                      height: 0 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // vector4XSu (336:507)
                left: 0 * fem,
                top: 270 * fem,
                child: Align(
                  child: SizedBox(
                    width: 375 * fem,
                    height: 0 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-4.png',
                      width: 375 * fem,
                      height: 0 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // bahasaEs7 (336:482)
                left: 17 * fem,
                top: 132 * fem,
                child: Align(
                  child: SizedBox(
                    width: 79 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Bahasa',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // faq9UH (336:502)
                left: 17 * fem,
                top: 232 * fem,
                child: Align(
                  child: Container(
                    width: 300 * fem,
                    height: 30 * fem,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('FAQ'),
                              content: const SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text(
                                      '1. Bagaimana cara melakukan Pengajuan Online\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '1. Pilih menu Layanan Online di halaman utama, lalu pilih salah satu jenis layanan yang akan dimohonkan.\n'
                                      '2. Isi semua data-data permohonan dengan benar.\n'
                                      '3. Upload semua berkas persyaratan pada kolom yang sudah disediakan (Jika ada).\n'
                                      '4. Klik tombol Kirim.\n',
                                    ),
                                    Text(
                                      '2. Berapa lama pengajuan online ini selesai?\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Pengajuan Online diproses sesuai urutan pengajuan yang masuk pada hari dan jam kerja, dan informasi selanjutnya akan dikirimkan melalui notifikasi di aplikasi ini langsung.\n',
                                    ),
                                    Text(
                                      '3. Bagaimana saya mengetahui sukses atau tidaknya proses pengajuan?\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Anda bisa melihat semuanya pada halaman Riwayat (Ikon Laporan di bawah kiri), disana akan tampil list pengajuan anda dengan statusnya.\n'
                                      'Ada 2 jenis status yaitu:\n'
                                      '1. Proses: Pengajuan anda masih dalam proses untuk divalidasi oleh operator kami.\n'
                                      '2. Selesai: Pengajuan anda telah diselesaikan baik itu ditolak ataupun diterima.\n',
                                    ),
                                    Text(
                                        "4. Apa yang harus dilakukan jika pengajuan saya gagal?\n",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "Ketika pengajuan anda berstatus Selesai dengan indikasi 'Ditolak', cara yang harus anda lakukan adalah membuat permohonan ulang pada layanan yang ingin anda tujukan\n"),
                                    Text(
                                      "5. Bagaimana cara untuk membatalkan pengajuan?\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        "Pembatalan Pengajuan ataupun mengubah data ajuan TIDAK BISA dilakukan, oleh karena itu isilah data yang sesuai dengan data anda.\n"),
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
                        'FAQ',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // syaratdanketentuanTE5 (336:503)
                left: 17 * fem,
                top: 278 * fem,
                child: Align(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Syarat dan Ketentuan'),
                            content: const SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(
                                    '1. Penggunaan Aplikasi',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Dengan mengunduh dan menggunakan aplikasi ini, pengguna setuju untuk mematuhi syarat dan ketentuan ini.'),
                                  Text(
                                    '2. Akun Pengguna',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Pengguna bertanggung jawab untuk menjaga kerahasiaan akun dan password mereka dan untuk semua aktivitas yang terjadi dalam akun mereka.'),
                                  Text(
                                    '3. Penggunaan Layanan',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Pengguna setuju untuk menggunakan layanan ini hanya untuk tujuan yang sah dan sesuai dengan hukum yang berlaku.'),
                                  Text(
                                    '3.1 Aplikasi Pelaporan',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                      'Pengguna harus memberikan informasi yang akurat dan lengkap saat membuat laporan. Pengguna dapat mengunggah lampiran dalam bentuk JPEG, JPG, atau PNG dengan ukuran maksimal 5MB.'),
                                  Text(
                                    '3.2 Aplikasi Persuratan Domisili',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                      'Pengguna harus mematuhi prosedur yang ditetapkan oleh aplikasi dalam membuat, mengirim, dan menerima surat.'),
                                  Text(
                                    '3.3 Fitur Pengantar Menikah',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                      'Pengguna harus memberikan informasi yang akurat dan lengkap saat mengajukan pengantar menikah.'),
                                  Text(
                                    '3.4 Fitur Keterangan Kematian',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                      'Pengguna harus memberikan informasi yang akurat dan lengkap saat mengajukan keterangan kematian.'),
                                  Text(
                                    '4. Pelanggaran',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Pelanggaran terhadap syarat dan ketentuan ini dapat mengakibatkan penangguhan atau penghentian akses ke layanan.'),
                                  Text(
                                    '5. Perubahan Syarat dan Ketentuan',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                    child: SizedBox(
                      width: 227 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Syarat dan Ketentuan',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // kebijakanprivasikiy (336:504)
                left: 17 * fem,
                top: 324 * fem,
                child: Align(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Kebijakan dan Privasi'),
                            content: const SingleChildScrollView(
                              child: ListBody(children: <Widget>[
                                Text(
                                  '1. Pengumpulan Informasi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Kami mengumpulkan berbagai jenis informasi, termasuk informasi yang dapat digunakan untuk mengidentifikasi Anda secara pribadi. Kami dapat mengumpulkan, antara lain, nama, alamat email, nomor telepon, alamat rumah, hingga NIK anda. \n',
                                ),
                                Text(
                                  '2. Penggunaan Informasi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Informasi yang kami kumpulkan digunakan untuk tujuan seperti memperbaiki layanan kami, berkomunikasi dengan Anda, dan melakukan penelitian internal. Misalnya, jika data menunjukkan bahwa fitur tertentu jarang digunakan, kami mungkin memilih untuk memodifikasi atau menghapus fitur tersebut. \n',
                                ),
                                Text(
                                  '3. Pembagian Informasi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Kami tidak akan membagikan informasi Anda dengan pihak ketiga kecuali sebagaimana dijelaskan dalam Kebijakan Privasi ini. \n',
                                ),
                                Text(
                                  '4. Perlindungan Informasi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Kami menggunakan berbagai langkah keamanan untuk melindungi informasi Anda, termasuk penggunaan teknologi enkripsi dan otentikasi. \n',
                                ),
                                Text(
                                  '5. Perubahan Kebijakan Privasi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu. Kami akan memberi tahu Anda tentang perubahan apa pun dengan memposting Kebijakan Privasi yang baru di situs web ini.',
                                ),
                              ]),
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
                    child: Container(
                      width: 300 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Kebijakan dan Privasi',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // versiappFvd (336:505)
                left: 17 * fem,
                top: 636 * fem,
                child: Align(
                  child: SizedBox(
                    width: 99 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Versi App',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // indoneisaNEZ (336:483)
                left: 265 * fem,
                top: 132 * fem,
                child: Align(
                  child: SizedBox(
                    width: 99 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Indonesia',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // G53 (336:520)
                left: 321 * fem,
                top: 639 * fem,
                child: Align(
                  child: SizedBox(
                    width: 29 * fem,
                    height: 23 * fem,
                    child: Text(
                      '0.0.1',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff8f8f8f),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
