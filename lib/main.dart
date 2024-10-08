import 'package:flutter/material.dart';
import 'package:myapp/screen/basic_disign.dart';
import 'package:myapp/screen/scroll_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),debugShowCheckedModeBanner: false,
      initialRoute: 'scroll_screen',
      routes: {

        'basic_design':(context)=>const BasicDisign(),
        'scroll_screen':(context)=>const ScrollScreen()

      },
    
      home: const  BasicDisign()

    );
  }
}


