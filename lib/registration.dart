// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:travel/first.dart';
// // import 'package:travel/main_page.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:flutter/gestures.dart';
// //
// // class registration extends StatefulWidget {
// //   const registration({Key? key}) : super(key: key);
// //
// //   @override
// //   State<registration> createState() => _registrationState();
// //   void main() {
// //     SystemChrome.setSystemUIOverlayStyle(
// //         const SystemUiOverlayStyle(statusBarColor: Colors.amber));
// //   }
// // }
// //
// // class _registrationState extends State<registration> {
// //   final _formKey = GlobalKey<FormState>();
// //   // String username = '';
// //   // String password = '';
// //   final emailController = TextEditingController();
// //   final passwordController = TextEditingController();
// //   String username = '';
// //   String password = '';
// //
// //   // Future signIn() async {
// //   //   // showDialog(
// //   //   //     context: context,
// //   //   //     barrierDismissible: false,
// //   //   //     builder: (context) => Center(child: CircularProgressIndicator()));
// //   //   try {
// //   //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
// //   //       email: emailController.text.trim(),
// //   //       password: passwordController.text.trim(),
// //   //     );
// //   //   } on FirebaseAuthException catch (e) {
// //   //     print(e);
// //   //   }
// //   // }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: const BoxDecoration(
// //             gradient: LinearGradient(
// //           colors: [
// //             Color(0xff06283D),
// //             Color(0xff256D85),
// //           ],
// //           begin: Alignment.topCenter,
// //           end: Alignment.bottomCenter,
// //         )),
// //         child:
// //             Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
// //           Container(
// //             child: ClipRRect(
// //               borderRadius: BorderRadius.circular(30),
// //               child: const Image(
// //                   image: NetworkImage(
// //                       'https://images.unsplash.com/photo-1533757879476-8f4a3cb1ae4b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')),
// //             ),
// //           ),
// //           Container(
// //             child: Expanded(
// //               child: Form(
// //                 key: _formKey,
// //                 child: Column(children: [
// //                   Container(
// //                     padding: const EdgeInsets.only(top: 50),
// //                     child: Text(
// //                       'Registrations',
// //                       style: GoogleFonts.montserrat(
// //                           letterSpacing: 1,
// //                           wordSpacing: 5,
// //                           fontSize: 30,
// //                           fontWeight: FontWeight.w400,
// //                           color: const Color(0xffFFFFFF)),
// //                     ),
// //                   ),
// //                   Container(
// //                     padding: const EdgeInsets.only(left: 30, right: 30, bottom: 22),
// //                     margin: const EdgeInsets.only(
// //                         top: 25, left: 30, right: 30, bottom: 0),
// //                     child: TextFormField(
// //                       toolbarOptions: const ToolbarOptions(
// //                           copy: true, cut: true, paste: true, selectAll: true),
// //                       cursorHeight: 25,
// //
// //                       style: const TextStyle(fontSize: 20, color: Colors.white),
// //                       controller: emailController,
// //                       // onChanged: (val) {
// //                       //   setState(() => username = val);
// //                       // },
// //                       // validator: (val) {
// //                       //   if (val == null || val.isEmpty) {
// //                       //     return 'Enter Your username';
// //                       //   }
// //                       // },
// //                       decoration: InputDecoration(
// //                           prefixIcon: const Icon(
// //                             Icons.email,
// //                             size: 30,
// //                             color: Color.fromARGB(136, 255, 255, 255),
// //                           ),
// //                           labelText: 'Register Email',
// //                           border: const UnderlineInputBorder(),
// //                           counterText: '',
// //                           fillColor: const Color(0xffFFFEFE),
// //                           focusedBorder: const UnderlineInputBorder(
// //                             borderSide: BorderSide(
// //                                 color: Color.fromARGB(255, 238, 239, 245)),
// //                           ),
// //                           labelStyle: GoogleFonts.montserrat(
// //                               fontSize: 19,
// //                               color: const Color.fromARGB(160, 255, 255, 255))),
// //                     ),
// //                   ),
// //                   Container(
// //                     padding: const EdgeInsets.only(left: 30, right: 30),
// //                     margin: const EdgeInsets.only(top: 0, left: 30, right: 30),
// //                     child: TextFormField(
// //                       cursorHeight: 25,
// //                       style: const TextStyle(fontSize: 20, color: Colors.white),
// //                       obscureText: true,
// //                       controller: passwordController,
// //                       // validator: (val) {
// //                       //   if (val == null || val.isEmpty) {
// //                       //     return 'Enter The credentials';
// //                       //   }
// //                       // },
// //                       // onChanged: (val) {
// //                       //   setState(() => password = val);
// //                       // },
// //                       decoration: InputDecoration(
// //                           prefixIcon: const Icon(
// //                             Icons.lock,
// //                             size: 30,
// //                             color: Color.fromARGB(147, 246, 243, 243),
// //                           ),
// //                           labelText: 'Password',
// //                           border: const UnderlineInputBorder(),
// //                           fillColor: const Color(0xffFFFEFE),
// //                           focusedBorder: const UnderlineInputBorder(
// //                             borderSide: BorderSide(
// //                                 color: Color.fromARGB(255, 238, 239, 245)),
// //                           ),
// //                           labelStyle: GoogleFonts.montserrat(
// //                               fontSize: 19,
// //                               color: const Color.fromARGB(160, 255, 255, 255))),
// //                     ),
// //                   ),
// //                   Container(
// //                       padding: const EdgeInsets.only(top: 36),
// //                       child: ConstrainedBox(
// //                         constraints:
// //                             const BoxConstraints.tightFor(height: 42, width: 127),
// //                         child: ElevatedButton(
// //                           onPressed: () {
// //                             Navigator.push(
// //                                 context,
// //                                 MaterialPageRoute(
// //                                   builder: (context) => const first(),
// //                                 ));
// //                           },
// //                           style: ElevatedButton.styleFrom(
// //                               shape: RoundedRectangleBorder(
// //                                   borderRadius: BorderRadius.circular(15)), backgroundColor: const Color(0xff1B7084),
// //                               shadowColor: const Color(0xff1B7084),
// //                               elevation: 3),
// //                           child: Text(
// //                             'Register',
// //                             style: GoogleFonts.montserrat(
// //                                 fontSize: 20, fontWeight: FontWeight.w400),
// //                           ),
// //                         ),
// //                       )),
// //                   Container(
// //                     padding: const EdgeInsets.only(top: 30, left: 15),
// //                     child: RichText(
// //                       text: TextSpan(
// //                           style: const TextStyle(
// //                               color: Colors.black,
// //                               fontSize: 22,
// //                               fontWeight: FontWeight.w500),
// //                           children: <TextSpan>[
// //                             const TextSpan(text: 'Already Have an account : '),
// //                             TextSpan(
// //                                 text: 'Click Here ',
// //                                 style: const TextStyle(
// //                                     color: Color.fromARGB(255, 251, 251, 251),
// //                                     fontSize: 22,
// //                                     fontWeight: FontWeight.w500),
// //                                 recognizer: TapGestureRecognizer()
// //                                   ..onTap = () {
// //                                     Navigator.push(
// //                                         context,
// //                                         MaterialPageRoute(
// //                                           builder: (context) => const MainPage(),
// //                                         ));
// //                                   }),
// //                           ]),
// //                     ),
// //                   )
// //                 ]),
// //               ),
// //             ),
// //           )
// //         ]),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
//
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:travel/first.dart';
// import 'package:travel/main_page.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Registration extends StatefulWidget {
//   const Registration({Key? key}) : super(key: key);
//
//   @override
//   State<Registration> createState() => _RegistrationState();
// }
//
// class _RegistrationState extends State<Registration> {
//   final _formKey = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xff06283D),
//               Color(0xff256D85),
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: const Image(
//                   image: NetworkImage(
//                       'https://images.unsplash.com/photo-1533757879476-8f4a3cb1ae4b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.only(top: 50),
//                       child: Text(
//                         'Registrations',
//                         style: GoogleFonts.montserrat(
//                           letterSpacing: 1,
//                           wordSpacing: 5,
//                           fontSize: 30,
//                           fontWeight: FontWeight.w400,
//                           color: const Color(0xffFFFFFF),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.only(
//                           left: 30, right: 30, bottom: 22),
//                       margin: const EdgeInsets.only(
//                           top: 25, left: 30, right: 30, bottom: 0),
//                       child: TextFormField(
//                         toolbarOptions: const ToolbarOptions(
//                           copy: true,
//                           cut: true,
//                           paste: true,
//                           selectAll: true,
//                         ),
//                         cursorHeight: 25,
//                         style: const TextStyle(
//                             fontSize: 20, color: Colors.white),
//                         controller: emailController,
//                         decoration: InputDecoration(
//                           prefixIcon: const Icon(
//                             Icons.email,
//                             size: 30,
//                             color: Color.fromARGB(136, 255, 255, 255),
//                           ),
//                           labelText: 'Register Email',
//                           border: const UnderlineInputBorder(),
//                           counterText: '',
//                           fillColor: const Color(0xffFFFEFE),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                                 color: Color.fromARGB(255, 238, 239, 245)),
//                           ),
//                           labelStyle: GoogleFonts.montserrat(
//                             fontSize: 19,
//                             color: const Color.fromARGB(160, 255, 255, 255),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.only(left: 30, right: 30),
//                       margin: const EdgeInsets.only(top: 0, left: 30, right: 30),
//                       child: TextFormField(
//                         cursorHeight: 25,
//                         style: const TextStyle(
//                             fontSize: 20, color: Colors.white),
//                         obscureText: true,
//                         controller: passwordController,
//                         decoration: InputDecoration(
//                           prefixIcon: const Icon(
//                             Icons.lock,
//                             size: 30,
//                             color: Color.fromARGB(147, 246, 243, 243),
//                           ),
//                           labelText: 'Password',
//                           border: const UnderlineInputBorder(),
//                           fillColor: const Color(0xffFFFEFE),
//                           focusedBorder: const UnderlineInputBorder(
//                             borderSide: BorderSide(
//                                 color: Color.fromARGB(255, 238, 239, 245)),
//                           ),
//                           labelStyle: GoogleFonts.montserrat(
//                             fontSize: 19,
//                             color: const Color.fromARGB(160, 255, 255, 255),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.only(top: 36),
//                       child: ConstrainedBox(
//                         constraints: const BoxConstraints.tightFor(
//                             height: 42, width: 127),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const first(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             backgroundColor: const Color(0xff1B7084),
//                             shadowColor: const Color(0xff1B7084),
//                             elevation: 3,
//                           ),
//                           child: Text(
//                             'Register',
//                             style: GoogleFonts.montserrat(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.only(top: 30, left: 15),
//                       child: RichText(
//                         text: TextSpan(
//                           style: const TextStyle(
//                             color: Colors.black,
//                             fontSize: 22,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           children: <TextSpan>[
//                             const TextSpan(
//                               text: 'Already Have an account : ',
//                             ),
//                             TextSpan(
//                               text: 'Click Here ',
//                               style: const TextStyle(
//                                 color: Color.fromARGB(255, 251, 251, 251),
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               recognizer: TapGestureRecognizer()
//                                 ..onTap = () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => const MainPage(),
//                                     ),
//                                   );
//                                 },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }












import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/first.dart';
import 'package:travel/login.dart';
// import 'package:travel2/main_page.dart';
// import 'package:google_fonts/google_fonts.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff06283D),
              Color(0xff256D85),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                child: const Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1586464225292-937d1632cd17?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGJsdWUlMjBzY2VuZXJ5JTIwaW5kaWF8ZW58MHx8MHx8fDA%3D'),
                ),
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Registration',
                        style: GoogleFonts.montserrat(
                            letterSpacing: 1,
                            wordSpacing: 5,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffFFFFFF)),
                        // style: GoogleFonts.montserrat(
                        //   letterSpacing: 1,
                        //   wordSpacing: 5,
                        //   fontSize: 30,
                        //   fontWeight: FontWeight.w400,
                        //   color: const Color(0xffFFFFFF),
                        // ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 22),
                      margin: const EdgeInsets.only(
                          top: 25, left: 30, right: 30, bottom: 0),
                      child: TextFormField(
                        toolbarOptions: const ToolbarOptions(
                          copy: true,
                          cut: true,
                          paste: true,
                          selectAll: true,
                        ),
                        cursorHeight: 25,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            fontSize: 20, color: Colors.white),
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            size: 30,
                            color: Color.fromARGB(136, 255, 255, 255),
                          ),
                          labelText: 'Email',
                          border: const UnderlineInputBorder(),
                          counterText: '',
                          fillColor: const Color(0xffFFFEFE),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 238, 239, 245)),
                          ),
                            labelStyle: GoogleFonts.montserrat(
                                fontSize: 19,
                                color: const Color.fromARGB(160, 255, 255, 255))),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      margin: const EdgeInsets.only(top: 0, left: 30, right: 30),
                      child: TextFormField(
                        cursorHeight: 25,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            fontSize: 20, color: Colors.white),
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 30,
                            color: Color.fromARGB(147, 246, 243, 243),
                          ),
                          labelText: 'Password',
                          border: const UnderlineInputBorder(),
                          fillColor: const Color(0xffFFFEFE),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 238, 239, 245)),
                          ),
                            labelStyle: GoogleFonts.montserrat(
                                fontSize: 19,
                                color: const Color.fromARGB(160, 255, 255, 255))),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 36),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 42, width: 127),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => first(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            backgroundColor: const Color(0xff1B7084),
                            shadowColor: const Color(0xff1B7084),
                            elevation: 3,
                          ),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 30, left: 15),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Already have an account? ',
                            ),
                            TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Login(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
