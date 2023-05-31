import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

const youtubeVideo = 'https://www.youtube.com/embed/2FYFgy-JvJg';

class FeaturesContent extends ResponsiveWidget {
  FeaturesContent({Key? key}) : super(key: key) {
    ui.platformViewRegistry.registerViewFactory(
      'youtube-video',
      (int viewId) => IFrameElement()
        ..src = youtubeVideo
        ..style.border = 'none',
    );
  }

  @override
  Widget buildDesktop(BuildContext context) => FeaturesContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => FeaturesContentResponsive(24);
}

class FeaturesContentResponsive extends StatelessWidget {
  final horizontalPadding;

  const FeaturesContentResponsive(this.horizontalPadding);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "S.C.A INDUSTRIAL S.A. ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'Somos una empresa de ingeniería líder, enfocada en la innovación, líneas de proceso y diseño de equipos.Durante más de 27 años, hemos entregado maquinaria de alta tecnología para dos industrias claves: productos lácteos y bebidas.Diseñamos cada equipo movidos por nuestra búsqueda de entregar los más altos estándares de calidad en la industria.Desde la selección de componentes hasta el diseño y ensamblaje de procesos, brindamos un servicio completo, soporte técnico y equipos de última generació',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: 800,
              height: 450,
              child:
                  HtmlElementView(viewType: 'youtube-video', key: UniqueKey()),
            )
          ],
        ),
      ),
    );
  }
}
