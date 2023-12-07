import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:trumio_v1/constants.dart';

import 'sign_up3.dart';
import 'sign_up5.dart';

class SignUp4 extends StatefulWidget {
  const SignUp4({super.key});

  @override
  State<SignUp4> createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  var _value = "-1";
  var resume;
  final professionalIntro = TextEditingController();

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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Continue setting up...",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                                child: Text("Select Role"), value: "-1"),
                            DropdownMenuItem(
                                child: Text("Software Engineer"), value: "1"),
                            DropdownMenuItem(
                                child: Text("Electrical Engineer"), value: "2"),
                            DropdownMenuItem(
                                child: Text("Mechanical Engineer"), value: "3"),
                            DropdownMenuItem(
                                child: Text("Chemical Engineer"), value: "4"),
                          ],
                          onChanged: (v) {},
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Professional Intoduction",
                          style: TextStyle(color: Colors.black, fontSize: 21),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextField(
                          expands: false,
                          maxLines: null,
                          minLines: null,
                          controller: professionalIntro,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Write Here",
                          ),
                          keyboardType: TextInputType.name,
                          enableSuggestions: true,
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        child: Text("Uplaod your Resume"),
                        onPressed: () async {
                          final file = await FilePicker.platform.pickFiles();
                          if (file == null) return;
      
                          resume = file.files.first;
                        },
                      ),
                      SizedBox(height: 15),
                      Row(
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
                              builder: (BuildContext context) => SignUp4(),
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
                              builder: (BuildContext context) => SignUp5(),
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
                              builder: (BuildContext context) => SignUp5(),
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
