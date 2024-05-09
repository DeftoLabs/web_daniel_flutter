import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30.0, right: 30.0),
      child: Container(
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Column(
              children: [
                Text(
                  'Video View',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 80,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}