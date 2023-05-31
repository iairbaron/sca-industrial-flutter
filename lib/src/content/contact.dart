import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

const address ="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.1468619245466!2d-58.44001692331878!3d-34.600447657327294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca7307d9c495%3A0x8b8d3789cce0fe84!2sAv.%20Corrientes%205062%2C%20C1414%20Villa%20Crespo%2C%20Buenos%20Aires!5e0!3m2!1ses-419!2sar!4v1685387788384!5m2!1ses-419!2sar";

class ContactContent extends ResponsiveWidget {
  ContactContent({Key? key}) : super(key: key) {
    ui.platformViewRegistry.registerViewFactory(
        'google-maps',
        (int viewId) => IFrameElement()
          ..src = address
          ..style.border = 'none');
  }

  @override
  Widget buildDesktop(BuildContext context) => DesktopContactContent();

  @override
  Widget buildMobile(BuildContext context) => MobileContactContent();
}

class DesktopContactContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CONTACTO",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.blue) ),
                  const SizedBox(height: 30),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Nombre ",
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Nombre ",
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Apellido ",
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Mail ",
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Telefono ",
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Comentairo",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Enviar")),
                  )
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 400,
              width: 400,
              child: HtmlElementView(viewType: 'google-maps'),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileContactContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("CONTACTO",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
             TextField(
              decoration: const InputDecoration(
                hintText: "Nombre ",
              ),
            ),
              TextField(
              decoration: const InputDecoration(
                hintText: "Apellido ",
              ),
            ),
              TextField(
              decoration: const InputDecoration(
                hintText: "Mail ",
              ),
            ),
             TextField(
              decoration: const InputDecoration(
                hintText: "Telefono ",
              ),
            ),
             TextField(
              decoration: const InputDecoration(
                hintText: "Comentairo",
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:
                  ElevatedButton(onPressed: () {}, child: const Text("Enviar")),
            ),
            SizedBox(width: 10, height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 350,
                width: 350,
                child: HtmlElementView( viewType: 'google-maps'),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
