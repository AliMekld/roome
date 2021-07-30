import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retni5/shaired_component/component/component.dart';

class Maps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapsState();
  }
}

class MapsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "images/maps.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: defualtTextForm(
                  type: TextInputType.name,
                  controller: null,
                  hintText: "Search",
                  validator: null),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent.shade700,
        onPressed: () {},
        child: Center(
          child: Icon(
            Icons.search_outlined,
            size: 30,
          ),
        ),
      ),
    );
  }
}
