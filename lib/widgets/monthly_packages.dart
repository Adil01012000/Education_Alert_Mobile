import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthlyPackagesData {
  final String users;
  final String userDuration;
  final String routeNames;

  MonthlyPackagesData(this.users, this.userDuration, this.routeNames);
}

class MonthlyPackagesCards extends StatefulWidget {
  const MonthlyPackagesCards({Key? key}) : super(key: key);

  @override
  State<MonthlyPackagesCards> createState() => _MonthlyPackagesCardsState();
}

class _MonthlyPackagesCardsState extends State<MonthlyPackagesCards> {
  final CarouselController _controller = CarouselController();
  int selectedCheckboxIndex =
      -1; // Initialize with -1 to represent no selection

  final List<MonthlyPackagesData> data = [
    MonthlyPackagesData('46 Users', 'First Month Offer', 'HostelScreen'),
    MonthlyPackagesData('60 Users', 'First Month Paid', 'TransportScreen'),
    MonthlyPackagesData('Unlimited', 'First Month Paid', 'LibraryScreen'),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = [];
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight * 0.7;

    for (int index = 0; index < data.length; index++) {
      imageSliders.add(
        GestureDetector(
          onTap: () {
            setState(() {
              selectedCheckboxIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color(0xFF173B5C),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Checkbox(
                      value: selectedCheckboxIndex == index,
                      onChanged: (value) {
                        setState(() {
                          selectedCheckboxIndex = index;
                        });
                      },
                      activeColor: Colors.white, // Hide default check mark
                      checkColor: Color(0xFF173B5C),
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // Set the uncheck color
                          if (states.contains(MaterialState.disabled)) {
                            return Colors
                                .white; // Use the desired color when unchecked
                          }
                          return Colors.white; // Use a transparent color
                        },
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/carbon_skill-level-basic.png',
                      ),
                      Text(
                        'Subscription Plan',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Text(
                        'Details',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Gap(50),
                      Image.asset('assets/images/60 €.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                ),
                                Gap(5),
                                Text(
                                  data[index].users,
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                ),
                                Gap(5),
                                Text(
                                  data[index].userDuration,
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom:
                        20, // Adjust the value to set the button lower or higher
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                      height: 80,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 247, 56, 89),
                          ),
                        ),
                        child: Text(
                          'Payer',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
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
        ),
      );
    }

    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        enlargeCenterPage: true,
        height: height, // Adjust the height as needed
      ),
      carouselController: _controller,
    );
  }
}
