import 'package:flutter/cupertino.dart';
import '../../../../core/theme/typography.dart';
import '../widgets/cupertino_dock_button.dart';

class LockscreenFrame extends StatelessWidget {
  const LockscreenFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Stack(
        children: [
          // Layer 1: The Lockscreen Mockup Image anchored to the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/lockscreen_mockup.png',
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),

          // Layer 2: The Gradient Fade
          // This smoothly blends the bottom of your image into the pure black background
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // The stops control exactly where the fade starts and ends
                  stops: const [0.4, 0.65, 0.9], 
                  colors: [
                    CupertinoColors.black.withOpacity(0.0), // Transparent at the top
                    CupertinoColors.black.withOpacity(0.8), // Fading to black
                    CupertinoColors.black,                  // Solid black at the bottom
                  ],
                ),
              ),
            ),
          ),

          // Layer 3: Bottom Text and Action Button
          Positioned(
            bottom: 50.0, // Distance from the bottom of the phone screen
            left: 24.0,   // Side padding
            right: 24.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Build a life you remember',
                  style: AppTypography.mainHeading,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32.0),
                CupertinoDockButton(
                  text: 'Get Started',
                  onPressed: () {
                    // We will add navigation to the next screen here later
                    debugPrint('Get Started tapped'); 
                  },
                ),
                // Extra padding for devices with a bottom home indicator bar (SafeArea)
                const SizedBox(height: 20.0), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}
