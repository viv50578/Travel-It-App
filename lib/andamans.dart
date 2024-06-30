import 'package:flutter/material.dart';
import 'package:travel/train.dart';
import 'package:google_fonts/google_fonts.dart';

class andamans extends StatefulWidget {
  const andamans({Key? key}) : super(key: key);

  @override
  State<andamans> createState() => _andamansState();
}

class _andamansState extends State<andamans> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 29,
          ),
          elevation: 2,
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            'Beaches',
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
          actions: const [
            ClipOval(
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80'),
                height: 10,
                width: 50,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
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
                        'Alibaug Beach',
                        style: GoogleFonts.montserrat(
                            fontSize: 33,
                            letterSpacing: 0,
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
