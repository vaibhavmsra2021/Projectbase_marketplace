import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trumio/constants.dart';
import 'package:trumio/screen/pages/forget_password/forget_password.dart';
import 'package:trumio/screen/pages/home.dart';
import 'package:trumio/screen/pages/sign_up/sign_up1.dart';
import 'package:trumio/size_config.dart';
import 'package:trumio/backend/AuthService.dart'; // Replace with your actual file path
import '../../../../constants.dart';
final AuthService _authService = AuthService();
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool remember = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 250, 255),
      body: SingleChildScrollView(
        // width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image(image: AssetImage("assets/trumioLogo.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back! 👋",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller:emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: remember,
                          activeColor: Colors.green[900],
                          onChanged: (value) {
                            setState(() {
                              remember = value!;
                            });
                          },
                        ),
                        Text(
                          "Remember me.",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[800]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Learn more",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => ForgetPassword(),
                          )),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(55),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kPrimaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: kPrimaryColor)))),
                      // onPressed: () =>
                      //     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                      //   builder: (BuildContext context) => MobileScreen(),
                      // ), (route) => false),
                      onPressed: () async {
                        try {
                          await _authService.signIn(emailController.text, passwordController.text);
                          // Navigate to the next screen or perform any other actions upon successful signup
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => MobileScreen(),
                          ));
                        } catch (error) {
                          // Handle signup error, e.g., display an error message to the user
                          print('Sign IN error: $error');
                        }
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 0.3,
                        width: 100,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      ),
                      Text('OR'),
                      SizedBox(
                        height: 0.3,
                        width: 100,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(55),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: kPrimaryColor)))),
                      onPressed: () {},
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          SvgPicture.asset(
                            "assets/icons-google.svg",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }));
                          },
                          child: Text("New To Trumio? Join Now.")),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
