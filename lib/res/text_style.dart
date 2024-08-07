import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// Define a class to hold all the text styles used in the app
class AppTextStyles {
  // Heading Styles
  static TextStyle get headingLarge => GoogleFonts.lato(
        fontSize: 32.sp,
      );

  static TextStyle get headingMedium => GoogleFonts.lato(
        fontSize: 28.sp,
      );

  static TextStyle get headingSmall => GoogleFonts.lato(
        fontSize: 24.sp,
      );

  // Title Styles (Replacing subheading)
  static TextStyle get titleLarge => GoogleFonts.lato(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMedium => GoogleFonts.lato(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmall => GoogleFonts.lato(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );

  // Body Text Styles
  static TextStyle get bodyLarge => GoogleFonts.lato(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get bodyMedium => GoogleFonts.lato(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get bodySmall => GoogleFonts.lato(
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
      );

  // Overline Style
  static TextStyle get small => GoogleFonts.lato(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );
}
