import 'package:flutter/cupertino.dart';
import '../../../../core/theme/typography.dart';

class CupertinoDockButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CupertinoDockButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        color: CupertinoColors.white,
        pressedOpacity: 0.7, // Native iOS dimming effect when tapped
        borderRadius: BorderRadius.circular(100.0), // Perfect pill shape
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTypography.buttonText,
        ),
      ),
    );
  }
}
