// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel/alibag.dart';
import 'package:travel/bhimtal.dart';
import 'package:travel/goa.dart';
import 'package:travel/kerala.dart';
import 'package:travel/maharashtra.dart';
import 'package:travel/rajasthan.dart';
import 'package:travel/shimla.dart';
import 'package:travel/thar.dart';
import 'package:travel/uttarpradesh.dart';

import 'package:google_fonts/google_fonts.dart';

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topRight: Radius.circular(30))),
        elevation: 200,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Viv',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              accountEmail: Text(
                'abc@gmail.com',
                style: GoogleFonts.montserrat(fontSize: 18),
              ),
              currentAccountPicture: const CircleAvatar(
                child: ClipOval(
                    child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.freepik.com/512/7176/7176315.png'),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                )),
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(115, 0, 0, 0),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.favorite,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                'Favorites',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
            ListTile(
              leading: const Icon(
                Icons.airplane_ticket,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                'Tickets',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
            ListTile(
              leading: const Icon(
                Icons.currency_rupee_sharp,
                color: Colors.black,
                size: 27,
              ),
              title: Text(
                'Transactions',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
            const Divider(
              color: Color.fromARGB(54, 0, 0, 0),
              thickness: 2,
            ),
            ListTile(
                leading: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 27,
                ),
                title: Text(
                  'Sign Out',
                  style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2),
                ),
                onTap: () {
                  // FirebaseAuth.instance.signOut();
                }),
            ListTile(
              leading: const Icon(
                Icons.call,
                color: Colors.black,
                size: 27,
              ),
              title: Text(
                'Contact Us',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the drawer icon color to white
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          'India',
          style:
              GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
        )),
        actions: const [
          ClipOval(
            child: Image(
              image: NetworkImage(
                  'https://cdn-icons-png.freepik.com/512/7176/7176315.png'),
              height: 40,
              width: 40,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(padding: EdgeInsets.all(8)),
        ],
      ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding:
                    const EdgeInsets.only(top: 130, right: 300, left: 20, bottom: 20),
                child: Text(
                  'States',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onLongPress: () {},
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Maharashtra(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/maha.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            const Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Maharashtra',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: const Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            margin: const EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const Rajasthan(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/rajas.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            const Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Rajasthan',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: const Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            margin: const EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const Goa(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/goa.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            const Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Goa',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 2,
                                      fontSize: 17,
                                      color: const Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            margin: const EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const Kerala(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/kerala.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            const Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Kerala',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: const Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            margin: const EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const UttarPradesh(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/uttarpradesh.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            const Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Uttar Pradesh ',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: const Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ]),
                ),
              ),
              Container(
                  child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 45, right: 150, left: 18, bottom: 35),
                    child: Text(
                      'Popular Destinations',
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 10, right: 20, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/beach.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: const Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color:
                                        Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: const Text(
                                                '4.7',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              child: const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Alibag Beach',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Picturesque beach town in Maharashtra, India.',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                            const BoxConstraints.tightFor(
                                                height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const alibag(),
                                                    ));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                                  backgroundColor: const Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                  const Color(0xff1B7084),
                                                  elevation: 3),
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/shimla.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: const Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color:
                                        Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: const Text(
                                                '4.7',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w400),
                                              ),
                                            ),
                                            Container(
                                              child: const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Shimla',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Hill station, known for its colonial architecture and scenic mountain views.',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                            const BoxConstraints.tightFor(
                                                height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const shimla(),
                                                    ));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                                  backgroundColor: const Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                  const Color(0xff1B7084),
                                                  elevation: 3),
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/lake.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: const Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: const Text(
                                                '4.7',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              child: const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Bhimtal Lake',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Bhimtal is a lake in the town of Bhimtal, Nainital district of Uttarakhand',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                                const BoxConstraints.tightFor(
                                                    height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const bhimtal(),
                                                    ));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(15)),
                                                  backgroundColor: const Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                      const Color(0xff1B7084),
                                                  elevation: 3),
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/thar.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: const Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: const Text(
                                                '4.7',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              child: const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Thar Desert',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Great Indian Desert, famous for sand dunes and camel safaris.',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                                const BoxConstraints.tightFor(
                                                    height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const thar(),
                                                    ));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  backgroundColor: const Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                      const Color(0xff1B7084),
                                                  elevation: 3),
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            )
                          ],
                        )),
                  )
                ],
              ))
            ],
          )),
    );
  }
}
