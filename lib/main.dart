import 'package:flutter/material.dart';

import 'file.dart';
import 'package:page_transition/page_transition.dart';

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

            Container(
              margin: EdgeInsets.only(top: 100),

              child: ElevatedButton(
                  child: Text(
                    'join',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                onPressed: () => Navigator.of(context).push(PageTransition(
                  type: PageTransitionType.leftToRight,
                  childCurrent: widget,
                  duration: Duration(milliseconds: 600),
                  reverseDuration: Duration(milliseconds: 600),
                  child: File(),

                )),


              ),



      ),







          ],




        ),




      ),



    );
  }
}
