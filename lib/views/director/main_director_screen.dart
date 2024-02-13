import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDirectorScreen extends StatelessWidget {
  const MainDirectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283c),
      appBar: AppBar(
        backgroundColor: Color(0xFF173B5C),
        leading: Image.asset('assets/images/logo.png'),
        title: Text('mon établissement'),
        actions: [Icon(Icons.menu)],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.zero,
              // width: double.infinity, // Full width of the screen
              // height: MediaQuery.of(context).size.height >= 183
              //     ? 183
              //     : MediaQuery.of(context).size.height,
              // color: Color(0xFF12283c),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Informations',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Adjust the value as needed
                        ),
                        color: Color(0xFF173B5C),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Name: ',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Mon Ecole Et Moi',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Image.asset(
                                          'assets/images/mingcute_edit-fill.png')
                                    ],
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 22.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/location.png'),
                                          Text(
                                            'Mulhouse',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/phone.png'),
                                          Text(
                                            '0608143625',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(25),
            Container(
              margin: EdgeInsets.zero,
              width: double.infinity, // Full width of the screen
              height: MediaQuery.of(context).size.height >= 183
                  ? 183
                  : MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Director',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Adjust the value as needed
                        ),
                        color: Color(0xFF173B5C),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          'assets/images/solar_user-id-bold.png'),
                                      Image.asset(
                                          'assets/images/mingcute_edit-fill.png')
                                    ],
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 22.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Julien Robert',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(7),
            Container(
              margin: EdgeInsets.zero,
              width: double.infinity, // Full width of the screen
              height: MediaQuery.of(context).size.height >= 183
                  ? 183
                  : MediaQuery.of(context).size.height,

              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Staff',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height * 0.17,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Color(0xFF173B5C),
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    subtitle: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset(
                                              'assets/images/solar_user-id-bold.png'),
                                        ),
                                        Gap(10),
                                        Text(
                                          'Julien Robert',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Gap(10),
                                        Image.asset('assets/images/Vector.png'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Gap(8),
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Color(0xFF173B5C),
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    subtitle: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset(
                                              'assets/images/solar_user-id-bold.png'),
                                        ),
                                        Gap(10),
                                        Text(
                                          'Julien Robert',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Gap(10),
                                        Image.asset('assets/images/Vector.png'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 247, 56, 89),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Invite Staff',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Gap(10),
                    Image.asset('assets/images/invite.png')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
