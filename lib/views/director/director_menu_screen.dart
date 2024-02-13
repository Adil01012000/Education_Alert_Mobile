import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'director_account_screen.dart';

class DirectorMenuScreen extends StatelessWidget {
  const DirectorMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283c),
      appBar: AppBar(
        backgroundColor: Color(0xFF173B5C),
        leading: Image.asset('assets/images/logo.png'),
        title: Center(child: Text('Menu',style: TextStyle(color: Colors.white),)),
        actions: [Icon(Icons.menu,color: Colors.white,)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DirectorAccountScreen()),
                  );
                },
                child: Row(
                  children: [
                    Image.asset('assets/images/ic_baseline-account-circle.png'),
                    Gap(15),
                    Text(
                      'My Account',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(40),
              Row(
                children: [
                  Image.asset('assets/images/Mask group.png'),
                  Gap(15),
                  Text(
                    'Subscription plan',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(40),
              Row(
                children: [
                  Image.asset('assets/images/gis_map-send.png'),
                  Gap(15),
                  Text(
                    'Send Feedback',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(40),
              Row(
                children: [
                  Image.asset(
                      'assets/images/material-symbols-light_rate-review.png'),
                  Gap(15),
                  Text(
                    'Rate',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(40),
              Row(
                children: [
                  Image.asset('assets/images/iconamoon_link-bold.png'),
                  Gap(15),
                  Text(
                    'Privacy Policy',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(40),
              Row(
                children: [
                  Image.asset('assets/images/mdi_about.png'),
                  Gap(15),
                  Text(
                    'About Us',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(40),
              Row(
                children: [
                  Image.asset('assets/images/mdi_logout.png'),
                  Gap(15),
                  Text(
                    'Log Out',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
