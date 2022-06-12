import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mumet/ui/colors/colors.dart';

class SecondaryButton extends StatefulWidget {
  const SecondaryButton({ 
    Key? key, 
    required this.text, 
    required this.onPressed, 
    this.leadingIcon, 
    this.trailingIcon, 
    this.enabled, 
    this.isLoading,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Icon? leadingIcon;
  final Icon? trailingIcon;
  final bool? enabled;
  final bool? isLoading;

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  VoidCallback? onPressed;
  late bool enabled;
  late bool isLoading;
  late Widget leadingIcon;
  late Widget trailingIcon;

  @override
  void initState() {
    onPressed = widget.onPressed;
    enabled = widget.enabled ?? true;
    isLoading = widget.isLoading ?? false;
    leadingIcon = widget.leadingIcon ?? const SizedBox();
    trailingIcon = widget.trailingIcon ?? const SizedBox();
    super.initState();
  }

  Color backgroundColor(bool isDark) {
    if(isDark) {
      return enabled? XColors.DANGER : XColors.TEXT_LIGHT_1;
    } else {
      return enabled? XColors.DANGER : XColors.TEXT_LIGHT_3;
    }
  }

  Color textColor(bool isDark) {
    if(isDark) {
      return enabled? XColors.WHITE : XColors.TEXT_LIGHT_2;
    } else {
      return enabled? XColors.WHITE : XColors.TEXT_LIGHT_2;
    }
  }

  Color loadingColor() {
    return enabled? XColors.WHITE : XColors.DANGER;
  }

  VoidCallback? onPressedHandler() {
    if(enabled) {
      return isLoading? (){} : onPressed;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 52.0,
      child: ElevatedButton(
        onPressed: onPressedHandler(),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          primary: backgroundColor(theme.brightness == Brightness.dark), // background
          onPrimary: XColors.DANGER_LIGHT_2, // foreground
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: (isLoading)? 
          SpinKitThreeBounce(color: loadingColor(), size: 16) : 
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            leadingIcon,
            const SizedBox(width: 8),
            Text(
              widget.text,
              style: theme.textTheme.button!.copyWith(
                color: textColor(theme.brightness == Brightness.dark),
              ),
            ),
            const SizedBox(width: 8),
            trailingIcon,
          ],
        ),
      ),
    );
  }
}