import 'package:flutter/material.dart';
import 'package:travel/payment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class flight extends StatefulWidget {
  const flight({Key? key}) : super(key: key);

  @override
  State<flight> createState() => _flightState();
}

class _flightState extends State<flight> {
  final items = [
    'Economy',
    'Business',
    'First',
  ];
  String? value;
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ));

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
                'Indian Airways',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
              )),
          actions: [
            Container(width: 60),
          ],
        ),
        body: Container(
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
              top: 50,
              left: 20,
              child: Text(
                'Details',
                style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    wordSpacing: 5,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffFFFFFF)),
              ),
            ),
            Positioned(
                top: 100,
                left: 40,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  decoration: commonInputDecoration(
                    label: 'From',
                    prefixIcon: const Icon(
                      Icons.airplanemode_active,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )),
            Positioned(
                top: 170,
                left: 40,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  decoration: commonInputDecoration(
                    label: 'Destination',
                    prefixIcon: const Icon(
                      Icons.location_on,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )),
            Positioned(
                top: 245,
                left: 40,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  decoration: commonInputDecoration(
                    label: 'Traveler Name',
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )),
            Positioned(
                top: 320,
                left: 40,
                right: 200,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  decoration: commonInputDecoration(
                    label: 'Age',
                    prefixIcon: const Icon(
                      Icons.numbers,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )),
            Positioned(
                top: 320,
                left: 200,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  decoration: commonInputDecoration(
                    label: 'Gender',
                    prefixIcon: const Icon(
                      Icons.male,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )),
            Positioned(
                top: 400,
                left: 40,
                right: 40,
                child: TextFormField(
                  toolbarOptions: const ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  cursorColor: Colors.white,
                  showCursor: true,
                  cursorHeight: 25,
                  style: const TextStyle(color: Colors.white),
                  controller: _date,
                  decoration: commonInputDecoration(
                    label: 'Date (yyyy-mm-dd)',
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
                        lastDate: DateTime(2100));

                    if (pickeddate != null) {
                      setState(() {
                        _date.text =
                            DateFormat('yyyy-MM-dd').format(pickeddate);
                      });
                    }
                  },
                )),
            Positioned(
                top: 460,
                left: 40,
                child: Row(
                  children: [
                    Container(
                      child: Container(
                        margin: const EdgeInsets.only(top: 27, right: 7),
                        child: const Icon(
                          Icons.card_travel_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Container(
                        child: Text(
                          'Class :',
                          style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              // wordSpacing: 0,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 0, top: 30),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(0, 0, 0, 0),
                              width: 4)),
                      child: DropdownButton<String>(
                        value: value,
                        iconSize: 20,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        focusColor: const Color.fromARGB(255, 64, 255, 80),
                        dropdownColor: const Color.fromARGB(171, 77, 122, 199),
                        items: items.map(buildMenuItem).toList(),
                        onChanged: ((value) =>
                            setState(() => this.value = value)),
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: 580,
              left: 100,
              right: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                    shadowColor: Colors.transparent,
                    elevation: 0),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Payment(),
                      ));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(0, 239, 239, 239)),
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    gradient: const LinearGradient(
                        colors: [Color(0xff66B8D9), Color(0xff4E95AF)]),
                  ),
                  child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    child: Text(
                      'Next',
                      style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
