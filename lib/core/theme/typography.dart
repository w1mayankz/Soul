import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Calculates the -4% tracking natively
  static double _tracking(double fontSize) => fontSize * -0.04;

  static TextStyle base({
    required double fontSize,
    FontWeight weight = FontWeight.normal,
    Color color = CupertinoColors.white,
  }) {
    // Dynamically pulls the Inter font and applies it
    return GoogleFonts.inter(
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
