import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/kerala.dart';
import 'package:travel/transport.dart';

class munnar extends StatefulWidget {
  const munnar({Key? key}) : super(key: key);

  @override
  State<munnar> createState() => _munnarState();
}

class _munnarState extends State<munnar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://media.istockphoto.com/id/843814058/photo/beautiful-tea-plantations-at-munnar-kerala-india-at-sunset-dusk-vibrant-hues-and-colorful.jpg?b=1&s=170667a&w=0&k=20&c=-O6nh3COKWozf9Caz2o-FdQRVJcc6hBaP2LUBfKH-XY='),
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
            '',
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
          actions: const [
            // ClipOval(
            //   child: Image(
            //     image: NetworkImage(
            //         'https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80'),
            //     height: 10,
            //     width: 50,
            //     fit: BoxFit.fitHeight,
            //   ),
            // ),
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
                      'Munnar',
                      style: GoogleFonts.montserrat(
                          fontSize: 36,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 254, 254, 254)),
                    ),
                  ),
                ),
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
                  top: 60,
                  left: 20,
                  child: Container(
                    child: Text(
                      '',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 254, 254, 254)),
                    ),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Transport()),
                              );
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
