import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

class ScreenshotsContent extends ResponsiveWidget {
  const ScreenshotsContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => ScreenshotsContentDekstop(200);

  @override
  Widget buildMobile(BuildContext context) => ScreenshotsContentMobile();
}

class ScreenshotsContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "SERVICIOS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Somos una empresa dedicada a la prestación de servicios múltiples de apoyo a la industria y comercios en las áreas de ingeniería.",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _Image(
                      image: "images/screenshots/descarga.jpg",
                      width: 200),
                  _Image(
                      image: "images/screenshots/561.jpg", width: 200),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenshotsContentDekstop extends StatelessWidget {
  final horizontalPadding;

  const ScreenshotsContentDekstop(this.horizontalPadding);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "SERVICIOS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Somos una empresa dedicada a la prestación de servicios múltiples de apoyo a la industria y comercios en las áreas de ingeniería.",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _Image(image: "images/screenshots/descarga.jpg", width: 300 ,),
                  _Image(image: "images/screenshots/561.jpg", width: 300,),
                  _Image(image: "images/screenshots/descarga.jpg", width: 300,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final String image;
  final double width;

  const _Image({Key? key, required this.image, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16),
        Image.asset(image, width: width),
        SizedBox(width: 16),
      ],
    );
  }
}

class ScreenShotsContent extends StatelessWidget {
  const ScreenShotsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 250,
    );
  }
}
