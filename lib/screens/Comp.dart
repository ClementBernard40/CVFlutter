import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompScreen extends StatelessWidget {
  const CompScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Développement Web',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 200,
            child: GridView.count(
              crossAxisCount: 6,
              children: [
                ListImage("html.png"),
                ListImage("css.png"),
                ListImage("js.png"),
                ListImage("nodeJs.png"),
                ListImage("react.png"),
                ListImage("github-noir.png"),
                ListImage("mongo.png"),
                ListImage("sql.png"),
                ListImage("new-php-logo.png"),
                ListImage("docker.png"),
                ListImage("tailwind.png"),
                ListImage("bootstrap.png"),
              ],
            ),
          ),
          const SizedBox(height: 20), // Ajout d'un espace entre les sections
          const Text(
            'Développement Mobile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 200,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                ListImage("reactnative.png"),
                ListImage("flutter.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container ListImage(String imageName) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imageName,
          fit: BoxFit.contain,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
