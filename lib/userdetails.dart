import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:termandconditions/productspage.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  TextEditingController cName = TextEditingController();
  TextEditingController cEmail = TextEditingController();
  TextEditingController cMobile = TextEditingController();
  TextEditingController cPassword = TextEditingController();

  Widget userInputField(
      {String labelText = '',
      String hintText = '',
      IconData? icon,
      TextFormField? controllerName}) {
    return SizedBox(
      child: TextFormField(
        controller: controllerName?.controller,
        decoration: InputDecoration(
          icon: Icon(icon),
          hintText: hintText,
          labelText: labelText,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 9, 87, 102),
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    resetControls() {
      print("Name : ${cName.text}");
      print("Email : ${cEmail.text}");
      print("Mobile : ${cMobile.text}");
      print("Password : ${cPassword.text}");
      if (cName.text == '' ||
          cEmail.text == '' ||
          cMobile.text == '' ||
          cPassword.text == '') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.white,
            content: Text('One or More Fields are Empty',
                style: TextStyle(
                  color: Colors.red,
                ))));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.white,
            content: Text('Saved',
                style: TextStyle(
                  color: Color.fromARGB(255, 9, 87, 102),
                ))));
        cName.text = '';
        cEmail.text = '';
        cMobile.text = '';
        cPassword.text = '';
      }
    }

    // ignore: avoid_unnecessary_containers
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(227, 222, 222, 1)),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50, top: 100),
              child: Text("Profile",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 50),
              child: Text("Update Profile",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
            ),
            Form(
              child: Container(
                margin: EdgeInsets.only(left: 50, top: 50, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    userInputField(
                        labelText: "Name",
                        hintText: "What do people call you",
                        icon: Icons.person,
                        controllerName: TextFormField(controller: cName)),
                    SizedBox(
                      height: 20,
                    ),
                    userInputField(
                      labelText: "Email Id",
                      hintText: "sample@gmail.com",
                      icon: Icons.email_outlined,
                      controllerName: TextFormField(controller: cEmail),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    userInputField(
                        labelText: "Mobile Number",
                        hintText: "must be 10 digits",
                        icon: Icons.mobile_friendly_outlined,
                        controllerName: TextFormField(controller: cMobile)),
                    SizedBox(
                      height: 20,
                    ),
                    userInputField(
                        labelText: "Password",
                        hintText: "atleast 8 characters",
                        icon: Icons.vpn_key_outlined,
                        controllerName: TextFormField(controller: cPassword)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: OutlinedButton(
                        onPressed: () {
                          resetControls();
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Color.fromARGB(255, 9, 87, 102),
                                width: 1.0),
                            minimumSize: Size(230, 50)),
                        child: Text(
                          "Save",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 9, 87, 102)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
