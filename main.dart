import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Home.dart';
import 'qr_code.dart';
import 'qr_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'splashscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () {
        return MaterialApp(
          initialRoute: "/",
                    routes: {
                      "/qr_code":(context)=>qr_code(),
                      "/qr_scanner":(context)=>qr_scanner(),
                    },
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(bodyText2: TextStyle(fontSize: 30.sp)),
          ),
          home:splashscreen(),
        );
      },
    );
  }
}


