import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/card.dart';
import 'package:travel/upi.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              'Payment',
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            // Placeholder to balance the title in the center
            Container(width: 60),
          ],
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 55,
              left: 25,
              child: Text(
                'Payment Methods',
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  wordSpacing: 5,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  // fontStyle: FontStyle.italic,
                  color: const Color(0xffFFFFFF),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const netbanking(),
                        ),
                      );
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 71, 76, 220),
                            Color.fromARGB(255, 50, 171, 219),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: SizedBox(
                        width: 330, // Fixed width for both buttons
                        height: 58,  // Fixed height for both buttons
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.credit_card,
                              color: Colors.white,
                              size: 30,
                            ),
                            const SizedBox(width: 10), // Spacing between icon and text
                            Text(
                              'Card',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 28,
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const upi(),
                        ),
                      );
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 71, 76, 220),
                            Color.fromARGB(255, 50, 171, 219),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: SizedBox(
                        width: 330, // Fixed width for both buttons
                        height: 58,  // Fixed height for both buttons
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.mobile_friendly,
                              color: Colors.white,
                              size: 30,
                            ),
                            const SizedBox(width: 10), // Spacing between icon and text
                            Text(
                              'UPI',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 28,
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
