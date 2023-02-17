import 'package:flutter/material.dart';
import 'package:maps_lesson/controller/app_controller.dart';
import 'package:maps_lesson/view/pages/view_map.dart';
import 'package:maps_lesson/view/pages/yandex_map_page.dart';
import 'package:provider/provider.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: YandexMapPage(),
      ),
    );
  }
}
