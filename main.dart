import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF36333E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Clip Rect',
          style: TextStyle(
            color: Colors.blueGrey
          ),
        ),
        centerTitle: true,
      ),
      body: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          color: Color(0xFFFF99D9),
          child: const Center(
            child: Text(
              '👾',
              style: TextStyle(
                fontSize: 72,
              ),
            ),
          ),

        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.lineTo(0,0);
    path0.lineTo(size.width,0);
    path0.lineTo(size.width,size.height);
    path0.lineTo(size.width*0.8346000,size.height);
    path0.quadraticBezierTo(size.width*0.9973000,size.height*0.0046571,size.width*0.4987667,size.height*0.5728571);
    path0.quadraticBezierTo(size.width*0.0060000,size.height*-0.0006571,size.width*0.1654333,size.height);
    path0.quadraticBezierTo(size.width*0.0413583,size.height,0,size.height);
    path0.quadraticBezierTo(size.width*0.1650000,size.height*0.9978571,size.width*0.6600000,size.height*0.9914286);


    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
