// ERROR REASON:
// import 'package:flutter/material.dart';
// const K01 = Key('page_module_components_text_field_key');

const K01 = 'page_module_components_text_field_key';
const K02 = 'page_module_components_text_result_key';
const K03 = 'view_raised_button_key';

/*
ERROR SOURCES:
*********************************************
*********************************************
*          POSSIBLE ERROR - 'dart:ui'       *
* *******************************************
*             FLUTTER LIBRARIES             *
*              ARE NOT ALLOWED              *
*       IN ANY FLUTTER-DRIVER-TESTS!!!      *
*         "OR" IN ANY CLASSES THAT          *
* "PROVIDE"(VIA IMPORT) ELEMENTS FOR THESE  *
*          FLUTTER-DRIVER-TESTS             *
* *******************************************
* a) package:flutter/FOUNDATION - ERRO:     *
* void addListener(VoidCallback listener)   *
*                                           *
* b) package:flutter/CUPPERTINO - ERRO:     *
* import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
*                                           *
* c) package:flutter/MATERIAL - ERRO:       *
* import 'dart:ui' show lerpDouble;         *
*                                           *
* d) package:flutter/WIDGETS - ERRO:        *
* export 'dart:ui' show hashValues, hashList;
*                                           *
* e) package:flutter/ETC...                 *
* *******************************************
 */