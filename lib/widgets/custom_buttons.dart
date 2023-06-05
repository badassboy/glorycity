import 'package:flutter/material.dart';

class DefaultPrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final Widget child;

  const DefaultPrimaryButton({
    super.key,
    this.onPressed,
    required this.child,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
        ),
        onLongPress: onLongPress,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}

class PrimaryOutlinedButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final Color? foregroundColor;

  const PrimaryOutlinedButton(
      {super.key, this.onPressed, required this.child, this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(
              // color: AppColors.colorPrimary,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
            foregroundColor: foregroundColor),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
