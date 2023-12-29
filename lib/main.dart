import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:untitled2/pages/siginup.dart';
import 'package:untitled2/pages/wallet.dart';
import 'package:untitled2/payment_gatway/razorpay.dart';
import 'package:untitled2/widget/app_constant.dart';


import 'firebase_options.dart';
import 'foodcategory/pharata.dart';
import 'package:http/http.dart' as http;

Future<void> main() async{
  // Stripe.publishableKey=publishablekey;
  HttpOverrides.global = MyHttpOverrides();
   WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:SignUp(),
      home: WalletPage(),
    );
  }
}
