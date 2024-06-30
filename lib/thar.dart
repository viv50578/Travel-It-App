import 'package:flutter/material.dart';
import 'package:travel/train.dart';
import 'package:google_fonts/google_fonts.dart';

class thar extends StatefulWidget {
  const thar({Key? key}) : super(key: key);

  @override
  State<thar> createState() => _tharState();
}

class _tharState extends State<thar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1511860810434-a92f84c6f01e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          fit: BoxFit.cover,
        ),
      ),
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
          elevation: 10,
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            'Desert',
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          )),
          actions: [
            // Placeholder to balance the title in the center
            Container(width: 60),
          ],
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: (Container(
            height: 270,
            width: 400,
            color: const Color.fromARGB(117, 0, 0, 0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      child: Text(
                        'Thar Desert',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 254, 254, 254)),
                      ),
                    )),
                Positioned(
                  top: 25,
                  right: 20,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 7),
                        child: Text(
                          '4.6',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      Container(
                        child: const Icon(
                          Icons.star_rate_sharp,
                          size: 20,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 30,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 350,
                        height: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const train(),
                              //     ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16))),
                            child: Text(
                              'Book my Tickets',
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
          )),
        ),
      ),
    );
  }
}
