import 'package:flutter/material.dart';
import 'package:trumio/screen/pages/home_page/project_details.dart';

class Upskilling extends StatefulWidget {
  const Upskilling({super.key});

  @override
  State<Upskilling> createState() => _UpskillingState();
}

class _UpskillingState extends State<Upskilling> {
  var domainNames = [
    "Web3",
    "BlockChain",
    "App Development",
    "Web Development"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 5, bottom: 15),
            child: Text("UpSkilling",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
          ),
          Flexible(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                    child: upskillingCard(
                        title: domainNames[index], thumbnail: "assets/web3.png"),
                  );
                },
                itemCount: domainNames.length),
          ),
        ],
      ),
    ));
  }
}

class upskillingCard extends StatelessWidget {
  const upskillingCard(
      {super.key, required this.title, required this.thumbnail});
  final String title;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return projectsDeets(title: title);
            }));
          },
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                      image: AssetImage(thumbnail),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter)),
              child: Center(
                  child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
              )),
            ),
          ),
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}
