// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:travel/login.dart';
//
// import 'first.dart';
//
// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: Scaffold(
//         body: StreamBuilder<User?>(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (snapshot.hasData) {
//               return const first();
//             } else {
//               return const SignUp();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
