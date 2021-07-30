import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:retni5/modules/login.dart';
import 'package:retni5/modules/signup.dart';
import 'package:retni5/shaired_component/component/component.dart';

class GetStarted extends StatelessWidget {
  List<String> list = [
    "Book one of your unique hotels to scape the ordinary 1",
    "Book one of your unique hotels to scape the ordinary 2",
    "Book one of your unique hotels to scape the ordinary 3",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blueGrey,
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image slider
            Container(
              width: double.infinity,
              child: CarouselSlider(
                items: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/workerwoman.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  //    SizedBox(width: 10,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/woman.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  //    SizedBox(width: 10,),
                  Container(
                    height: 125,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/growth.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
                options: CarouselOptions(height: 300, autoPlay: true),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Plan Your Trip',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  // fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.blueGrey[700],
                  shadows: [
                    Shadow(
                        offset: Offset.zero,
                        color: Colors.blueGrey.shade200,
                        blurRadius: 1),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),

            Text(
              "Book one of your unique hotels to scape the ordinary ",
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 16.3),
            ),
            SizedBox(
              height: 45,
            ),

            defualtButton(
              text: "Log in",
              buttonPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              shadowColor: Colors.blueGrey.shade200,
            ),
            SizedBox(
              height: 20,
            ),

            defualtButton(
                shadowColor: Colors.blueGrey.shade200,
                textSize: 20,
                background: Colors.white,
                textColor: Colors.black,
                text: "Create Account",
                buttonPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                }),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
