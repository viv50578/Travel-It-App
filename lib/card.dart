import 'package:travel/congratulation.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class netbanking extends StatefulWidget {
  const netbanking({Key? key}) : super(key: key);

  @override
  State<netbanking> createState() => _netbankingState();
}

class _netbankingState extends State<netbanking> {
  final TextEditingController _date = TextEditingController();

  InputDecoration commonInputDecoration({required String label, required Icon prefixIcon}) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      labelText: label,
      border: const UnderlineInputBorder(),
      counterText: '',
      fillColor: const Color(0xffFFFEFE),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 238, 239, 245)),
      ),
      labelStyle: GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: const Color.fromARGB(205, 255, 255, 255),
      ),
    );
  }

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
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              'Card',
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
        body: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 40,
                left: 60,
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/009/384/393/original/credit-card-clipart-design-illustration-free-png.png',
                  height: 179,
                  width: 275,
                ),
              ),
              Positioned(
                top: 250,
                left: 40,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  decoration: commonInputDecoration(
                    label: 'Card Number',
                    prefixIcon: const Icon(
                      Icons.payment,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 315,
                left: 40,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  controller: _date,
                  decoration: commonInputDecoration(
                    label: 'Expiry Date',
                    prefixIcon: const Icon(
                      Icons.calendar_today_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );

                    if (pickeddate != null) {
                      setState(() {
                        _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                      });
                    }
                  },
                ),
              ),
              Positioned(
                top: 380,
                left: 40,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  decoration: commonInputDecoration(
                    label: 'Name',
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
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
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 15,
                        child: Text(
                          'Travelling Mode :',
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
                                    builder: (context) => const congratulation(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff5F9DF7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Text(
                                'Pay',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
