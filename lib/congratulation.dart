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
          Color(0xff22556B),
          Color(0xff35728A),
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
                  left: 90,
                  top: 50,
                  right: 60,
                  child: Text(
                    'Congratulations!  Your Ticket has been booked',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  )),
              const Positioned(
                  top: 180,
                  right: 180,
                  child: Icon(
                    Icons.celebration_rounded,
                    size: 60,
                    color: Color.fromARGB(229, 255, 255, 255),
                  )),
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
              Positioned(
                  bottom: 330,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 350,
                      height: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const first(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(55, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          child: Text(
                            'Explore',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          )),
                    ),
                  )),
              Positioned(
                  bottom: 250,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 350,
                      height: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            // FirebaseAuth.instance.signOut();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(72, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          child: Text(
                            'Logout',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          )),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
