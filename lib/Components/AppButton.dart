import 'package:flutter/material.dart';

import 'AppColors.dart';
import 'AppContainer.dart';
import 'MyAppTextStyle.dart';

class AppButton extends StatelessWidget {
  Function? OnButtonPressFunction;
  double? borderRadius;
  Color? buttonBgColor;
  String? buttonText;
  double? width;
  TextStyle? style;

  AppButton(
      {this.OnButtonPressFunction,
      this.borderRadius,
      this.buttonBgColor,
      required this.buttonText,
      this.width,
      this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        width: width ?? 120,
        decoration: AppContainer().appBoxDecoration(
            boxColor: buttonBgColor ?? AppColors.redish,
            borderRadius: borderRadius),
        child: MaterialButton(
          splashColor: Colors.transparent,
          height: 40,
          onPressed: () {
            OnButtonPressFunction!();
          },
          child: Center(
            child: Text(
              buttonText!,
              style: style,
            ),
          ),
        ));
  }
}
