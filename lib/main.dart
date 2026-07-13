import 'package:flutter/cupertino.dart';
import 'features/onboarding/presentation/screens/splash_screen.dart';

void main() {
  runApp(const SoulApp());
}

class SoulApp extends StatelessWidget {
  const SoulApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.white,
        scaffoldBackgroundColor: CupertinoColors.black,
      ),
      home: SplashScreen(),
    );
  }
}
