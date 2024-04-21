import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 36, 36, 36),
        dividerColor: Colors.white10,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 36, 36, 36),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700
          )
        ),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      );
