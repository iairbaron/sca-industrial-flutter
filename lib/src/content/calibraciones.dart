import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

const youtubeVideo = 'https://www.youtube.com/embed/2FYFgy-JvJg';

class ServiceContent extends ResponsiveWidget {
  ServiceContent({Key? key}) : super(key: key) {
    ui.platformViewRegistry.registerViewFactory(
      'youtube-video',
      (int viewId) => IFrameElement()
        ..src = youtubeVideo
        ..style.border = 'none',
    );
  }

  @override
  Widget buildDesktop(BuildContext context) => ServiceContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => ServiceContentResponsive(24);
}

class ServiceContentResponsive extends StatelessWidget {
  final horizontalPadding;

  const ServiceContentResponsive(this.horizontalPadding);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "CALIBRACIONES ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'Durante los últimos 20 años, el mantenimiento industrial ha cambiado, tal vez sea la disciplina dentro del ámbito que más lo ha hecho.Ofrecemos servicio de mantenimiento en planta las 24HS los 365 del año.Asimismo, brindamos asesoramiento y "consejos" acerca de las mejores opciones para la compra de instrumentación y materiales de acuerdo a requerimientos particulares.Efectuamos mantenimientos correctivos, preventivos y predictivos.Asesoramos a nuestros clientes en la confección de cronogramas de mantenimiento para cada equipo. Confección de árbol de fallas.Reingeniería de repuestos para reducción de costos y nacionalización de insumos.',
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
