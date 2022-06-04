import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffbb33),
          title: Text('My QR',style: GoogleFonts.carterOne(fontSize:27.sp,fontWeight: FontWeight.bold,color: Colors.black)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: Container(
              child: Column(
                children: [
                  Lottie.asset('image/scan.json'),
                  SizedBox(height: 40.h,),
                  ElevatedButton(
                      onPressed: () { Navigator.pushNamed(context, "/qr_code" );},
                      child: Text('QR Code'),style:ElevatedButton.styleFrom(primary: Colors.black, // background
                    onPrimary: Colors.lightGreenAccent,)),
                  SizedBox(height: 30.h,),
                  ElevatedButton(
                      onPressed: () { Navigator.pushNamed(context, "/qr_scanner" );},
                      child: Text('QR Scanner'),style:ElevatedButton.styleFrom(primary: Colors.black, // background
                    onPrimary: Colors.lightGreenAccent,)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
