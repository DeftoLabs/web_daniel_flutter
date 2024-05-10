import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: Image.asset('assets/images/logo.png')
            ),
        ],
    );
  }
}