import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Méthode pour ouvrir une URL
  void _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Impossible de lancer $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromRGBO(13, 43, 167, 1),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 200,
              child: Center(
                child: Container(
                  color: const Color.fromRGBO(13, 43, 167, 1),
                  width: double.infinity,
                  height: 200,
                  child: Image.asset("avatar.png"),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _launchURL(
                      'https://x.com/clemsdu40700'), // Remplacez par votre URL Twitter
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset("x.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _launchURL(
                      'https://www.facebook.com/clement.bernard.7796/'), // Remplacez par votre URL Facebook
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset("fb.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _launchURL(
                      'https://www.linkedin.com/in/cl%C3%A9ment-bernard-a37827220/'), // Remplacez par votre URL LinkedIn
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset("ink.png"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors
                  .white, // Couleur de fond différente pour les informations de profil
              padding: const EdgeInsets.all(20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text("c.bernard817@laspote.net"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("06 85 33 17 31"),
                  ),
                  ListTile(
                    leading: Icon(Icons.pin),
                    title: Text("Boulogne-Billancourt"),
                  ),
                  ListTile(
                    leading: Icon(Icons.link),
                    title: Text("https://portfolio-virid-ten-42.vercel.app/"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,"),
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
