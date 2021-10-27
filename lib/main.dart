import 'package:flutter/material.dart';

import 'file.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
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
                onPressed: () async
                  {

                      final url = 'https://twitter.com';
                      if(await canLaunch(url))
                        {
                          await launch(
                          url,
                          forceSafariVC: true,
                          forceWebView: true,
                          enableJavaScript: true,
                          );
                        }
                      else {
                        throw 'Could not launch $url';
                      }


                  }
                ),




      ),







          ],




        ),




      ),



    );
  }
}
