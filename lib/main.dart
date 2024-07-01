import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/screens/home_screen.dart';
import 'package:secret_story/screens/last_votes.dart';
import 'package:secret_story/screens/registration.dart';
import 'package:secret_story/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const HomeScreen(),
        'registration': (context) => const Registration(),
        'votes': (context) => const LastVote(),
      },
    );
  }
}
