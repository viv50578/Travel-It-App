import 'package:travel/congratulation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class upi extends StatefulWidget {
  const upi({Key? key}) : super(key: key);

  @override
  State<upi> createState() => _upiState();
}

class _upiState extends State<upi> {
  final TextEditingController _date = TextEditingController();
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
              ' Payment Gateway',
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
                const Positioned(
                    top: 85,
                    left: 70,
                    height: 250,
                    width: 250,
                    child: Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/800px-QR_code_for_mobile_English_Wikipedia.svg.png'),
                    )),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 250,
                    width: 400,
                    color: const Color.fromARGB(122, 0, 0, 0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 15,
                          left: 15,
                          child: Text(
                            'Summary',
                            style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 15,
                          child: Text(
                            'Travelling Mode : ',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 15,
                          child: Text(
                            'Class :',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 140,
                          left: 15,
                          child: Text(
                            'Total Amount :',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                            bottom: 15,
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
                                            builder: (context) =>
                                                const congratulation(),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xff5F9DF7),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16))),
                                    child: Text(
                                      'Pay',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(255, 0, 0, 0)),
                                    )),
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
