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




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

thirteenBoldSpacedTextStyle({required color}) {
  return TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    letterSpacing: 2.5,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
    ).fontFamily,
  );
}

eleven400SpacedTextStyle({required color}) {
  return TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    letterSpacing: 2.5,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
    ).fontFamily,
  );
}

eleven400TextStyle({required color}) {
  return TextStyle(
    fontSize: 11,
    color: color,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
    ).fontFamily,
  );
}

sixteen600TextStyle({required color}) {
  return TextStyle(
    fontSize: 16,
    color: color,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
    ).fontFamily,
  );
}

twenty600TextStyle({required color}) {
  return TextStyle(
    fontSize: 20,
    color: color,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
    ).fontFamily,
  );
}

twenty500TextStyle({required color}) {
  return TextStyle(
    fontSize: 20,
    color: color,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
    ).fontFamily,
  );
}

eight700TextStyle({required color}) {
  return TextStyle(
    fontSize: 8,
    color: color,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
    ).fontFamily,
  );
}

eight400TextStyle({required color}) {
  return TextStyle(
    fontSize: 8,
    color: color,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
    ).fontFamily,
  );
}

fourteen700TextStyle({required color}) {
  return TextStyle(
    fontSize: 14,
    color: color,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
    ).fontFamily,
  );
}

twelve400TextStyle({required color}) {
  return TextStyle(
    fontSize: 12,
    color: color,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
    ).fontFamily,
  );
}

twelve600TextStyle({required color}) {
  return TextStyle(
    fontSize: 12,
    color: color,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
    ).fontFamily,
  );
}

sixteen500TextStyle({required color}) {
  return TextStyle(
    fontSize: 16,
    color: color,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
    ).fontFamily,
  );
}

eighteenBoldTextStyle({required color}) {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: color,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
    ).fontFamily,
  );
}

fourteen500TextStyle({required color}) {
  return TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: color,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
    ).fontFamily,
  );
}

fourteen400TextStyle({required color}) {
  return TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: color,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
    ).fontFamily,
  );
}

fifteen700TextStyle({required color}) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: color,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
    ).fontFamily,
  );
}

fifteen500TextStyle({required color}) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: color,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
    ).fontFamily,
  );
}

twentyFive600TextStyle({required color}) {
  return TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: color,
    fontFamily: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
    ).fontFamily,
  );
}
