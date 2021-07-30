import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:retni5/modules/getStarted.dart';

import 'login.dart';

class LogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: Stack(
        children: [
          // background image
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/1.jpg"), fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // for the icon
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blueGrey.shade300,
                                spreadRadius: 0.5,
                                blurRadius: 3)
                          ],
                          color: Colors.tealAccent[400],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Roome',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    // fontFamily: "RobotoMono",
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                    color: Colors.blueGrey[700],
                    shadows: [
                      Shadow(
                          offset: Offset.zero,
                          color: Colors.blueGrey.shade200,
                          blurRadius: 4),
                    ]),
              ),
              new Text(
                "Best hotels deals for your holeday",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0),
              ),
              Expanded(child: SizedBox()),
              Container(
                width: 250,
                height: 65,
                clipBehavior: Clip.antiAlias,

                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueGrey.shade300,
                        spreadRadius: 0.5,
                        blurRadius: 3)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.tealAccent[400],
                ),
                // padding: EdgeInsets.all(10)

                // margin: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GetStarted()));
                  },

                  //color: Colors.tealAccent[400],
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account? ",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "log in",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 70,
              ),
            ],
          )
        ],
      ),
    );
  }
}
