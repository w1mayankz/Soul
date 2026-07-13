import 'package:flutter/cupertino.dart';
import 'notification_card.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  // These toggles control when each notification appears
  bool _showFirst = false;
  bool _showSecond = false;

  @override
  void initState() {
    super.initState();
    _triggerAnimations();
  }

  // The choreography timing
  Future<void> _triggerAnimations() async {
    // 1. Wait a moment after the lockscreen loads so the user registers the UI
    await Future.delayed(const Duration(milliseconds: 800));
    if (mounted) {
      setState(() => _showFirst = true);
    }

    // 2. Wait exactly 1.2 seconds, then slide in the second notification underneath
    await Future.delayed(const Duration(milliseconds: 1200));
    if (mounted) {
      setState(() => _showSecond = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Standard iOS horizontal padding for notifications
      padding: const EdgeInsets.symmetric(horizontal: 16.0), 
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          // First Notification Animation
          AnimatedOpacity(
            duration: const Duration(milliseconds: 600),
            opacity: _showFirst ? 1.0 : 0.0,
            curve: Curves.easeOut,
            child: AnimatedSlide(
              duration: const Duration(milliseconds: 600),
              // Slides from 20% lower down into its final position
              offset: _showFirst ? Offset.zero : const Offset(0, 0.2), 
              curve: Curves.easeOutQuart, // The specific deceleration curve Apple uses
              child: const NotificationCard(
                message: 'People who "wait for the right moment" die waiting.',
              ),
            ),
          ),
          
          const SizedBox(height: 8.0), // 8px gap between stacked notifications
          
          // Second Notification Animation
          AnimatedOpacity(
            duration: const Duration(milliseconds: 600),
            opacity: _showSecond ? 1.0 : 0.0,
            curve: Curves.easeOut,
            child: AnimatedSlide(
              duration: const Duration(milliseconds: 600),
              offset: _showSecond ? Offset.zero : const Offset(0, 0.2),
              curve: Curves.easeOutQuart,
              child: const NotificationCard(
                message: 'Do these moments bring you closer to the life you want?',
              ),
            ),
          ),

        ],
      ),
    );
  }
}
