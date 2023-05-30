import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

const googlePlayURL =
    'https://play.google.com/store/apps/details?id=com.google.android.youtube';
const appStoreURL = 'https://apps.apple.com/tw/app/youtube/id544007664';

class HomeContent extends ResponsiveWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => const DesktopHomeContent();

  @override
  Widget buildMobile(BuildContext context) => const MobileHomeContent();
}

class DesktopHomeContent extends StatelessWidget {
  const DesktopHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .65,
      child: Row(
        children: [
          Container(
            width: width * .35,
            height: height* .4,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('images/scaBanner.jpg'),
                ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * .40, // Establece el ancho deseado aquí
                  child: const Text(
                    "S.C.A INDUSTRIAL S.A. ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color:Colors.blue ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                width: width * .40,
                  child: const Text(
                    "Somos una empresa de ingeniería líder, enfocada en la innovación, líneas de proceso y diseño de equipos.Durante más de 27 años, hemos entregado maquinaria de alta tecnología para dos industrias claves: productos lácteos y bebidas.Diseñamos cada equipo movidos por nuestra búsqueda de entregar los más altos estándares de calidad en la industria.Desde la selección de componentes hasta el diseño y ensamblaje de procesos, brindamos un servicio completo, soporte técnico y equipos de última generación",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(width: 24),
                  ],
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}

class MobileHomeContent extends StatelessWidget {
  const MobileHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const  Text(
            "Federacion esgrima Argentina",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const SizedBox(height: 10),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
          ),
          const SizedBox(height: 24),
          const SizedBox(height: 24),
          const SizedBox(height: 1),
          Image.asset(
            'images/esgrima.png',
            height: 350,
          ),
        ],
      ),
    );
  }
}
