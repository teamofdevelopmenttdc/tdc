import 'package:flutter/material.dart';
import 'apropos.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Témoins Disciples Christ',
//       home: HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TÉMOINS DISCIPLES CHRIST',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/iconadress.png', // Assurez-vous que le logo est dans le dossier assets
                height: 40,
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Container(
              color: Colors.white,
              child: TabBar(
                labelColor: Color(0xFF242faa),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color(0xFF242faa),
                tabs: [
                  Tab(text: 'actualités'),
                  Tab(text: 'Témoignages'),
                  Tab(text: 'Thème du jour'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Contenu de l'onglet "actualité"
            ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return PostCard(
                  author: post['author']!,
                  title: post['title']!,
                  imageUrl: post['imageUrl']!,
                );
              },
            ),
            // Contenu de l'onglet "Témoignages"
            Center(child: Text('Contenu de l\'onglet Témoignages')),
            // Contenu de l'onglet "Thème du jour"
            Center(child: Text('Contenu de l\'onglet Thème du jour')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Color(0xFF242faa),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.podcasts),
              label: 'Podcast',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Téléchargement',
            ),
          ],
          onTap: (index) {
            // Gérer les changements de page si nécessaire
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Apropos();
                },
              );
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Apropos()),
            // );
          },
          child: Icon(Icons.menu, color: Colors.white),
          backgroundColor: Color(0xFF242faa),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

class PostCard extends StatefulWidget {
  final String author;
  final String title;
  final String imageUrl;

  const PostCard({
    required this.author,
    required this.title,
    required this.imageUrl,
  });

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                'Auteur ${widget.author}',
                style: TextStyle(
                  color: Color(0xFF242faa),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.event, // Utiliser l'icône de calendrier
                  color: Color(0xFF242faa)),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 3,
              child: Image.asset(
                widget.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: IconButton(
                    icon: Icon(
                      _isLiked
                          ? Icons.thumb_up_alt
                          : Icons.thumb_up_alt_outlined,
                      color: _isLiked ? Colors.red : Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                      });
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.comment_outlined),
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    icon: Icon(Icons.share_outlined),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> posts = [
  {
    'author': 'NASA',
    'title': 'Découverte d\'une nouvelle planète',
    'imageUrl': 'assets/im1.jpeg',
  },
  {
    'author': 'FIFA',
    'title': 'Finale de la Coupe du monde',
    'imageUrl': 'assets/im1.jpeg',
  },
];
