import 'package:flutter/material.dart';


class File extends StatefulWidget {


  @override
  _FileState createState() => _FileState();
}

class _FileState extends State<File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Stack(

          children: [

            Container(
              margin: EdgeInsets.only(top: 100),

              child: ElevatedButton(
                onPressed: ()
                {

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => File(),
                  //     )
                  // );


                },
                child: Text(
                  '2nd page',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),



            ),







          ],




        ),




      ),



    );
  }
}
