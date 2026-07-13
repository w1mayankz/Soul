import 'package:flutter/cupertino.dart';

class AppTypography {
  static const String _fontFamily = 'Inter';

  // Calculates the -4% tracking natively
  static double _tracking(double fontSize) => fontSize * -0.04;

  static TextStyle base({
    required double fontSize,
    FontWeight weight = FontWeight.normal,
    Color color = CupertinoColors.white,
  }) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: fontSize,
      fontWeight: weight,
      color: color,
      letterSpacing: _tracking(fontSize),
    );
  }

  static TextStyle iosNotificationHeader = base(
    fontSize: 13.0,
    weight: FontWeight.w500,
    color: CupertinoColors.secondaryLabel,
  );

  static TextStyle iosNotificationBody = base(
    fontSize: 15.0,
    weight: FontWeight.w400,
    color: CupertinoColors.label,
  );

  static TextStyle mainHeading = base(
    fontSize: 28.0,
    weight: FontWeight.w600,
    color: CupertinoColors.white,
  );

  static TextStyle buttonText = base(
    fontSize: 17.0,
    weight: FontWeight.w600,
    color: CupertinoColors.black,
  );
}
