import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:retni5/shaired_component/component/component.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TripsState();
  }
}

class TripsState extends State {
  List<String> titles = [
    "Upcoming",
    "Finished",
    "Favorites",
  ];
  @override
  Widget build(BuildContext context) {
    //var tabController = TabController(length: 3,initialIndex: 0,vsync:AnimatedContainer(duration:Duration(seconds: 5),) );
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 50, left: 0),
                      child: defultHeaderTextOne(
                          text: "My Trips",
                          marginLeft: 10,
                          textSize: 37,
                          shadowColor: Colors.teal)),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: TabBar(
                        indicatorColor: Colors.teal.shade700,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.tealAccent.shade700,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            child: Text("Upcoming"),
                          ),
                          Tab(
                            child: Text("Finished"),
                          ),
                          Tab(
                            child: Text("Favorites"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 600,
                    child: TabBarView(
                      children: [
                        ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => createitem(),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 0,
                                ),
                            itemCount: 15),
                        ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => createitem(),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 0,
                                ),
                            itemCount: 15),
                        ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => createitem(),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 0,
                                ),
                            itemCount: 15),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}

//1- create item
Widget createitem() => GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        child: Container(
          height: 120.0,
          width: 310.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 4,
                )
              ]),
          child: Row(
            children: [
              Container(
                width: 115.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage("images/1.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8.0),
                    child: Text(
                      "Grand Royal Hotel ",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "barcelona , span",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.teal,
                        size: 20,
                      ),
                      Text(
                        "2 Km to City",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.5,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "\$180",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      SmoothStarRating(
                        borderColor: Colors.teal,
                        rating: 4,
                        isReadOnly: false,
                        color: Colors.teal,
                        size: 12,
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "/per night",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
