import 'package:flutter/material.dart';
import 'package:retni5/shaired_component/component/component.dart';

class Pofile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PofileState();
  }
}

class PofileState extends State {
  bool _enableTextField = false;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var bofdController = TextEditingController();
  var adrsController = TextEditingController();
  String nametext = "amanda yong";
  String emailtext = "amandayong@gmail.com";
  String phonetext = "+98524545";
  String brdtext = "16/4/1997";
  String addresstext = "17 zaki hawas/newyourk";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.blueGrey.shade500,
                      ),
                      onPressed: () {
                        setState(() {
                          _enableTextField = !_enableTextField;
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              defultHeaderTextOne(
                  text: "Edit Profile",
                  textColor: Colors.black45,
                  textSize: 26,
                  marginLeft: 20),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //   border: Border.all(color: Colors.grey.shade400, width: 2),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 7,
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          "images/profilewoman.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 30,
                      ),
                      margin: EdgeInsets.all(5),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 4)
                      ], shape: BoxShape.circle, color: Colors.teal.shade400),
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              //name
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: nameController,
                      enabled: _enableTextField,
                      decoration: InputDecoration(
                        // suffix: new Text("amanda gen"),

                        // suffixText: _enableTextField == true ? "" : "amanada jan",
                        labelText: "name",
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Text(
                      _enableTextField == false
                          ? "$nametext".toUpperCase()
                          : "",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 2,
                ),
              ),
              //email
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      enabled: _enableTextField,
                      decoration: InputDecoration(
                        // suffix: new Text("amanda gen"),

                        // suffixText: _enableTextField == true ? "" : "amanada jan",
                        labelText: "Email",
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Text(
                      _enableTextField == false ? "$emailtext" : "",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 2,
                ),
              ),
              //phone
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      enabled: _enableTextField,
                      decoration: InputDecoration(
                        // suffix: new Text("amanda gen"),

                        // suffixText: _enableTextField == true ? "" : "amanada jan",
                        labelText: "Phone",
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Text(
                      _enableTextField == false
                          ? "$phonetext".toUpperCase()
                          : "",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 2,
                ),
              ),
              //bith date
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      controller: bofdController,
                      enabled: _enableTextField,
                      decoration: InputDecoration(
                        // suffix: new Text("amanda gen"),

                        // suffixText: _enableTextField == true ? "" : "amanada jan",
                        labelText: "Date of birth",
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Text(
                      _enableTextField == false ? "$brdtext".toUpperCase() : "",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 2,
                ),
              ),
              //address
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      controller: adrsController,
                      enabled: _enableTextField,
                      decoration: InputDecoration(
                        // suffix: new Text("amanda gen"),

                        // suffixText: _enableTextField == true ? "" : "amanada jan",
                        labelText: "Address",
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Text(
                      _enableTextField == false
                          ? "$addresstext".toUpperCase()
                          : "",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 2,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              if (_enableTextField == true)
                defualtButton(
                    text: "save",
                    buttonPressed: () {
                      setState(() {
                        //cant check if the form is emty at one time not for each textform alone !!?
                        nametext = nameController.text;
                        emailtext = emailController.text;
                        phonetext = phoneController.text;
                        brdtext = bofdController.text;
                        addresstext = adrsController.text;

                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("saved"),
                          backgroundColor: Colors.teal,
                        ));
                        _enableTextField = false;
                      });
                    },
                    shadowColor: Colors.grey.shade400),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

//not working !!!!
  changetext(TextEditingController controller, String text) {
    setState(() {
      text = controller.text;
      controller.clear();
    });
  }
}
