import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job/Screens/LoginScreen/LoginScreen.dart';
import 'package:job/StateManagement/HomePageManagement.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(


  DevicePreview(
    enabled: true,
    builder: (BuildContext context) {
     return MultiProvider(providers: [
       ChangeNotifierProvider(create: (_)=> HomePageManagement())
     ],
     child: MyApp());
    },
   ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.ralewayTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
      home: const LogInScreen(),
    );
  }
}

