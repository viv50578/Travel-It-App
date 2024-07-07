// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/first.dart';
import 'package:travel/registration.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
  void main() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.amber));
  }
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  // String username = '';
  // String password = '';
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String username = '';
  String password = '';

  // Future signIn() async {
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: passwordController.text.trim());
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff06283D),
            Color(0xff256D85),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
              child: const Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1656880854269-ed46fd0f3dc5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fGJsdWUlMjBzY2VuZXJ5JTIwaW5kaWF8ZW58MHx8MHx8fDA%3D')),
          ),
          Container(
            child: Expanded(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      'Login',
                      style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          wordSpacing: 5,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffFFFFFF)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 30, bottom: 22),
                    margin: const EdgeInsets.only(
                        top: 25, left: 30, right: 30, bottom: 0),
                    child: TextFormField(
                      toolbarOptions: const ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      cursorHeight: 25,
                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      controller: emailController,
                      // onChanged: (val) {
                      //   setState(() => username = val);
                      // },
                      // validator: (val) {
                      //   if (val == null || val.isEmpty) {
                      //     return 'Enter Your username';
                      //   }
                      // },
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
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      obscureText: true,
                      controller: passwordController,
                      // validator: (val) {
                      //   if (val == null || val.isEmpty) {
                      //     return 'Enter The credentials';
                      //   }
                      // },
                      // onChanged: (val) {
                      //   setState(() => password = val);
                      // },
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
                      constraints: const BoxConstraints.tightFor(height: 55, width: 127),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, // Remove padding from the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0,
                          shadowColor: Colors.transparent, // Set this to transparent
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => first(),
                            ),
                          );
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xff66B8D9), Color(0xff4E95AF)],
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: const BoxConstraints.tightFor(height: 55, width: 127), // Ensure container fills the button
                            child: Text(
                              'Login',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
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
                            text: 'Don`t have an account? ',
                          ),
                          TextSpan(
                            text: 'Register',
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
                                    builder: (context) => const Registration(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
