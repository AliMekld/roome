import 'package:flutter/material.dart';
import 'package:retni5/modules/login.dart';
import 'package:retni5/shaired_component/component/component.dart';

import 'getStarted.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State {
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var emailController = TextEditingController();
  var passworeController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blueGrey[500],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),

                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(width: 20),
                  Text(
                    'Sign Up ',
                    // textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        //fontFamily: "RobotoMono",
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.blueGrey[500],
                        shadows: [
                          Shadow(
                              offset: Offset.zero,
                              color: Colors.blueGrey.shade200,
                              blurRadius: 0),
                        ]),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      defualtButton(
                        height: 50,
                        text: "Facebook",
                        buttonPressed: () {},
                        background: Colors.blue,
                        width: 150,
                        shadowColor: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      defualtButton(
                        height: 50,
                        text: "Twitter",
                        buttonPressed: () {},
                        background: Colors.cyanAccent.shade400,
                        width: 150,
                        shadowColor: Colors.grey.shade400,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "or Sign Up with email",
                    style: TextStyle(
                        fontSize: 14.5,
                        color: Colors.blueGrey[300],
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // first name textform
                defualtTextForm(
                    type: TextInputType.text,
                    controller: fnameController,
                    hintText: "First Name",
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "First name must be not Empty!";
                      }
                      return null;
                    }),
                SizedBox(
                  height: 15,
                ),
                // first name textform
                defualtTextForm(
                  type: TextInputType.text,
                  controller: lnameController,
                  hintText: "Last Name",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "last name must be not Empty!";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                // first name textform
                defualtTextForm(
                    type: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: "Email Address",
                    // validator:)
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Email Address must be not Empty!";
                      }
                      return null;
                    }),
                SizedBox(
                  height: 15,
                ),
                // first name textform
                defualtTextForm(
                  type: TextInputType.visiblePassword,
                  controller: passworeController,
                  hintText: "Password",
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Password must be not Empty!";
                    }
                    return null;
                  },
                  obs: obsecureText,
                  suffix:
                      obsecureText ? Icons.visibility_off : Icons.visibility,
                  suffixPressed: () {
                    setState(() {
                      obsecureText = !obsecureText;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                defualtButton(
                    text: "sign up",
                    shadowColor: Colors.grey.shade400,
                    buttonPressed: () {
                      setState(() {
                        if (formKey.currentState.validate()) {
                          print("v");
                        }
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "By Signing Up, You Agreed With Our Terms Of Services and Privacy Policy",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.blueGrey[300],
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      "Already Have Account?",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.blueGrey[300],
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.tealAccent[400],
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}
