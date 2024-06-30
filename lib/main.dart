// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel/login.dart';

void main () {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color.fromARGB(45, 40, 148, 184)));
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    // scaffoldMessengerKey: Utils.messengerKey,
    debugShowCheckedModeBanner: false,
    home: const Login(),
  ));
}
