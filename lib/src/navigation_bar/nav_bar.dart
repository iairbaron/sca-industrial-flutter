import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widget/responsive_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'nav_bar_button.dart';

class NavBar extends ResponsiveWidget {
  const NavBar({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DekstopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileNavBar();
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class DekstopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Image.asset(
              "images/logoSca.png",
              height: 70.0,
            ),
            const SizedBox(width: 10.0),
            Expanded(child: Container()),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: const Text("Home"),
                ),
                const SizedBox(width: 10), // Espacio horizontal de 10 píxeles
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/contact");
                  },
                  child: const Text("contact"),
                ),
                const SizedBox(width: 10), // Espacio horizontal de 10 píxeles
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Servicios"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//---------------- MOBILE NAVBAR

class MobileNavBar extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);
    return Stack(
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.only(top: 70.0),
          duration: const Duration(milliseconds: 350),
          curve: Curves.ease,
          height: containerHeight.value,
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBarButton(
                  text: "Home",
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "Contact",
                  onTap: () {
                    Navigator.pushNamed(context, "/contact");
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "Servicios",
                  onTap: () {
                    containerHeight.value = 0;
                  },
                ),
              ], // children
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/logoSca.png",
                  height: 40.0,
                ),
                const SizedBox(width: 10.0),
                Expanded(child: Container()),
                Material(
                  child: InkWell(
                    splashColor: Colors.white60,
                    onTap: () {
                      final height = containerHeight.value > 0 ? 0.0 : 240.0;
                      containerHeight.value = height;
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
