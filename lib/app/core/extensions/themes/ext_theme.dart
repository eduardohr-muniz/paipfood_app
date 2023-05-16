import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_color.dart';

extension ExtTheme on BuildContext {
  Color get primaryColor =>
      Theme.of(this).brightness == Brightness.light ? ExtColor.primaryColor : ExtColor.primaryDark;

  Color get secondaryColor =>
      Theme.of(this).brightness == Brightness.light ? ExtColor.secondaryLight : ExtColor.secondaryDark;

  Color get tertiaryColor =>
      Theme.of(this).brightness == Brightness.light ? ExtColor.tertiaryLight : ExtColor.tertiaryDark;

  Color get alternateColor =>
      Theme.of(this).brightness == Brightness.light ? ExtColor.alternateLight : ExtColor.alternateDark;

  Color get primaryBgColor =>
      Theme.of(this).brightness == Brightness.light ? ExtColor.primaryBackgroundLight : ExtColor.primaryBackgroundDark;

  Color get secondaryBgColor => Theme.of(this).brightness == Brightness.light
      ? ExtColor.secondaryBackgroundLight
      : ExtColor.secondaryBackgroundDark;

  Color get primaryTextColor =>
      Theme.of(this).brightness == Brightness.light ? ExtColor.primaryTextLight : ExtColor.primaryTextDark;

  Color get secondaryTextColor =>
      Theme.of(this).brightness == Brightness.light ? ExtColor.secondaryTextLight : ExtColor.secondaryTextDark;

  // Color get focus => Theme.of(this).brightness == Brightness.light ? ExtColor.focusLight : ExtColor.focusDark;

  TextTheme get textTheme => Theme.of(this).textTheme;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
