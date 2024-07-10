import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'screens/welcome_page.dart';
import 'package:provider/provider.dart';
import 'package:laricao_app/repositories/restaurantes_repository.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await FlutterConfig.loadEnvVariables();

  runApp(
    ChangeNotifierProvider<RestaurantesRepository>(
      create: (_) => RestaurantesRepository(),
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
      home: const WelcomePage(), 
    );
  }
}