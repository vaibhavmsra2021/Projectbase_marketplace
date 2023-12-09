import 'package:flutter/material.dart';
import 'package:trumio_v1/screen/pages/home_page/project_details.dart';

class Upskilling extends StatefulWidget {
  const Upskilling({super.key});

  @override
  State<Upskilling> createState() => _UpskillingState();
}

class _UpskillingState extends State<Upskilling> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //   border: Border(
          //       top: BorderSide(width: 0.5, color: Colors.black),
          //       bottom: BorderSide(width: 0.5, color: Colors.black)),
          //   color: Color.fromARGB(255, 241, 250, 255),
          // ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: EdgeInsets.only(left: 8, top: 5, bottom: 15),
                child: Text("UpSkilling",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600)),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return projectsDeets(title: "Web3");
                  }));
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        image: const DecorationImage(
                            image: AssetImage("assets/web3.png"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter)),
                    child: const Center(
                        child: Text(
                      "Web3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return projectsDeets(title: "BlockChain");
                  }));
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        image: const DecorationImage(
                            image: AssetImage("assets/blockchain.png"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter)),
                    child: const Center(
                        child: Text(
                      "BlockChain",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return projectsDeets(
                      title: "App Development",
                    );
                  }));
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        image: const DecorationImage(
                            image: AssetImage("assets/blockchain.png"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter)),
                    child: const Center(
                        child: Text(
                      "App Development",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return projectsDeets(
                      title: "Web Development",
                    );
                  }));
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        image: const DecorationImage(
                            image: AssetImage("assets/blockchain.png"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter)),
                    child: const Center(
                        child: Text(
                      "Web Development",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    ));
  }
}
