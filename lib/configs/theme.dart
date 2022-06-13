import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mumet/ui/colors/colors.dart';

class MyTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: XColors.PRIMARY,
      primaryColorDark: XColors.PRIMARY_DARK,
      primaryColorLight: XColors.PRIMARY_LIGHT,
      backgroundColor: XColors.WHITE,
      fontFamily: GoogleFonts.manrope().fontFamily,

      scaffoldBackgroundColor: XColors.GREY_LIGHT_1,

      appBarTheme: const AppBarTheme(
        backgroundColor: XColors.WHITE,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 16.0,
          color: XColors.TEXT,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: XColors.TEXT_LIGHT,
        ),
      ),

      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: XColors.PRIMARY,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: XColors.PRIMARY,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.w500,
          color: XColors.TEXT_LIGHT_1
        ),
        labelMedium: TextStyle(
          fontWeight: FontWeight.w500,
          color: XColors.TEXT_LIGHT_1
        ),
        labelSmall: TextStyle(
          color: XColors.TEXT_LIGHT_1
        ),
      ),

      cardTheme: CardTheme(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // if you need this
          side: const BorderSide(
            color: XColors.GREY_LIGHT,
            width: 1,
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: XColors.PRIMARY,
      primaryColorDark: XColors.PRIMARY_DARK,
      primaryColorLight: XColors.PRIMARY_LIGHT,
      backgroundColor: XColors.DARK,
      scaffoldBackgroundColor: XColors.DARK_LIGHT_1,
      fontFamily: GoogleFonts.manrope().fontFamily,

      appBarTheme: const AppBarTheme(
        backgroundColor: XColors.DARK,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),

      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Color(0xFF15141F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: XColors.DARK,
        selectedItemColor: XColors.PRIMARY,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.w500,
          color: XColors.TEXT_LIGHT_1
        ),
        labelMedium: TextStyle(
          fontWeight: FontWeight.w500,
          color: XColors.TEXT_LIGHT_1
        ),
        labelSmall: TextStyle(
          color: XColors.TEXT_LIGHT_1
        ),
      ),

      cardTheme: CardTheme(
        elevation: 0.0,
        color: XColors.DARK,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // if you need this
          side: const BorderSide(
            color: XColors.DARK_LIGHT_1,
            width: 1,
          ),
        ),
      ),
    );
  }
}