import 'package:flutter/material.dart';
import 'package:flutter_web_danieldefaria/ui/views/about_view.dart';
import 'package:flutter_web_danieldefaria/ui/views/contact_view.dart';
import 'package:flutter_web_danieldefaria/ui/views/home_view.dart';
import 'package:flutter_web_danieldefaria/ui/views/portafolio_view.dart';
import 'package:flutter_web_danieldefaria/ui/views/video_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [

            _HomeBody(),

            Positioned(
              right: 20,
              top:20,
              child: Container(
                width: 150,
                height: 50,
              )),
          ],
        ),
      )
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        VideoView(),
        AboutView(),
        Portafolio(),
        ContactView(),
      ],
    );
  }
}