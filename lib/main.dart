import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practica1/card_planet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final data =  [
    CardPlanetData(title: 'CHIVAS', 
    subtitle: 'El Club Deportivo Guadalajara más conocido como Guadalajara, Chivas Rayadas del Guadalajara.', 
    image: const AssetImage('assets/images/i.png') ,
    backgroundColor: const Color.fromRGBO(0, 10, 56, 1), 
    subtitleColor: Colors.pink, 
    titleColor: Colors.white,
    background: LottieBuilder.asset('assets/animation/bg1.json')
    ),

    CardPlanetData(title: 'Clasificaciones', 
    subtitle: 'En la tabla del torne actual el equipo del guadalajara esta en la posicion 3 hasta el momento.', 
    image: const AssetImage('assets/images/posicion.png') , 
    backgroundColor: Colors.white, 
    subtitleColor: Colors.purple, 
    titleColor: const Color.fromRGBO(0, 10, 56, 1),
    background: LottieBuilder.asset('assets/animation/bg1.json')
    ),

    CardPlanetData(title: 'Trofeos', 
    subtitle: 'El club guadalajara tiene 12 campeonatos de la liga, 4 copas mx, 2 de CONCACAF, etc.', 
    image: const AssetImage('assets/images/trofeo.png') , 
    backgroundColor: const Color.fromRGBO(255, 0, 0, 1), 
    subtitleColor: Colors.yellow, 
    titleColor: Colors.white,
    background: LottieBuilder.asset('assets/animation/bg1.json')
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
