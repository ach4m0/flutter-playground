import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:movies_list/src/pages/movie_list_page.dart';
 
class MoviesListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies List',
      theme: ThemeData(
        primaryColor: Color(0xffe50914),
        accentColor: Color(0xffe50914),
        backgroundColor: Colors.black,
        textTheme: TextTheme(
          title: GoogleFonts.montserrat().copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 40.0
          ),
          subtitle: GoogleFonts.montserrat().copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
        ),
      ),
      home: MovieListPage()
    );
  }
}