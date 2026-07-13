import 'package:flutter/cupertino.dart';
import '../../../../core/theme/typography.dart';
import '../widgets/cupertino_dock_button.dart';
import '../widgets/notification_list.dart'; // 👈 We imported your animations here

class LockscreenFrame extends StatelessWidget {
  const LockscreenFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Stack(
        children: [
          // Layer 1: The Lockscreen Mockup Image
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
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.4, 0.65, 0.9], 
                  colors: [
                    CupertinoColors.black.withOpacity(0.0), 
                    CupertinoColors.black.withOpacity(0.8), 
                    CupertinoColors.black,                  
                  ],
                ),
              ),
            ),
          ),

          // Layer 3: The Animated Notifications
          // Placed exactly where they should be on the lockscreen
          const Positioned(
            top: 380.0, // Adjust this number slightly if it doesn't perfectly align with your image
            left: 0,
            right: 0,
            child: NotificationList(),
          ),

          // Layer 4: Bottom Text and Action Button
          Positioned(
            bottom: 50.0, 
            left: 24.0,   
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
                    debugPrint('Get Started tapped'); 
                  },
                ),
                const SizedBox(height: 20.0), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}
