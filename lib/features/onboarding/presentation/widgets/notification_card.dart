import 'dart:ui';
import 'package:flutter/cupertino.dart';
import '../../../../core/theme/typography.dart';

class NotificationCard extends StatelessWidget {
  final String message;

  const NotificationCard({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0), 
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: CupertinoColors.white.withOpacity(0.12),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: CupertinoColors.white.withOpacity(0.2),
              width: 0.5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.asset(
                          'assets/images/logo.jpg',
                          height: 20.0,
                          width: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'Soul',
                        style: AppTypography.iosNotificationHeader,
                      ),
                    ],
                  ),
                  Text(
                    'now',
                    style: AppTypography.iosNotificationHeader.copyWith(
                      color: CupertinoColors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                message,
                style: AppTypography.iosNotificationBody,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
