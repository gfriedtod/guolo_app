import 'package:flutter/material.dart';
import 'package:guolo_app/material/colors.dart';

/// The [ButtonComponentView] is a ButtonComponent.
class ButtonComponentView extends StatelessWidget {
  /// The title of the button.
  final String title;

  /// The callback that is called when the button is pressed.
  final VoidCallback? onPressed;

  /// The primary color of the button.
  bool? primary;

  /// The image of the button.
  Widget? image;
  double? height;
  double? width;
  double? elevation;
  Color? color;
  bool? loading;

  /// Constructs a new [ButtonComponentView].
  ButtonComponentView(
      {super.key,
      required this.title,
      required this.onPressed,
      this.primary,
      this.image,
      this.height,
      this.width,
      this.elevation,
      this.loading,
      this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 2,
          backgroundColor: (primary ?? true)
              ? color ?? GuoloColors.primaryColor
              : color ?? Colors.white,
          foregroundColor: (primary ?? true) ? Colors.white : Colors.black,
        ),
        onPressed: onPressed,
        child: (loading ?? false)
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  color: (primary ?? true)
                      ? Colors.white
                      : GuoloColors.primaryColor,
                ),
              )
            : _TitleView(image: image, title: title, primary: primary),
      ),
    );
  }
}

class _TitleView extends StatelessWidget {
  const _TitleView({
    required this.image,
    required this.title,
    required this.primary,
  });

  final Widget? image;
  final String title;
  final bool? primary;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image ?? const SizedBox.shrink(),
        (image != null) ? const SizedBox(width: 10) : const SizedBox.shrink(),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: (primary ?? true) ? Colors.white : Colors.black),
          ),
        ),
      ],
    );
  }
}
