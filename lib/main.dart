import 'package:flutter/material.dart';

void main() => runApp(const AppBaile());

class AppBaile extends StatelessWidget {
  const AppBaile({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Baile',
      home: Classes(),
    );
  }
} // fin clase AppBaile

class Classes extends StatelessWidget {
  const Classes({super.key});

  @override
  Widget build(BuildContext context) {

    List<Color> misColores = [
      Color(0xFFF8BBD0), // rosa bajito
      Color(0xFFE1BEE7), // lila
      Color(0xFFB2DFDB), // verde agua
      Color(0xFFFFE0B2), // durazno
      Color(0xFFBBDEFB), // azul claro
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "online dance ashley",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFF8BBD0),
        centerTitle: true,
        elevation: 0,
        leading: const Icon(
          Icons.accessibility_new,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.videocam, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 5,
        itemBuilder: (context, index) {

          return Card(
            color: misColores[index],
            elevation: 6,
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              leading: const Icon(
                Icons.star,
                color: Colors.black,
              ),
              title: Text(
                'Clase número ${index + 1}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                'Descripción breve de la clase',
                style: TextStyle(color: Colors.black87),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black54,
                size: 18,
              ),
              onTap: () {
                debugPrint('Tocaste la clase ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}
