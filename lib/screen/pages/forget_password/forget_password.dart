import 'package:flutter/material.dart';
import 'package:trumio/size_config.dart';

import '../../../../constants.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 241, 250, 255),
          body: SizedBox(
            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

                Container(
                  child: Image(image: AssetImage("assets/trumioLogo.png")),
                ),

                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Forget Password",style: TextStyle(color: Colors.black,fontSize: 30),),
                      Text("Reset password in two quick steps",style: TextStyle(color: Colors.black,fontSize: 16),),

                      SizedBox(height: 50,),

                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Email or phone",
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(10.0)
                            )

                        ),
                      ),

                      SizedBox(height: 30,),



                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(55),
                        child: ElevatedButton(

                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: kPrimaryColor)
                                  )
                              )
                          ),
                          onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          backgroundColor: Colors.transparent,
                                          behavior: SnackBarBehavior.floating,
                                          elevation: 0,
                                          content: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            height: 75,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0,
                                                          right: 10),
                                                  child: Container(
                                                    child: Icon(Icons.check_circle_outline_rounded, size: 40)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 5.0,
                                                      vertical: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Verification code sent!!",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        SizedBox(height: 7),
                                                        Text(
                                                            "Check E-mail or SMS")
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )));
                                },
                          child: Text(
                            "Reset password",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: Colors.white,
                            ),
                          ),
                        ),
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
