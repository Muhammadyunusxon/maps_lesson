import 'package:flutter/material.dart';
import 'package:maps_lesson/controller/app_controller.dart';
import 'package:maps_lesson/view_map.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context)=>AppController())
      ],
      child: const MaterialApp(
        home: ViewMap(),
      ),
    );
  }
}
