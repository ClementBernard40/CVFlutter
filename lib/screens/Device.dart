import 'package:flutter/material.dart';
import 'Profile.dart';
import 'Exp.dart';
import 'Info.dart';
import 'Form.dart';
import 'Comp.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({Key? key}) : super(key: key);

  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;
  final List<Widget> _screenList = [
    const ProfileScreen(),
    const ExpScreen(),
    const FormScreen(),
    const CompScreen(),
    const InfoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _buildAppBar(), // Utilisation de la méthode _buildAppBar pour afficher l'appbar appropriée
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentScreen,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Expérience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Compétences',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info+',
          ),
        ],
        selectedItemColor:
            Colors.blue, // Couleur des icônes et du texte sélectionné
        unselectedItemColor:
            Colors.grey, // Couleur des icônes et du texte non sélectionné
      ),
    );
  }

  // Méthode pour construire l'appbar en fonction de l'écran sélectionné
  PreferredSizeWidget? _buildAppBar() {
    if (_currentScreen == 0) {
      return AppBar(
        title: const Text('Clement Bernard',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(13, 43, 167, 1),
      );
    } else if (_currentScreen == 1) {
      return AppBar(
        title: const Text(
          'Expérience',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(13, 43, 167, 1),
      );
    } else if (_currentScreen == 2) {
      return AppBar(
        title: const Text('Formation', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(13, 43, 167, 1),
      );
    } else if (_currentScreen == 3) {
      return AppBar(
        title: const Text('Compétence', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(13, 43, 167, 1),
      );
    } else {
      // Si _currentScreen n'est pas 0, 1 ou 2, affiche une appbar vide
      return AppBar(
        title: const Text('Infos +', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(13, 43, 167, 1),
      );
    }
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
