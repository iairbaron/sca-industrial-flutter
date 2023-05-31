import 'package:flutter/material.dart';



class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/scaBanner.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        color: Colors.blue
            .withOpacity(0.3), // Ajusta el color de fondo con transparencia
        height: height *1, // Ajusta el porcentaje de altura deseado
        child: Row(
          children: [
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child:Image.asset(
                      "images/logoSca.png",
                    ),
                  
                    
                    // child: const Text(
                    //   "Somos una empresa de ingeniería líder, enfocada en la innovación, líneas de proceso y diseño de equipos.Durante más de 27 años, hemos entregado maquinaria de alta tecnología para dos industrias claves: productos lácteos y bebidas.Diseñamos cada equipo movidos por nuestra búsqueda de entregar los más altos estándares de calidad en la industria.Desde la selección de componentes hasta el diseño y ensamblaje de procesos, brindamos un servicio completo, soporte técnico y equipos de última generación.",
                    //   style: TextStyle(
                    //     // fontWeight: FontWeight.bold,  
                    //     fontSize:20 ,
                    //     color: Colors.white,
                    //     backgroundColor: Colors.blueGrey     
                    //   ),
                  
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(width: 24),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

