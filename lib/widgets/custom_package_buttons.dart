import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final int index;
  final Function(int) onPressed;
  final int activeIndex;
  final String duration;

  CustomButton(this.index, this.onPressed, this.activeIndex, this.duration);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // print(index);
        onPressed(index);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(32.0), // Set the desired border radius
        ),
        primary: index == activeIndex ? Color(0xFF173B5C) : Color(0xFF12283C),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        elevation: 0.0,
      ),
      child: Text(duration),
    );
  }
}
