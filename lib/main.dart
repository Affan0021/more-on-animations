import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main()
{
  runApp(MaterialApp(

    home: Main(),

  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);


  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Stack(

          children: [
            // Load a Lottie file from your assets
           // Load a Lottie file from a remote url
            Lottie.asset(
               'assets/done.json',)
            // Load an animation and its images from a zip file

          ],



        ),




      ),



    );
  }
}
