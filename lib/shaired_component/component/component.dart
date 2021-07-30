import 'package:flutter/material.dart';
import 'package:retni5/models/reviewsModel.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

Widget defualtButton({
  @required String text,
  double width = 250,
  double height = 65,
  bool radiusStatus = true,
  double radius = 100,
  @required Function buttonPressed,
  Color textColor = Colors.white,
  double textSize = 24.0,
  Color background = Colors.tealAccent,
  Color shadowColor = Colors.blueGrey,
  double blure = 3,

  //Color buttonColor=Colors.tealAccent[]
}) =>
    Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: shadowColor, spreadRadius: 0.5, blurRadius: blure)
        ],
        borderRadius: radiusStatus
            ? BorderRadius.all(Radius.circular(radius))
            : BorderRadius.all(Radius.circular(0)),
        color: background,
      ),
      // padding: EdgeInsets.all(10)
      // margin: EdgeInsets.all(10),
      child: MaterialButton(
        onPressed: () => buttonPressed(),
        //color: Colors.tealAccent[400],
        child: Text(
          "$text",
          style: TextStyle(color: textColor, fontSize: textSize),
        ),
      ),
    );

Widget defualtTextForm({
  @required TextInputType type,
  bool obs = false,
  @required TextEditingController controller,
  @required String hintText,
  @required Function validator,
  double hintSize = 18.0,
  IconData suffix = Icons.visibility,
  Function suffixPressed,
  double raduis = 30.0,
  Color shadowColor = Colors.grey,
  double leftpadding = 30.0,
  double horizmargin = 30.0,
  double verticalpadding = 0,
  double vericalpmargin = 0,
  double height = 55,
}) =>
    Container(
      height: height,
      margin: EdgeInsets.symmetric(
          horizontal: horizmargin, vertical: vericalpmargin),
      padding: EdgeInsets.only(left: leftpadding),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: shadowColor, blurRadius: 3, offset: Offset.zero)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(raduis))),
      child: Center(
        child: TextFormField(
          validator: validator,
          controller: controller,
          obscureText: obs,
          keyboardType: type,
          textDirection: TextDirection.ltr,
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: hintSize),
              border: InputBorder.none,
              hintText: hintText,
              //dddddddddddd
              suffixIcon: type == TextInputType.visiblePassword
                  ? IconButton(
                      icon: Icon(suffix),
                      onPressed: () => suffixPressed(),
                    )
                  : null),
        ),
      ),
    );

//header 1
Widget defultHeaderTextOne({
  double textSize = 40,
  double marginLeft = 30,
  @required String text,
  Color textColor = Colors.blueGrey,
  Color shadowColor = Colors.blueGrey,
}) =>
    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      // margen left
      SizedBox(width: marginLeft),
      Text(
        "$text",
        // textDirection: TextDirection.ltr,
        textAlign: TextAlign.start,
        style: TextStyle(
            //fontFamily: "RobotoMono",
            fontWeight: FontWeight.bold,
            fontSize: textSize,
            color: textColor,
            shadows: [
              Shadow(offset: Offset.zero, color: shadowColor, blurRadius: 1),
            ]),
      ),
    ]);
Widget defualtCircle({
  @required String text,
  @required String imageUrl,
  double height = 60.0,
  double width = 60.0,
  Color textColor = Colors.grey,
  double textSize = 16.7,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      "$imageUrl",
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$text",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: textColor,
                fontSize: textSize,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
Widget defultreviewItem(ReviewModel model) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)],
            borderRadius: BorderRadius.all(Radius.circular(5))),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "${model.revComment}",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey.shade400),
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
