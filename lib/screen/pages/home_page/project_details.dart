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
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text(widget.title),
        )),

      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                projectWidget(
                  projectUnlocked: project1,
                  projectNumber: "Project1",
                  projectLevel: "Beginner Level",
                ),
                SizedBox(height: 20),
                projectWidget(
                  projectUnlocked: project2,
                  projectNumber: "Project2",
                  projectLevel: "Intermediate Level",
                ),
                SizedBox(height: 20),
                projectWidget(
                  projectUnlocked: project3,
                  projectNumber: "Project3",
                  projectLevel: "Advance Level",
                ),
                SizedBox(height: 20),
                projectWidget(
                  projectUnlocked: project4,
                  projectNumber: "Project4",
                  projectLevel: "Professional Level",
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class projectWidget extends StatelessWidget {
  projectWidget(
      {super.key,
      required this.projectUnlocked,
      required this.projectNumber,
      required this.projectLevel});
  bool projectUnlocked;
  String projectNumber;
  String projectLevel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.30,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return projectDeets(projectNumber: projectNumber, projectLevel: projectLevel,);
              }));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                        child: Text(
                      projectNumber,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    )),
                  ),
                  Divider(thickness: 4, height: 0),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 101, 164, 190),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          projectLevel,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                if (!projectUnlocked) {
                  return InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.transparent,
                          behavior: SnackBarBehavior.floating,
                          elevation: 0,
                          content: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: 75,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 10),
                                  child: Container(
                                    child: Image.asset("assets/icons/Lock.png",
                                        color: Colors.black, scale: 3),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Project Locked!!",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 7),
                                        Text("Complete the previous projects.")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.25,
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
    );
  }
}
