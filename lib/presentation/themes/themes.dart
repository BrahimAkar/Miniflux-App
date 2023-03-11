import 'package:flutter/material.dart';
import 'package:miniflux_app/utils/constants/colors.dart';

abstract class AppThemes {
  // static ThemeData get lightTheme => ThemeData(
  //       primarySwatch: Colors.blue,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     );
  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        primaryColor: ConstsColors.kPrimaryColor,
        tabBarTheme: TabBarTheme(
          labelColor: ConstsColors.tabColorIndicator,
          indicatorColor: ConstsColors.tabColorIndicator,
          unselectedLabelColor:
              ConstsColors.kContentColorDarkTheme.withOpacity(0.32),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ConstsColors.tabColorIndicator,
        ),

        scaffoldBackgroundColor: ConstsColors.scaffoldBackgroundColorDark,
        appBarTheme: AppBarTheme(
          centerTitle: false,
          elevation: 0,
          backgroundColor: ConstsColors.kContentColorDarkTheme,
        ),
        iconTheme: IconThemeData(
          color: Colors.grey[500],
        ),
        textTheme: TextTheme(
          labelLarge: TextStyle(
            color: Colors.grey[500],
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          labelSmall: TextStyle(
            color: Colors.grey[600],
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),

        // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: kContentColorDarkTheme),
        colorScheme: const ColorScheme.dark().copyWith(
          primary: ConstsColors.kPrimaryColor,
          secondary: ConstsColors.kSecondaryColor,
          error: ConstsColors.kErrorColor,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ConstsColors.kContentColorLightTheme,
          selectedItemColor: Colors.white70,
          unselectedItemColor:
              ConstsColors.kContentColorDarkTheme.withOpacity(0.32),
          selectedIconTheme: IconThemeData(color: ConstsColors.kPrimaryColor),
          showUnselectedLabels: true,
        ),
      );
}

// AppBarTheme appBarTheme = 
