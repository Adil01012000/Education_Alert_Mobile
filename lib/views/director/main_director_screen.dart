// ignore_for_file: prefer_const_constructors, unused_import, avoid_unnecessary_containers

import 'package:edualert/views/generic/alert_history.dart';
import 'package:edualert/views/generic/alerts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/route_animations.dart';
import './director_menu_screen.dart';

class MainDirectorScreen extends StatefulWidget {
  const MainDirectorScreen({super.key});

  @override
  State<MainDirectorScreen> createState() => _MainDirectorScreenState();
}

class _MainDirectorScreenState extends State<MainDirectorScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Color.fromARGB(255, 23, 59, 92),
        height: 80,
        activeColor: Colors.yellow,
        iconSize: 30,
        inactiveColor: Color.fromARGB(255, 230, 230, 230),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.domain),
              label: 'SCHOOLS',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.alarm_add), label: 'ALERTS'),
          BottomNavigationBarItem(
              icon: Icon(Icons.campaign), label: 'ALERTS NEWS'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => Scaffold(
                backgroundColor: Color(0xFF12283c),
                appBar: AppBar(
                  backgroundColor: Color(0xFF173B5C),
                  leading: Image.asset('assets/images/logo.png'),
                  title: Center(
                      child: Text(
                    'Mon établissement',
                    style: TextStyle(color: Colors.white),
                  )),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(createRoute());
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ))
                  ],
                ),
                body: Center(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12.0, top: 20),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
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
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                            padding: const EdgeInsets.only(
                                                top: 22.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12.0, top: 15),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
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
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                    'assets/images/solar_user-id-bold.png'),
                                                Image.asset(
                                                    'assets/images/mingcute_edit-fill.png')
                                              ],
                                            ),
                                          ),
                                          subtitle: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 22.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12.0, top: 15),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Staf',
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
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        color: Color(0xFF173B5C),
                                        child: Column(
                                          children: <Widget>[
                                            ListTile(
                                              subtitle: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
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
                                                  Image.asset(
                                                      'assets/images/Vector.png'),
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        color: Color(0xFF173B5C),
                                        child: Column(
                                          children: <Widget>[
                                            ListTile(
                                              subtitle: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
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
                                                  Image.asset(
                                                      'assets/images/Vector.png'),
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
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                        width: MediaQuery.of(context).size.width,
                        height: 100,
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
                              Image.asset('assets/images/invite.png')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Alerts(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AlertsHistory(),
              );
            });
          default:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Text('Default'),
              );
            });
        }
      },
    );
  }
}
