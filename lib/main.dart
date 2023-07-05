import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_app/desktop.dart';
import 'package:responsive_app/mobil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //hello
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints boxConstraints) {
      //     if (boxConstraints.minWidth.toInt() <= 560) {
      //       return MobilScreen();
      //     }
      //     return DeskTopScreen();
      //   },
      // ),
      home: Builder(builder: (context) {
        print(Platform.operatingSystem);
        if (MediaQuery.of(context).size.width >= 570) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.5,
              ),
              child: const DeskTopScreen());
        }
        return const MobilScreen();
      }),
    );
  }
}
