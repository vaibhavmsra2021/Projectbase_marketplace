import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trumio_v1/constants.dart';
import 'package:trumio_v1/screen/pages/sign_up/sign_up7.dart';

class SignUp6 extends StatefulWidget {
  const SignUp6({super.key});

  @override
  State<SignUp6> createState() => _SignUp6State();
}

class _SignUp6State extends State<SignUp6> {
  final collegeName = TextEditingController();
  final skill1 = TextEditingController();
  final skill2 = TextEditingController();
  final skill3 = TextEditingController();
  final skill4 = TextEditingController();
  final skill5 = TextEditingController();
  var degreeIndex = "-1";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 250, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 20,
                ),
              Container(
                  child: Image(image: AssetImage("assets/trumioLogo.png")),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Education 🧑‍🎓",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(height: 15),
                      Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: TextField(
                          controller: collegeName,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter University Name",
                          ),
                          keyboardType: TextInputType.name,
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          value: degreeIndex,
                          items: [
                            DropdownMenuItem(
                                child: Text("Select Degree"), value: "-1"),
                            DropdownMenuItem(
                                child: Text("Btech"), value: "1"),
                            DropdownMenuItem(
                                child: Text("Mtech"), value: "2"),
                            DropdownMenuItem(
                                child: Text("BSC"), value: "3"),
                            DropdownMenuItem(
                                child: Text("BA"), value: "4"),
                          ],
                          onChanged: (v) {},
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Skills 🎖️",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(height: 15),
                      Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: TextField(
                          controller: skill1,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter 1st Skill",
                          ),
                          keyboardType: TextInputType.name,
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: TextField(
                          controller: skill2,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter 2nd Skill",
                          ),
                          keyboardType: TextInputType.name,
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: TextField(
                          controller: skill3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter 3rd Skill",
                          ),
                          keyboardType: TextInputType.name,
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: TextField(
                          controller: skill4,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter 4th Skill",
                          ),
                          keyboardType: TextInputType.name,
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: TextField(
                          controller: skill5,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter 5th Skill",
                          ),
                          keyboardType: TextInputType.name,
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, ),
                      child: Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(kPrimaryColor),
                                  shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(25.0),
                                              side: BorderSide(color: kPrimaryColor)))),
                              onPressed: () =>
                                  Navigator.of(context).pop(MaterialPageRoute(
                                builder: (BuildContext context) => SignUp6(),
                              )),
                              child: Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(kPrimaryColor),
                                  shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(25.0),
                                              side: BorderSide(color: kPrimaryColor)))),
                              onPressed: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => SignUp7(),
                              )),
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      kPrimaryColor),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.0),
                                          side: BorderSide(color: kPrimaryColor)))),
                              onPressed: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => SignUp7(),
                              )),
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                    )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}