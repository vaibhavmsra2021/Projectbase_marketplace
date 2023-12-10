import 'package:flutter/material.dart';
import 'package:trumio/constants.dart';
import 'package:trumio/screen/pages/sign_up/sign_up6.dart';
import 'package:trumio/backend/AuthService.dart'; // Replace with your actual file path
import '../../../../constants.dart';
final AuthService _authService = AuthService();

class SignUp5 extends StatefulWidget {
  const SignUp5({super.key, required this.clientside});
  final bool clientside;

  @override
  State<SignUp5> createState() => _SignUp5State();
}

class _SignUp5State extends State<SignUp5> {
  final streetAddress = TextEditingController();
  final houseNumber = TextEditingController();
  final ZipCode = TextEditingController();
  
  var cityIndex = -1;
  var stateIndex = -1;
  var countryIndex = -1;
  var cityarray=['Mumbai','Chennai','Delhi','Bengaluru'];
  var statearray=['Maharashtra','Tamil Nadu', 'Uttar Pradesh', 'West Bengal'];
  var countryarray=['India','Egypt','Australia','Argentina'];

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
                      "Current Address 🏠",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: TextField(
                          controller: streetAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter Street Address",
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
                          controller: houseNumber,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Enter House Number",
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
                          controller: ZipCode,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            hintText: "Zip Code",
                          ),
                          keyboardType: TextInputType.phone,
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          value: cityIndex,
                          items: [
                            DropdownMenuItem(
                                child: Text("Select City"), value:-1),
                            DropdownMenuItem(
                                child: Text("Mumbai"), value: 0),
                            DropdownMenuItem(
                                child: Text("Chennai"), value: 1),
                            DropdownMenuItem(
                                child: Text("Delhi"), value: 2),
                            DropdownMenuItem(
                                child: Text("Bangluru"), value: 3),
                          ],
                          onChanged: (v) {},
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          value: stateIndex,
                          items: [
                            DropdownMenuItem(
                                child: Text("Select State"), value: -1),
                            DropdownMenuItem(
                                child: Text("Maharashtra"), value: 0),
                            DropdownMenuItem(
                                child: Text("Tamil Nadu"), value: 1),
                            DropdownMenuItem(
                                child: Text("Uttar Pradesh"), value: 2),
                            DropdownMenuItem(
                                child: Text("West Bengal"), value: 3),
                          ],
                          onChanged: (v) {},
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          value: countryIndex,
                          items: [
                            DropdownMenuItem(
                                child: Text("Select Country"), value: -1),
                            DropdownMenuItem(
                                child: Text("India"), value: 0),
                            DropdownMenuItem(
                                child: Text("Egypt"), value: 1),
                            DropdownMenuItem(
                                child: Text("Argentina"), value: 2),
                            DropdownMenuItem(
                                child: Text("Australia"), value: 3),
                          ],
                          onChanged: (v) {},
                        ),
                      ),
                      SizedBox(height: 20),
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
                              builder: (BuildContext context) => SignUp5(clientside: widget.clientside,),
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
                              builder: (BuildContext context) => SignUp6(clientside: widget.clientside),
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
                            // onPressed: () =>
                            //     Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (BuildContext context) => SignUp6(clientside: widget.clientside),
                            // )),
                            onPressed: () async {
                              try {
                                // enter your method here
                                await _authService.getUserInfo2(streetAddress.text, houseNumber.text, ZipCode.text,cityarray[cityIndex],statearray[stateIndex],countryarray[countryIndex]) ;
                                // Navigate to the next screen or perform any other actions upon successful signup
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => SignUp6(clientside: widget.clientside),
                                ));
                              } catch (error) {
                                // Handle signup error, e.g., display an error message to the user
                                print('Signup error: $error');
                              }
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
