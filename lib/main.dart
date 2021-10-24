import 'package:ensiklopedi/home/menu.dart';
import 'package:ensiklopedi/profile/profile.dart';
import 'package:ensiklopedi/setting/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Ensiklopedi",
    initialRoute: '/',
    theme: ThemeData(
      primaryColor: const Color(0xFF6F35A5),
      scaffoldBackgroundColor: Colors.white,
    ),
    routes: {
      '/': (context) => const Menu(),
      '/profile': (context) => const Profile(),
      '/setting': (context) => const Setting(),
    },
  ));
}

