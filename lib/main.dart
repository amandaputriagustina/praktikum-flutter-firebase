import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:praktikum_firebase/app_constant.dart';
import 'package:praktikum_firebase/screen/splash_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    name: AppConstant.firebaseName,
    options: const FirebaseOptions(
        apiKey: AppConstant.firebaseApiKey,
        appId: AppConstant.firebaseAppId,
        messagingSenderId: "388765248192",
        projectId: "newapps-d012d"),
  );

  await FirebaseAuth.instance.useAuthEmulator('localhost', 8088);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
