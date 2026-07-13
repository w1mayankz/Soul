import 'package:flutter/cupertino.dart';
import 'lockscreen_frame.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  Future<void> _startLoading() async {
    await Future.delayed(const Duration(seconds: 2));
    
    if (mounted) {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => const LockscreenFrame()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 16.0, 
        ), 
      ),
    );
  }
}
