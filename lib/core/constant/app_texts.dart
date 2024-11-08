import 'package:flutter/material.dart';

class Font {
  static apply({
    required FontStyle style,
    required double size,
    Color? color,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: color,
      fontWeight: style.value,
      fontSize: size,
      fontFamily: 'Effra',
      decoration: decoration,
    );
  }
}

enum FontStyle { regular, medium, semiBold, bold, extraBold, black }

extension FontStyles on FontStyle {
  FontWeight get value {
    switch (this) {
      case FontStyle.regular:
        return FontWeight.normal;

      case FontStyle.medium:
        return FontWeight.w500;

      case FontStyle.semiBold:
        return FontWeight.w600;

      case FontStyle.bold:
        return FontWeight.bold;

      case FontStyle.extraBold:
        return FontWeight.w800;

      case FontStyle.black:
        return FontWeight.w900;
    }
  }
}

class AppTextStyles {
  static medium16({Color? color}) {
    return Font.apply(style: FontStyle.medium, size: 16, color: color);
  }

  static medium18({Color? color}) {
    return Font.apply(style: FontStyle.medium, size: 18, color: color);
  }

  static semiBold24({Color? color}) {
    return Font.apply(style: FontStyle.semiBold, size: 24, color: color);
  }

  static semiBold22({Color? color}) {
    return Font.apply(style: FontStyle.semiBold, size: 22, color: color);
  }

  static semiBold18({Color? color}) {
    return Font.apply(style: FontStyle.semiBold, size: 18, color: color);
  }

  static semiBold16({Color? color}) {
    return Font.apply(style: FontStyle.semiBold, size: 16, color: color);
  }

  static bold28({Color? color}) {
    return Font.apply(style: FontStyle.bold, size: 28, color: color);
  }

  static bold18({Color? color}) {
    return Font.apply(style: FontStyle.bold, size: 18, color: color);
  }

  static bold16({Color? color}) {
    return Font.apply(style: FontStyle.bold, size: 16, color: color);
  }
}