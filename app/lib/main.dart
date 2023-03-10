import 'package:bloc_clean_arch/di/service_locator.dart';
import 'package:bloc_clean_arch/pokemon/ui/screens/pokemon_sc.dart';
import 'package:flutter/material.dart';

void main() async {
  final serviceLocator = ServiceLocator();
  await serviceLocator.init();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PokemonScreen(),
    );
  }
}
