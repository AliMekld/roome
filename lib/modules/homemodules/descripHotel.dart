import 'dart:ui';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:retni5/models/reviewsModel.dart';
import 'package:retni5/modules/photos.dart';
import 'package:retni5/modules/reviws.dart';
import 'package:retni5/shaired_component/component/component.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../maps.dart';

class DescribHotel extends StatefulWidget {
  get widget => widget;
  final String hotelname;
  final String hotelprice;
  final String hotellocation;
  final String imageurl;
  final String distance;
  final String summary;
  final String numberOfReviews;
  DescribHotel(this.hotelname, this.hotelprice, this.hotellocation,
      this.imageurl, this.distance, this.summary, this.numberOfReviews);

  @override
  State<StatefulWidget> createState() {
    return DescribHotelState();
  }
}

class DescribHotelState extends State<DescribHotel> {
  bool ispressed = false;
  int roomConter = 1;
  int adultnom = 0;
  int childnom = 0;
  var pageViewController = PageController();

  List imageUrl = [
    "images/spain.jpg",
    "images/roma.jpg",
    "images/roma.jpg",
    "images/spain.jpg",
    "images/roma.jpg",
    "images/roma.jpg",
  ];
  List<ReviewModel> revModel = [
    ReviewModel("amnda jan", "17 jan /2018", "images/hotel1.jpg",
        " 1 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("jon watson", "12 may /2018", "images/hotel2.jpg",
        " 2 very good and the rooms are very cpmportable and ite amazing "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      controller: pageViewController,
      children: [
        // page one
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    widget.imageurl,
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              //for back icon and favorit icon
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.grey.shade800,
                        size: 22.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Expanded(child: SizedBox()),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey, width: 2),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.white54,
                            offset: Offset(
                              -1.2,
                              -1.2,
                            ),
                            spreadRadius: 1),
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.shade500,
                            offset: Offset(0.9, 0.9),
                            spreadRadius: 1)
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.solidHeart,
                            color:
                                ispressed ? Colors.teal : Colors.grey.shade500,
                            size: 25.0,
                          ),
                          onPressed: () {
                            setState(() {
                              ispressed = !ispressed;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 152, 160, 165).withOpacity(0.9),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, top: 3),
                      child: Text(widget.hotelname,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 0),
                          child: Text("Park Hotel",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 15, top: 0),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "\$${widget.hotelprice}",
                                  style: TextStyle(
                                      fontSize: 22.6,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          widget.hotellocation,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.tealAccent.shade400,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "${widget.distance} Km to city",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          "/per night",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        SmoothStarRating(
                          rating: 0.5,
                          allowHalfRating: false,
                          size: 16,
                          color: Colors.tealAccent,
                          borderColor: Colors.teal,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "80 Reviews",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: defualtButton(
                          blure: 0,
                          width: double.infinity,
                          background: Colors.teal,
                          textColor: Colors.white70,
                          text: "Book Now",
                          height: 50,
                          buttonPressed: () {
                            showDialog(
                              barrierColor:
                                  Colors.blueGrey.shade600.withOpacity(0.9),
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  // insetPadding: EdgeInsets.all(50),
                                  actionsPadding: EdgeInsets.all(10),
                                  titlePadding:
                                      EdgeInsets.symmetric(vertical: 10),
                                  contentPadding:
                                      EdgeInsets.only(left: 0, right: 0),
                                  backgroundColor: Colors.grey.shade200,
                                  title: Text(
                                    "Registeration",
                                    style: TextStyle(color: Colors.black54),
                                    textAlign: TextAlign.center,
                                  ),
                                  content: StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "Nomber Of rooms",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: SizedBox(),
                                              ),
                                              IconButton(
                                                  icon: Icon(
                                                    CupertinoIcons.add_circled,
                                                    size: 20,
                                                  ),
                                                  color: Colors.grey.shade400,
                                                  onPressed: () {
                                                    setState(() {
                                                      roomConter++;
                                                    });
                                                  }),
                                              Text(
                                                "$roomConter",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 16),
                                              ),
                                              IconButton(
                                                  icon: Icon(
                                                    CupertinoIcons
                                                        .minus_circled,
                                                    size: 20,
                                                  ),
                                                  color: Colors.grey.shade400,
                                                  onPressed: () {
                                                    setState(() {
                                                      roomConter--;
                                                    });
                                                  }),
                                            ],
                                          ),
                                          Divider(
                                            height: 2,
                                            color: Colors.grey.shade400,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "Nomber Of adult",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "(age +18)",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 10),
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                  width: 15,
                                                ),
                                              ),
                                              IconButton(
                                                  icon: Icon(
                                                    CupertinoIcons.add_circled,
                                                    size: 20,
                                                  ),
                                                  color: Colors.grey.shade400,
                                                  onPressed: () {
                                                    setState(() {
                                                      adultnom++;
                                                    });
                                                  }),
                                              Text(
                                                "$adultnom",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 16),
                                              ),
                                              IconButton(
                                                  icon: Icon(
                                                    CupertinoIcons
                                                        .minus_circled,
                                                    size: 20,
                                                  ),
                                                  color: Colors.grey.shade400,
                                                  onPressed: () {
                                                    setState(() {
                                                      adultnom--;
                                                    });
                                                  }),
                                            ],
                                          ),
                                          Divider(
                                              height: 2,
                                              color: Colors.grey.shade400),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "Nomber Of childs",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "(  0-17)",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 10),
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                  width: 15,
                                                ),
                                              ),
                                              IconButton(
                                                  icon: Icon(
                                                    CupertinoIcons.add_circled,
                                                    size: 20,
                                                  ),
                                                  color: Colors.grey.shade400,
                                                  onPressed: () {
                                                    setState(() {
                                                      childnom++;
                                                    });
                                                  }),
                                              Text(
                                                "$childnom",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 16),
                                              ),
                                              IconButton(
                                                  icon: Icon(
                                                    CupertinoIcons
                                                        .minus_circled,
                                                    size: 20,
                                                  ),
                                                  color: Colors.grey.shade400,
                                                  onPressed: () {
                                                    setState(() {
                                                      childnom--;
                                                    });
                                                  }),
                                            ],
                                          ),
                                          Divider(
                                            height: 2,
                                            color: Colors.grey.shade400,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  actions: [
                                    defualtButton(
                                        blure: 0,
                                        width: 400,
                                        background: Colors.teal,
                                        textColor: Colors.white70,
                                        height: 50,
                                        text: "Apply",
                                        buttonPressed: () {
                                          Navigator.pop(context);
                                          childnom = 0;
                                          roomConter = 0;
                                          adultnom = 0;
                                        })
                                  ],
                                );
                              },
                            );
                          }),
                    )
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "More Details",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white60,
                      fontWeight: FontWeight.normal),
                ),
                IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white60,
                      size: 35,
                    ),
                    onPressed: () {
                      pageViewController.jumpToPage(1);
                    })
              ]),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        // page two
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //   physics: NeverScrollableScrollPhysics(),
          controller: pageViewController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 40),
                child: Text(
                  "${widget.hotelname}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
                child: Row(
                  children: [
                    Text(
                      "Park Hotel",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      "\$${widget.hotelprice}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      "${widget.hotellocation}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.location_on,
                      size: 14,
                      color: Colors.tealAccent,
                    ),
                    Text(
                      "(${widget.distance}Km from city)",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      "/per night",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                child: Divider(
                  height: 1,
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 20.0,
                  bottom: 5,
                ),
                child: Text(
                  "Summary :",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 35.0),
                child: ExpandableText(
                  "${widget.summary}",
                  expandText: "ReadMore",
                  collapseText: "read less",
                  linkColor: Colors.teal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 30, bottom: 16),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset.zero)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                "9.2",
                                style: TextStyle(
                                  color: Colors.tealAccent.shade700,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Overall Rating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  SmoothStarRating(
                                    size: 17,
                                    borderColor: Colors.tealAccent.shade700,
                                    color: Colors.teal,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Room",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "service",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Location",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.tealAccent.shade700,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Container(
                                  width: 100,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.tealAccent.shade700,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Container(
                                  width: 125,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.tealAccent.shade700,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Container(
                                  width: 165,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.tealAccent.shade700,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              // for carousel image slidder //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Text(
                      "Photos",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    // pressing on view All
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Photos()));
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.tealAccent.shade700,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // images
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage("${imageUrl[index]}"),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                      itemCount: imageUrl.length),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Reviews(${widget.numberOfReviews})",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    // pressing on view All
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Reviews()));
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.tealAccent.shade700,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 270,
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        reviewItem(revModel[index]),
                    separatorBuilder: (context, index) => Divider(
                          height: 1,
                        ),
                    itemCount: 2),
              ),
              Divider(
                height: 1,
              ),
              // booking botton
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Maps()));
                },
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    "images/maps.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: defualtButton(
                    blure: 0,
                    width: double.infinity,
                    background: Colors.teal,
                    textColor: Colors.white70,
                    text: "Book Now",
                    height: 55,
                    buttonPressed: () {
                      showDialog(
                        barrierColor: Colors.blueGrey.shade600.withOpacity(0.9),
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            // insetPadding: EdgeInsets.all(50),
                            actionsPadding: EdgeInsets.all(10),
                            titlePadding: EdgeInsets.symmetric(vertical: 10),
                            contentPadding: EdgeInsets.only(left: 0, right: 0),
                            backgroundColor: Colors.grey.shade200,
                            title: Text(
                              "Registeration",
                              style: TextStyle(color: Colors.black54),
                              textAlign: TextAlign.center,
                            ),
                            content: StatefulBuilder(
                              builder: (BuildContext context,
                                  void Function(void Function()) setState) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Nomber Of rooms",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: SizedBox(),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              CupertinoIcons.add_circled,
                                              size: 20,
                                            ),
                                            color: Colors.grey.shade400,
                                            onPressed: () {
                                              setState(() {
                                                roomConter++;
                                              });
                                            }),
                                        Text(
                                          "$roomConter",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              CupertinoIcons.minus_circled,
                                              size: 20,
                                            ),
                                            color: Colors.grey.shade400,
                                            onPressed: () {
                                              setState(() {
                                                roomConter--;
                                              });
                                            }),
                                      ],
                                    ),
                                    Divider(
                                      height: 2,
                                      color: Colors.grey.shade400,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Nomber Of adult",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "(age +18)",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            width: 15,
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              CupertinoIcons.add_circled,
                                              size: 20,
                                            ),
                                            color: Colors.grey.shade400,
                                            onPressed: () {
                                              setState(() {
                                                adultnom++;
                                              });
                                            }),
                                        Text(
                                          "$adultnom",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              CupertinoIcons.minus_circled,
                                              size: 20,
                                            ),
                                            color: Colors.grey.shade400,
                                            onPressed: () {
                                              setState(() {
                                                adultnom--;
                                              });
                                            }),
                                      ],
                                    ),
                                    Divider(
                                        height: 2, color: Colors.grey.shade400),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Nomber Of childs",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          "(  0-17)",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 10),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            width: 15,
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              CupertinoIcons.add_circled,
                                              size: 20,
                                            ),
                                            color: Colors.grey.shade400,
                                            onPressed: () {
                                              setState(() {
                                                childnom++;
                                              });
                                            }),
                                        Text(
                                          "$childnom",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              CupertinoIcons.minus_circled,
                                              size: 20,
                                            ),
                                            color: Colors.grey.shade400,
                                            onPressed: () {
                                              setState(() {
                                                childnom--;
                                              });
                                            }),
                                      ],
                                    ),
                                    Divider(
                                      height: 2,
                                      color: Colors.grey.shade400,
                                    ),
                                  ],
                                );
                              },
                            ),
                            actions: [
                              defualtButton(
                                  blure: 0,
                                  width: 400,
                                  background: Colors.teal,
                                  textColor: Colors.white70,
                                  height: 50,
                                  text: "Apply",
                                  buttonPressed: () {
                                    Navigator.pop(context);
                                    childnom = 0;
                                    roomConter = 0;
                                    adultnom = 0;
                                  })
                            ],
                          );
                        },
                      );
                    }),
              ),
            ],
          ),
        )
      ],
    ));
  }

  Widget reviewItem(ReviewModel model) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          image: DecorationImage(
                              image: AssetImage(
                                "${model.revImgUrl}",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${model.revname}",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          " last update ${model.revDate} ",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Very good",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SmoothStarRating(
                          allowHalfRating: false,
                          rating: 4.0,
                          color: Colors.teal,
                          borderColor: Colors.teal,
                          size: 12.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("${model.revComment}"),
              ),
            ],
          ),
        ),
      );
}
