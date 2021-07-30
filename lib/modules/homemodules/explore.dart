import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:retni5/models/circleModel.dart';
import 'package:retni5/models/hotelModel.dart';
import 'package:retni5/modules/homemodules/descripHotel.dart';
import 'package:retni5/shaired_component/component/component.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Explore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExploreState();
  }
}

class ExploreState extends State {
  var searchController = TextEditingController();
  int currentIndex = 0;
  List<String> tttt = [
    "Spain",
    "Paris",
    "Roma",
  ];
  List<String> sentence = [
    "exreoadly  out dour activites 1",
    "exreoadly  out dour activites 2",
    "exreoadly  out dour activites 3"
  ];
  List imageUrl = [
    "images/spain.jpg",
    "images/roma.jpg",
    "images/roma.jpg",
  ];
  List imageUrl2 = [
    "images/spain.jpg",
    "images/roma.jpg",
    "images/roma.jpg",
    "images/spain.jpg",
    "images/roma.jpg",
    "images/roma.jpg",
  ];
  Color color;
  List<HotelModel> hotels = [
    HotelModel(
        "Mandarin Oriantal",
        "390",
        "mary, london",
        "images/hotel1.jpg",
        "2",
        "Some common synonyms of summary are compendious, concise, laconic, pithy, succinct, and terse. While all these words mean  summary suggests the statement of main points with no elaboration or explanation.",
        "9"),
    HotelModel(
        "London KingStone",
        "220",
        "hoston, london",
        "images/hotel2.jpg",
        "2",
        "The words compendious and summary are synonyms, but do differ in nuance. Specifically, compendious applies to what is at once full in scope and brief and concise in treatment.",
        "6"),
    HotelModel(
        "Double Tree Hilton",
        "750",
        "hoston, london",
        "images/hotel3.jpg",
        "2",
        "In some situations, the words concise and summary are roughly equivalent. However, concise suggests the removal of all that is superfluous or elaborative.",
        "5"),
    HotelModel(
        "The Waldarf Hilton",
        "230",
        "hoston, london",
        "images/hotel4.jpg",
        "2",
        "While in some cases nearly identical to summary, laconic implies brevity to the point of seeming rude, indifferent, or mysterious.",
        "7"),
    HotelModel(
        "Leonardo Royal",
        "270",
        "hoston, london",
        "images/hotel5.jpg",
        "2",
        "Pithy adds to succinct or terse the implication of richness of meaning or substancea comedy sharpened by pithy one-liners",
        "10"),
    HotelModel(
        "Park Plaza",
        "850",
        "hoston, london",
        "images/hotel6.jpg",
        "2",
        "The meanings of succinct and summary largely overlap; however, succinct implies the greatest possible compression.a succinct letter of resignation",
        "12"),
    HotelModel(
        "royal hotel",
        "220",
        "hoston, london",
        "images/hotel7.jpg",
        "2",
        "The words terse and summary can be used in similar contexts, but terse implies pointed conciseness.",
        "9"),
    HotelModel(
        "Grand Hotel",
        "220",
        "hoston, london",
        "images/roma.jpg",
        "2",
        "Above are the results of unscrambling summary. Using the word generator and word unscrambler for the letters S U M M A R Y, we unscrambled the letters to create a list of all the words found in Scrabble",
        "11"),
    HotelModel(
        "Royal lancaster",
        "220",
        "hoston, london",
        "images/hotels.jpg",
        "2",
        "Words with Friends, and Text Twist. We found a total of 57 words by unscrambling the letters in summary. Click these words to find out how many points",
        "12"),
    HotelModel(
        "Grand Hotel",
        "220",
        "hoston, london",
        "images/hotel8.jpg",
        "2",
        "they are worth, their definitions, and all the other words that can be made by unscrambling the letters from these words. If one or more words can be unscrambled with all the letters entered plus one,",
        "6"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey.withOpacity(0.2).withAlpha(1),
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.blueGrey.shade600,
      //     ),
      //     onPressed: () {
      //       setState(() {
      //         Navigator.pop(context);
      //       });
      //     },
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              defualtTextForm(
                shadowColor: Colors.grey,
                type: TextInputType.visiblePassword,
                controller: searchController,
                hintText: "Where are you going?",
                validator: null,
                suffix: Icons.search,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      defualtCircle(
                          text: "Hotels", imageUrl: "images/hotels.jpg"),
                      SizedBox(
                        width: 20,
                      ),
                      defualtCircle(
                          text: "Rooms", imageUrl: "images/rooms.jpg"),
                      SizedBox(
                        width: 20,
                      ),
                      defualtCircle(
                          text: "Resort", imageUrl: "images/resort.jpg"),
                      SizedBox(
                        width: 20,
                      ),
                      defualtCircle(
                          text: "Villa", imageUrl: "images/villa.jpg"),
                      SizedBox(
                        width: 20,
                      ),
                      defualtCircle(
                          text: "house", imageUrl: "images/resort.jpg"),
                      SizedBox(
                        width: 20,
                      ),
                      defualtCircle(text: "Boat", imageUrl: "images/boat.jpg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: imageUrl.map((item) {
                  return Builder(builder: (BuildContext context) {
                    return Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    item,
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 80),
                          child: defultHeaderTextOne(
                              text: "${tttt[currentIndex]}",
                              textColor: Colors.white,
                              marginLeft: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: defultHeaderTextOne(
                              textSize: 16,
                              text: "${sentence[currentIndex]}",
                              textColor: Colors.white,
                              marginLeft: 20),
                        ),
                      ],
                    );
                  });
                }).toList(),
                options: CarouselOptions(
                  viewportFraction: 0.8,
                  onPageChanged: (index, s) {
                    setState(() {
                      currentIndex = index;
                      for (int i = 0; i <= imageUrl.length; i++) {
                        if (i == index) {
                          setState(() {
                            color = Colors.teal;
                          });
                        }
                      }
                    });
                  },
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  height: 400,
                  autoPlay: true,
                  initialPage: 0,
                  // onPageChanged: (index, e) {}),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == 0
                          ? Colors.teal
                          : Colors.grey.shade400),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      color: currentIndex == 1
                          ? Colors.teal
                          : Colors.grey.shade400,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      color: currentIndex == 2
                          ? Colors.teal
                          : Colors.grey.shade400,
                      shape: BoxShape.circle),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              //
              //popular destinations
              defultHeaderTextOne(
                  shadowColor: Colors.grey,
                  textColor: Colors.black45,
                  text: "Popular Distinations".toUpperCase(),
                  textSize: 16.0,
                  marginLeft: 25),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: imageUrl2.map((e) {
                    return Builder(builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage(
                                  e,
                                ),
                                fit: BoxFit.fill,
                              )),
                        ),
                      );
                    });
                  }).toList(),
                  options: CarouselOptions(
                    reverse: false,
                    height: 200,
                    autoPlay: false,
                  )),
              SizedBox(
                height: 20,
              ),
              // best Deals
              Row(
                children: [
                  defultHeaderTextOne(
                      shadowColor: Colors.grey,
                      textColor: Colors.black45,
                      text: "Best Deals".toUpperCase(),
                      textSize: 16.0,
                      marginLeft: 25),
                  Expanded(flex: 10, child: SizedBox()),
                  GestureDetector(
                    onTap: () {},
                    child: defultHeaderTextOne(
                        //  shadowColor: null,
                        textColor: Colors.teal,
                        text: "View all".toUpperCase(),
                        textSize: 12.0,
                        marginLeft: 0),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
              Container(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => createitem(hotels[index]),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 0,
                        ),
                    itemCount: hotels.length),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget createitem(HotelModel model) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DescribHotel(
                      model.hotelname,
                      model.hotelprice,
                      model.hotellocation,
                      model.imageurl,
                      model.distance,
                      model.hotelSammary,
                      model.numberOfReviews)));
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 130.0,
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
                        image: AssetImage("${model.imageurl}"),
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
                        "${model.hotelname}",
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
                        "${model.hotellocation}",
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
                          "${model.distance}km",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.5,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          "\$${model.hotelprice}",
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
}

//1-create item
//2- create list
//3- add item to list

//1- create item
