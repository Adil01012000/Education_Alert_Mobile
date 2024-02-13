// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, avoid_print, deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import '../guest/hostel_screen.dart';
// import '../guest/library_screen.dart';
// import '../guest/transport_screen.dart';

class PackagesData {
  final String image;
  final String categoryName;
  final String routeNames;

  PackagesData(this.image, this.categoryName, this.routeNames);
}

class PackagesCards extends StatelessWidget {
  const PackagesCards({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight * 0.8;
    final List<PackagesData> data = [
      PackagesData('assets/images/hostel.png', 'Hostel', 'HostelScreen'),
      PackagesData(
          'assets/images/transport.png', 'Transport', 'TransportScreen'),
      PackagesData('assets/images/library.png', 'Library', 'LibraryScreen'),
    ];
    Map<String, WidgetBuilder> routes = {
      // 'HostelScreen': (context) => HostelScreen(),
      // 'TransportScreen': (context) => TransportScreen(),
      // 'LibraryScreen': (context) => LibraryScreen(),
      // Add more routes as needed
    };

    final List<Widget> imageSliders = [];

    for (int index = 0; index < data.length; index++) {
      imageSliders.add(
        Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      data[index].image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    bottom: 36.0,
                    left: 0.0,
                    right: 0.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                          child: Text(
                            data[index].categoryName,
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors
                                      .black, // Choose the color of the first shadow
                                  blurRadius:
                                      20.0, // Adjust the blur radius for the first shadow effect
                                  offset: Offset(2.0,
                                      2.0), // Set the horizontal and vertical offset for the first shadow
                                ),
                                Shadow(
                                  color: Colors
                                      .black, // Choose the color of the second shadow
                                  blurRadius:
                                      10.0, // Adjust the blur radius for the second shadow effect
                                  offset: Offset(-2.0,
                                      2.0), // Set the horizontal and vertical offset for the second shadow
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Builder(builder: (context) {
                              return ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         routes[data[index].routeNames](
                                  //             context),
                                  //   ),
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        25.0), // Use BorderRadius.circular
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                      size: 17,
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        enlargeCenterPage: true,
        height: height,
      ),
      carouselController: _controller,
    );
  }
}
