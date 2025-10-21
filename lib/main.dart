import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Video Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF0F1720),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0F1720),
        ),
      ),
      home: ImageListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageListView extends StatelessWidget {
  final List<String> localPosters = [
    'assets/images/dinosaurio.jpg',
    'assets/images/inside_out.webp',
    'assets/images/insidious.jpg',
  ];

  final List<String> ListMoviesURL = [
    'https://m.media-amazon.com/images/M/MV5BZTVhMWIxNWQtMDk5Ny00YzNlLTgxMGEtYjQ3MDNhNjg4Y2NmXkEyXkFqcGc@._V1_.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAjHlg3llVdTz1Lef8PEW-w2Kp-8hAQRrhrQ&s',
    'https://m.media-amazon.com/images/M/MV5BMGU2YzAzYzgtZjQ3MS00MTlmLTkwMWQtZGQ5NDdkZThlYTJhXkEyXkFqcGc@._V1_.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Color(0xFF0F1720),
        title: Row(
          children: [
            Text('prime video', style: TextStyle(fontFamily: 'SansBogle', color: const Color.fromARGB(255, 19, 113, 255), fontWeight: FontWeight.w700)),
            SizedBox(width: 20),
            TextButton(
              onPressed: () {},
              child: Text('Inicio', style: TextStyle(fontFamily: 'SansBogle', color: Colors.white)),
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 8)),
            ),
            SizedBox(width: 8),
            TextButton(
              onPressed: () {},
              child: Text('Películas', style: TextStyle(fontFamily: 'SansBogle',color: Colors.white)),
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 8)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Destacados', style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Jacquard')),
          SizedBox(height: 12),
          SizedBox(
            height: 220,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: localPosters.length,
              separatorBuilder: (_, __) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(localPosters[index], fit: BoxFit.cover, width: 140, height: 220),
                );
              },
            ),
          ),
          SizedBox(height: 24),
          Text('Recomendados en la nube', style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'GrundGuides')),
          SizedBox(height: 12),
          SizedBox(
            height: 220,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: ListMoviesURL.length,
              separatorBuilder: (_, __) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(ListMoviesURL[index], fit: BoxFit.cover, width: 140, height: 220),
                );
              },
            ),
          ),
          SizedBox(height: 24),
        ]),
      ),
    );
  }
}
