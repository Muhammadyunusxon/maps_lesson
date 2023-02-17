import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

abstract class Style {
  Style._();

  static const shimmerBaseColor = Color(0x80FFFFFF);
  static const shimmerHighlightColor = Color(0x33FFFFFF);
  static const shimmerColor = Color(0x3348319D);

  static textStyleSemiBold(
      {double size = 16, Color textColor = kTextDarkColor}) {
    return GoogleFonts.nunitoSans(
      fontSize: size,
      color: textColor,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none,
    );
  }

  static textStyleNormal({double size = 16, Color textColor = kTextDarkColor}) {
    return GoogleFonts.nunitoSans(
      fontSize: size,
      color: textColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none,
    );
  }

  static myDecoration({
    required String title,
    Color? titleColor,
    Color? fillColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? borderColor,
  }) {
    return InputDecoration(
      contentPadding:
      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      prefixIconConstraints: const BoxConstraints(maxHeight: 18),
      hintText: title,
      prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: prefixIcon),
      suffixIcon: suffixIcon,
      hintStyle: Style.textStyleNormal(
          textColor: titleColor ?? kTextDarkColor.withOpacity(0.6), size: 15),
      filled: true,
      fillColor: fillColor ?? Colors.transparent,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: borderColor ??  Colors.transparent)),
      focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: borderColor ??  Colors.transparent)),
      enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: borderColor ??  Colors.transparent)),

    );
  }
}