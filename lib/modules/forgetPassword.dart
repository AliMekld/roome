import 'package:flutter/material.dart';
import 'package:retni5/modules/signup.dart';
import 'package:retni5/shaired_component/component/component.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgetPasswordState();
  }
}

class ForgetPasswordState extends State {
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

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
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              defultHeaderTextOne(text: "Forget Password"),
              SizedBox(
                height: 30,
              ),
              //Text("Enter Your Email To Recive An Email To Reset Password",),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text(
                    "Enter Your Email To Recive An Email To Reset Password",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontSize: 14.5,
                        color: Colors.blueGrey[300],
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              defualtTextForm(
                  type: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: "Email Address",
                  validator: (String v) {
                    if (v.isEmpty) {
                      return "Email must be not Empty";
                    }
                    return null;
                  }),
              SizedBox(
                height: 30,
              ),
              defualtButton(
                  text: "Send",
                  buttonPressed: () {
                    if (formKey.currentState.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    }
                  },
                  width: 300,
                  height: 50,
                  shadowColor: Colors.grey.shade400)
            ],
          ),
        ),
      ),
    );
  }
}
