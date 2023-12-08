import 'package:flutter/material.dart';
import 'package:trumio_v1/constants.dart';
import 'package:trumio_v1/screen/pages/home.dart';

class SignUp7 extends StatefulWidget {
  const SignUp7({super.key, required this.clientside});
  final bool clientside;
  @override
  State<SignUp7> createState() => _SignUp7State();
}

class _SignUp7State extends State<SignUp7> {
  final linkedInLink = TextEditingController();
  final twitterLink = TextEditingController();
  final githubLink = TextEditingController();

  Future<void> _showCustomDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData.light().copyWith(
            dialogBackgroundColor: Color.fromARGB(255, 241, 250, 255),
          ),
          child: AlertDialog(
            // title: Text('Welcome to Trumio!', style: TextStyle(fontSize: 25),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Welcome to Trumio!', textAlign: TextAlign.center ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  SizedBox(height: 25),
                  Text('Your Account has been set Successfully.', style: TextStyle(fontSize: 17),),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => MobileScreen()));
                    },
                    child: Text('Get Started', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Social Links 🔗",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 7),
                        child: Text(
                          "LinkedIn",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: TextField(
                            controller: linkedInLink,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              hintText: "Enter LinkedIn URL",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            enableSuggestions: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 7),
                        child: Text(
                          "Twitter",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: TextField(
                            controller: twitterLink,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              hintText: "Enter Twitter URL",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            enableSuggestions: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 7),
                        child: Text(
                          "GitHub",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: TextField(
                            controller: githubLink,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              hintText: "Enter GitHub URL",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            enableSuggestions: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side:
                                            BorderSide(color: kPrimaryColor)))),
                            onPressed: () =>
                                Navigator.of(context).pop(MaterialPageRoute(
                              builder: (BuildContext context) => SignUp7(clientside: widget.clientside),
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
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side:
                                            BorderSide(color: kPrimaryColor)))),
                            onPressed: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MobileScreen(),
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
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side:
                                            BorderSide(color: kPrimaryColor)))),
                            // onPressed: () =>
                            //     Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (BuildContext context) => MobileScreen(),
                            // )),
                            onPressed: () {
                              _showCustomDialog(context);
                            },
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
                )
              ],
            ),
          )),
    );
  }
}
