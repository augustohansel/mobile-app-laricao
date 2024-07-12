import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:laricao_app/widgets/auth_check.dart';
import 'package:provider/provider.dart';
import 'package:laricao_app/repositories/restaurantes_repository.dart';
import 'package:laricao_app/services/auth_service.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await FlutterConfig.loadEnvVariables();
await Firebase.initializeApp();

runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthService()),
      ChangeNotifierProvider(create: (_) => RestaurantesRepository()),
    ],
    child: const MyApp(),
  ),
);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AuthCheck(), 
    );
  }
}