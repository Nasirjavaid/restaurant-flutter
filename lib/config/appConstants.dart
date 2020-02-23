import 'package:flutter/material.dart';

/*
Styles for typography
*/

// TO DO : Finalize Font Family for the app
class AppTypographyStyles {
  static TextStyle titleTextStyle =
      TextStyle(color: Colors.black87,fontWeight: FontWeight.bold);

  static TextStyle smallTextStyle = TextStyle(
    color: Colors.black45, fontSize: 9
   
  );

  static TextStyle headingTextStyle =
      TextStyle(color: Colors.black87, fontWeight: FontWeight.bold);
}

enum PostType { VIDEO_POST, BANNER_POST, SECTION_POST }

enum PostStaticTextInformation { PRIVACY_TEXT, TERMS_TEXT, ABOUT_TEXT, ADVERTISMENT_TEXT, PROMOTION_TEXT,CONTATC_TEXT }
