import 'package:flutter/material.dart';
import 'dart:math';
import 'track_page.dart';
import 'sign_in_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF9F9F9), 
        child: Stack(
          children: [
            Positioned(
              top: 50.0, 
              left: 20.0, 
              child: Stack(
                children: [
                  Container(
                    width: 100.0, 
                    height: 100.0, 
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300], 
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/icon_profile.png', 
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      width: 30, 
                      height: 30, 
                      child: FloatingActionButton(
                        onPressed: () {
                        },
                        backgroundColor: const Color(0xFFFF7A55),
                        mini: true,
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 75.0,
              left: 140.0, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Augusto Preuss Hansel',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 0.5),
                  Text(
                    'Santa Maria, RS - Brasil',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 180.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MATE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'SUA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'FOME',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'MATE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'SUA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'FOME',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'MATE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'SUA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              left: 20,
              right: 20,
              top: 220.0,
              bottom: 417.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TrackPage()),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFF7678ED),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset(
                          'assets/images/logo_home_container.png',
                          height: 175,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 6.0,
                      child: Image.asset(
                        'assets/images/raio_home.png',
                        height: 230,
                      ),
                    ),
                    Positioned(
                      right: 20.0,
                      bottom: 20.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), 
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF7A55), 
                          borderRadius: BorderRadius.circular(30.0), 
                        ),
                        child: const Text(
                          'ENCONTRAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
            bottom: 40.0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                );
              },
              child: const Center(
                child: Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 0, 0),
                  ),
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }

  Color _randomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256), 
      random.nextInt(256), 
      random.nextInt(256),
    );
  }
}
