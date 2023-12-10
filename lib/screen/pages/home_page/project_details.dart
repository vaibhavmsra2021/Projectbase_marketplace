import 'package:flutter/material.dart';

import 'project_page.dart';

class projectsDeets extends StatefulWidget {
  const projectsDeets({super.key, required this.title});
  final String title;
  @override
  State<projectsDeets> createState() => _projectsDeetsState();
}

class _projectsDeetsState extends State<projectsDeets> {
  bool project1 = true;
  bool project2 = false;
  bool project3 = false;
  bool project4 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Center(child: Text(widget.title)),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return projectDeets();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Stack(
                      children: [
                        const Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Text(
                                "Project1",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              )),
                              SizedBox(height: 15),
                              Center(
                                child: Text(
                                  "Beginner Level",
                                  style: TextStyle(fontSize: 22),
                                ),
                              )
                            ],
                          ),
                        ),
                        StreamBuilder<Object>(
                            stream: null,
                            builder: (context, snapshot) {
                              if (!project1) {
                                return InkWell(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            behavior: SnackBarBehavior.floating,
                                            content: Container(
                                              child: Column(
                                                children: [
                                                  Text("Project Locked!!"),
                                                  Spacer(),
                                                  Text(
                                                      "Complete the previous projects to unlock this.")
                                                ],
                                              ),
                                            )));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.30,
                                    child: Image.asset(
                                      "assets/icons/Lock.png",
                                      color: Colors.black,
                                      scale: 0.75,
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            })
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Stack(
                    children: [
                      const Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              "Project2",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            )),
                            SizedBox(height: 15),
                            Center(
                              child: Text(
                                "Intermediate Level",
                                style: TextStyle(fontSize: 22),
                              ),
                            )
                          ],
                        ),
                      ),
                      StreamBuilder<Object>(
                          stream: null,
                          builder: (context, snapshot) {
                            if (!project2) {
                              return InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          backgroundColor: Colors.transparent,
                                          behavior: SnackBarBehavior.floating,
                                          elevation: 0,
                                          content: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
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
                                                    child: Image.asset(
                                                        "assets/icons/Lock.png",
                                                        color: Colors.black,
                                                        scale: 3),
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
                                                          "Project Locked!!",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        SizedBox(height: 7),
                                                        Text(
                                                            "Complete the previous projects.")
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )));
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
                                  child: Image.asset(
                                    "assets/icons/Lock.png",
                                    color: Colors.black,
                                    scale: 0.75,
                                  ),
                                ),
                              );
                            } else {
                              return SizedBox();
                            }
                          })
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Stack(
                    children: [
                      const Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              "Project3",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            )),
                            SizedBox(height: 15),
                            Center(
                              child: Text(
                                "Advance Level",
                                style: TextStyle(fontSize: 22),
                              ),
                            )
                          ],
                        ),
                      ),
                      StreamBuilder<Object>(
                          stream: null,
                          builder: (context, snapshot) {
                            if (!project3) {
                              return InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          backgroundColor: Colors.transparent,
                                          behavior: SnackBarBehavior.floating,
                                          elevation: 0,
                                          content: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
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
                                                    child: Image.asset(
                                                        "assets/icons/Lock.png",
                                                        color: Colors.black,
                                                        scale: 3),
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
                                                          "Project Locked!!",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        SizedBox(height: 7),
                                                        Text(
                                                            "Complete the previous projects.")
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )));
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
                                  child: Image.asset(
                                    "assets/icons/Lock.png",
                                    color: Colors.black,
                                    scale: 0.75,
                                  ),
                                ),
                              );
                            } else {
                              return SizedBox();
                            }
                          })
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Stack(
                    children: [
                      const Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              "Project4",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            )),
                            SizedBox(height: 15),
                            Center(
                              child: Text(
                                "Professional Level",
                                style: TextStyle(fontSize: 22),
                              ),
                            )
                          ],
                        ),
                      ),
                      StreamBuilder<Object>(
                          stream: null,
                          builder: (context, snapshot) {
                            if (!project4) {
                              return InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          backgroundColor: Colors.transparent,
                                          behavior: SnackBarBehavior.floating,
                                          elevation: 0,
                                          content: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
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
                                                    child: Image.asset(
                                                        "assets/icons/Lock.png",
                                                        color: Colors.black,
                                                        scale: 3),
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
                                                          "Project Locked!!",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        SizedBox(height: 7),
                                                        Text(
                                                            "Complete the previous projects.")
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )));
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
                                  child: Image.asset(
                                    "assets/icons/Lock.png",
                                    color: Colors.black,
                                    scale: 0.75,
                                  ),
                                ),
                              );
                            } else {
                              return SizedBox();
                            }
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
