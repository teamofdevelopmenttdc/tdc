import 'package:flutter/material.dart';

class Premierinterface extends StatefulWidget {
  @override
  _PremierinterfaceState createState() => _PremierinterfaceState();
}

class _PremierinterfaceState extends State<Premierinterface> {
  int currentPage = 0; // Page actuelle (commence à 0 pour la première page)

  void goToNextPage() {
    setState(() {
      currentPage++; // Augmente la page actuelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                  onPressed: () {
                    // Action pour le bouton "Sauter"
                    Navigator.pushNamed(context, 'HomeScreen');
                  },
                  child: Text('Sauter'),
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color.fromARGB(255, 247, 234, 215),
                    backgroundColor: Color(0xFFB0E0E6),
              
                   ),
                  
                 ),
                  SizedBox(width: 80),
                  ElevatedButton(
                    onPressed: () {
                      // Action pour le bouton "Suivant"
                      goToNextPage();
                      Navigator.pushNamed(context, 'deuxiemeinterface');

                    },
                    child: Text('Suivant'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB0E0E6),
                      // .fromRVB(176, 224, 230),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Image.asset('./image/img1.jpg'),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage(
                  placeholder: AssetImage('./image/loading.gif'),
                  image: Image.asset('./image/img2.png').image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Developpez Votre Gratitude.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 20,
                ),
              ),
              Text(
                'Exprimez votre gratitude envers Dieu pour les bénédictions dans votre vie. La gratitude renforce la foi et éclaire la joie.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Icon(
                      Icons.circle,
                      // color: currentPage == i ? Color.fromARGB(255, 241, 162, 43) : Colors.grey,
                      color: currentPage == i ? Color (0xFF98FB98) : Colors.grey,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class Deuxiemeinterface extends StatefulWidget {
  @override
  _DeuxiemeinterfaceState createState() => _DeuxiemeinterfaceState();
}

class _DeuxiemeinterfaceState extends State<Deuxiemeinterface> {
  int currentPage = 1;

  void goToNextPage(){
    setState(() {
      currentPage++; //augmente la page actuelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Développez Votre Gratitude'),
        //   backgroundColor: Colors.green,
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action pour le bouton "Sauter"
                        Navigator.pushNamed(context, 'premierinterface');
                    },
                    child: Text('Retour'),
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color.fromARGB(255, 247, 234, 215),
                      backgroundColor: Color(0xFFB0E0E6),
                    ),
                  ),
                  SizedBox(width: 80),
                  ElevatedButton(
                    onPressed: () {
                      goToNextPage();
                      Navigator.pushNamed(context, 'troisiemeinterface');
                      // Action pour le bouton "Suivant"
                    },
                    child: Text('Suivant'),
                    style: ElevatedButton.styleFrom(
                                            // backgroundColor: Color.fromARGB(255, 247, 234, 215),
                                            backgroundColor: Color(0xFFB0E0E6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Image.asset('./image/force1.jpg'),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage(
                  placeholder: AssetImage('./image/loading.gif'),
                  image: Image.asset('./image/force1.jpg').image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Trouvez la force dans les moments difficiles.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 20,
                ),
              ),
              Text(
                'Peu importe les defits que vous rencontrez, Dieu est toujour présent pour vous guidez et vous reconfortez',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Icon(
                      Icons.circle,
                      // color: currentPage == i ? Color.fromARGB(255, 241, 162, 43) : Colors.grey,
                      color: currentPage == i ? Color (0xFF98FB98) : Colors.grey,
                    ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class Troisiemeinterface extends StatefulWidget {
  @override
  _Troisiemeinterface createState() => _Troisiemeinterface();
}

class _Troisiemeinterface extends State<Troisiemeinterface> {
  int currentPage = 2; // Page actuelle (commence à 0 pour la première page)

  void goToNextPage() {
    setState(() {
      currentPage++; // Augmente la page actuelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action pour le bouton "Sauter"
                      Navigator.pushNamed(context, 'deuxiemeinterface');
                    },
                    child: Text('Retour'),
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color.fromARGB(255, 247, 234, 215),
                      backgroundColor: Color(0xFFB0E0E6),
                    ),
                  ),
                  SizedBox(width: 80),
                  ElevatedButton(
                    onPressed: () {
                      // Action pour le bouton "Suivant"
                      goToNextPage();
                      Navigator.pushNamed(context, 'quatriemeinterface');

                    },
                    child: Text('Suivant'),
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color.fromARGB(255, 247, 234, 215),
                      backgroundColor: Color(0xFFB0E0E6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Image.asset('./image/priere1.jpg'),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage(
                  placeholder: AssetImage('./image/loading.gif'),
                  image: Image.asset('./image/priere1.jpg').image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Trouvez la Force dans La prière.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 20,
                ),
              ),
              Text(
                'Commencez votre journneé en renforçant votre foi et en trouvant la paix interieur dans la prière',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Icon(
                      Icons.circle,
                      color: currentPage == i ? Color (0xFF98FB98) : Colors.grey,
                      // .fromARGB(255, 241, 162, 43) : Colors.grey,
                    ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class Quatriemeinterface extends StatefulWidget {
  @override
  _Quatriemeinterface createState() => _Quatriemeinterface();
}

class _Quatriemeinterface extends State<Quatriemeinterface> {
  int currentPage = 3;

  void goToNextPage(){
    setState(() {
      currentPage++; //augmente la page actuelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
  
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action pour le bouton "Sauter"
                        Navigator.pushNamed(context, 'troisiemeinterface');
                    },
                    child: Text('Retour'),
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color.fromARGB(255, 247, 234, 215),
                      backgroundColor: Color(0xFFB0E0E6),
                    ),
                  ),
                  SizedBox(width: 80),
                  ElevatedButton(
                    onPressed: () {
                      goToNextPage();
                      Navigator.pushNamed(context, 'HomeScreen');
                      // Action pour le bouton "Suivant"
                    },
                    child: Text('Suivant'),
                    style: ElevatedButton.styleFrom(
                                            // backgroundColor: Color.fromARGB(255, 247, 234, 215),
                                            backgroundColor: Color(0xFFB0E0E6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage(
                  placeholder: AssetImage('./image/loading.gif'),
                  image: Image.asset('./image/img21.jpg').image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Renforcez votre communauté chrétiene.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 20,
                ),
              ),
              Text(
                'Connectez-vous avec d\'autres croyants pour partager votre foi et grandir ensemble spirituellement.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Icon(
                      Icons.circle,
                      // color: currentPage == i ? Color.fromARGB(255, 241, 162, 43) : Colors.grey,
                      color: currentPage == i ? Color (0xFF98FB98) : Colors.grey,
                    ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}