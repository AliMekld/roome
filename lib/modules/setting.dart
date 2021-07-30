import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingState();
  }
}

class SettingState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 22.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: ListView(
        primary: false,
        children: [
          //   ExpansionPanel(headerBuilder: (context,true){}, body: null)
          Padding(
            padding: EdgeInsets.all(16.5),
            child: Text(
              "Setting",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 25.6,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Text(
                      "Notification",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.9),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.notifications_active,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Country",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.9),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "Austurlia",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.9),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Currency",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.9),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "\$ AUD",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.9),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          ExpansionTile(
            title: Text(
              "Terms of service",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.9),
            ),
            //subtitle: Text("hii there !"),
            children: [Text("data")],
          ),
          Divider(),
          ExpansionTile(
            title: Text("Privacy Policy "),
            //subtitle: Text("hii there !"),
            children: [Text("data")],
          ),
          Divider(),
          ExpansionTile(
            title: Text(
              "Give Us feedbacks",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.9),
            ),
            //subtitle: Text("hii there !"),
            children: [Text("data")],
          ),
          Divider(),
          ExpansionTile(
            // leading: Text("ddd"),
            initiallyExpanded: false,
            title: Text(
              "Log out",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.9),
            ),
            //subtitle: Text("hii there !"),
            children: [Text("data")],
          ),
        ],
      ),
    );
  }
}
