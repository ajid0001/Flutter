import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> remoteImages = [
      'https://images.pexels.com/photos/29136968/pexels-photo-29136968/free-photo-of-halloween-decoration-display-in-england.jpeg',
      'https://images.pexels.com/photos/5759857/pexels-photo-5759857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'https://images.pexels.com/photos/5607359/pexels-photo-5607359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    ];

    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Lato',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Images and Assets'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // First horizontal ListView
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: remoteImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.network(
                        remoteImages[index],
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              Container(
                color: Colors.pink[50],
                child: const ListTile(
                  leading: Icon(Icons.star, color: Colors.pink),
                  title: Text(
                    'ListTile with Regular Font',
                    style: TextStyle(fontFamily: 'Lato'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.blue[50],
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'ListTile with Bold Font',
                    style: TextStyle(
                        fontFamily: 'Lato', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.green[50],
                child: const ListTile(
                  leading: Icon(Icons.settings, color: Colors.green),
                  title: Text(
                    'ListTile with Thin Font',
                    style: TextStyle(
                        fontFamily: 'Lato', fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.yellow[50],
                child: const ListTile(
                  leading: Icon(Icons.edit, color: Colors.yellow),
                  title: Text(
                    'ListTile with Light Italic Font',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.purple[50],
                child: const ListTile(
                  leading: Icon(Icons.lock, color: Colors.purple),
                  title: Text(
                    'ListTile with Black Font',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Second horizontal ListView for local images
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/food2.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/food3.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/food4.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
