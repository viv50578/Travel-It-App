// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel/first.dart';
import 'package:google_fonts/google_fonts.dart';

class congratulation extends StatefulWidget {
  const congratulation({Key? key}) : super(key: key);

  @override
  State<congratulation> createState() => _congratulationState();
}

class _congratulationState extends State<congratulation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff06283D),
          Color(0xff256D85),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 29,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            'Confirmation',
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          )),
          actions: [
            // Placeholder to balance the title in the center
            Container(width: 60),
          ],
        ),
        body: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 60,
                right: 60,
                top: 60,
                child: Center(
                  child: Text(
                    'Congratulations! Your Ticket has been booked',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 180,
                left: 0,
                right: 0,
                child: Center(
                  child: Icon(
                    Icons.celebration_rounded,
                    size: 60,
                    color: Color.fromARGB(229, 255, 255, 255),
                  ),
                ),
              ),
              // Positioned(
              //     bottom: 350,
              //     child: Container(
              //       padding: const EdgeInsets.only(left: 20),
              //       child: SizedBox(
              //         width: 350,
              //         height: 52,
              //         child: ElevatedButton(
              //             onPressed: () {},
              //             style: ElevatedButton.styleFrom(
              //                 backgroundColor: const Color.fromARGB(39, 0, 0, 0),
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(16))),
              //             child: Text(
              //               'Book my Tickets',
              //               style: GoogleFonts.montserrat(
              //                   fontSize: 20,
              //                   letterSpacing: 0,
              //                   fontWeight: FontWeight.w500,
              //                   color: const Color.fromARGB(255, 255, 255, 255)),
              //             )),
              //       ),
              //     )),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: 250,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const first(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                            shadowColor: Colors.transparent,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff66B8D9), Color(0xff4E95AF)],
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Explore',
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          // FirebaseAuth.instance.signOut();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                          shadowColor: Colors.transparent,
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xff66B8D9), Color(0xff4E95AF)],
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Logout',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
