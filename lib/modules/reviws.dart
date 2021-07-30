import 'package:flutter/material.dart';
import 'package:retni5/models/reviewsModel.dart';
import 'package:retni5/shaired_component/component/component.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Reviews extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReviewsState();
  }
}

class ReviewsState extends State {
  List<ReviewModel> models = [
    ReviewModel("amnda jan", "17 jan /2018", "images/hotel1.jpg",
        " 1 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("jon watson", "12 may /2018", "images/hotel2.jpg",
        " 2 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("jeery vandet", "15 juli /2018", "images/hotel3.jpg",
        " 3 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("jinfer mandson", "27 april /2019", "images/hotel4.jpg",
        " 4 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("make vandita", "18 jan /2014", "images/hotel5.jpg",
        "5 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("sara daly", "9 april /2015", "images/hotel6.jpg",
        " 6 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("ben ten", "11 agoust /2014", "images/1.jpg",
        " 7 very good and the rooms are very cpmportable and ite amazing "),
    ReviewModel("saski utshiha", "9 jan /2021", "images/hotel8.jpg",
        " 8 very good and the rooms are very cpmportable and ite amazing ")
  ];
  var scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey.shade900,
                      size: 22.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        "Reviews(${models.length})",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "write a review",
                          style: TextStyle(
                              color: Colors.teal.shade500,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                // divider//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(
                    height: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                Container(
                    height: 1600,
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        // controller: scrollController,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) =>
                            defultreviewItem(models[index]),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 0,
                            ),
                        itemCount: models.length)),
                SizedBox(
                  height: 20,
                ),
                Container(
                    color: Colors.teal,
                    padding: EdgeInsets.only(right: 40, left: 20),
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write a Review",
                      ),
                    )),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget reviewItem(ReviewModel model) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 180,
          width: 400,
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
                child: Text(
                  "${model.revComment}",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                  padding: EdgeInsets.only(right: 40, left: 20),
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Reply",
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
}
