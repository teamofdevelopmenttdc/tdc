import 'package:flutter/material.dart';

import 'package:tdc/acceuil.dart';

import 'package:tdc/premierinterface.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Ajoutez vos routes ici
      routes: {
        'premierinterface': (context) => Premierinterface(),
        'deuxiemeinterface': (context) => Deuxiemeinterface(),
        'troisiemeinterface': (context) => Troisiemeinterface(),
        'quatriemeinterface': (context) => Quatriemeinterface(),
        'HomeScreen': (context) => HomeScreen(),
      },
      home: Premierinterface(),
      debugShowCheckedModeBanner: false,
    );
  }
        
}