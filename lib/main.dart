import 'package:flutter/material.dart';

import 'app/ui/home_page.dart';

// 
void main() {
  runApp(const AppMaps());
}

class AppMaps extends StatelessWidget {
  const AppMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  HomePage(),
    );
  }
}
