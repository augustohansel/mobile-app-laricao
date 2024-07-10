import 'package:flutter/material.dart';
import 'home_page.dart';
import 'sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage('assets/images/background_login.png'),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Material(
              elevation: 5.0,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(80.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Entre',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 80.0),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.centerLeft,
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          hintStyle: const TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.centerLeft,
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Senha',
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Material(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      elevation: 3.0,
                      color: const Color(0xFF1E1E1E),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 138.0),
                          child: const Text(
                            'CONECTAR',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo_login.png',
                width: MediaQuery.of(context).size.width * 0.6,
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
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: const Center(
                child: Text(
                  'Não tem uma conta? Crie agora!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF646464),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
