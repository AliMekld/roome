import 'package:flutter/material.dart';
import 'package:retni5/layouts/home.dart';
import 'package:retni5/modules/forgetPassword.dart';
import 'package:retni5/modules/getStarted.dart';
import 'package:retni5/modules/signup.dart';
import 'package:retni5/shaired_component/component/component.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
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
        scrollDirection: Axis.vertical,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.5),
                child: Row(
                    //  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Log in ',
                        textDirection: TextDirection.ltr,
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
              ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Center(
                  child: Text(
                    "or login with email",
                    style: TextStyle(
                        fontSize: 14.5,
                        color: Colors.blueGrey[300],
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              defualtTextForm(
                  // validator: (String s) {
                  //   if (s.isEmpty) {
                  //     return "Password Must Be Not Empty!";
                  //   }
                  //   return null;
                  // },
                  hintText: "Email Address",
                  type: TextInputType.emailAddress,
                  controller: emailController,
                  // obs: obsecureText,
                  //suffix: obsecureText ? Icons.visibility : Icons.visibility_off,
                  validator: (String v) {
                    if (v.isEmpty) {
                      return "Email Must be Not Empty!";
                    }
                    return null;
                  }),
              SizedBox(
                height: 20,
              ),
              defualtTextForm(
                  // validator: (String s) {
                  //   if (s.isEmpty) {
                  //     return "Password Must Be Not Empty!";
                  //   }
                  //   return null;
                  // },
                  hintText: "Passord",
                  type: TextInputType.visiblePassword,
                  controller: passwordController,
                  obs: obsecureText,
                  suffix:
                      obsecureText ? Icons.visibility_off : Icons.visibility,
                  suffixPressed: () {
                    setState(() {
                      obsecureText = !obsecureText;
                    });
                  },
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Password must be not Empty!";
                    }
                    return null;
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                    child: Text(
                      "Forget Your Password?",
                      style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.blueGrey[300],
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              defualtButton(
                  text: "Log in",
                  shadowColor: Colors.grey.shade400,
                  buttonPressed: () {
                    setState(() {
                      if (formKey.currentState.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                    });
                  }),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  Text(
                    "Don't Have Account?",
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
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Signup",
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
            ],
          ),
        ),
      ),
    );
  }
}
