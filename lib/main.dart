import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widyaedu/services/api_service.dart';
import 'package:widyaedu/ui/pages/all_mapel_page.dart';
import 'package:widyaedu/ui/pages/home_page.dart';
import 'package:widyaedu/ui/pages/login_page.dart';
import 'package:widyaedu/ui/pages/nilai_page.dart';
import 'package:widyaedu/ui/pages/paket_mapel_page.dart';
import 'package:widyaedu/ui/pages/pembahasan_soal_page.dart';
import 'package:widyaedu/ui/pages/profile_page.dart';
import 'package:widyaedu/ui/pages/register_page.dart';
import 'package:widyaedu/ui/pages/soal_page.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ApiServices(client: http.Client()).register(
    'tesbyone@gmail.com',
    'kiritod',
    'Sman 7 Managarai',
    'VII - A',
    'Perempaun',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/nilai': (context) => const NilaiPage(),
          '/all-mapel': (context) => const AllMapelPage(),
          '/paket-mapel': (context) => const PaketMapelPage(),
          '/soal': (context) => const SoalPage(),
          '/pembahasan-soal': (context) => const PembahasanSoalPage(),
        },
      ),
    );
  }
}