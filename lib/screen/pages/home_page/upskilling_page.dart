import 'package:flutter/material.dart';

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
          color: Colors.black12,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 0.5, color: Colors.black),
                  bottom: BorderSide(width: 0.5, color: Colors.black)),
              color: Color.fromARGB(255, 241, 250, 255),
            ),
            margin: EdgeInsets.only(top: 8),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Upskilling();
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
                        "Mobile & other Electronics",
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
                      return Upskilling();
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
                      return Upskilling();
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
                      return Upskilling();
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
      ),
    ));
  }
}
