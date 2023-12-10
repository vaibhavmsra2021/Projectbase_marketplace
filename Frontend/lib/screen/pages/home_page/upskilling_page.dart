import 'package:flutter/material.dart';
import 'package:trumio_v1/screen/pages/home_page/project_details.dart';
import 'package:http/http.dart' as http;

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
    "Web Development",
    "Internet of Things"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Practice Latest Skills",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600)),
                    Text("Recommended for you",
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                  ],
                ),
              ), // Add your header content here
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: upskillingCard(
                        title: domainNames[index],
                        thumbnail: "assets/fsd.jpg"),
                  );
                },
                childCount: domainNames.length, // Replace with your actual item count
              ),
            ),
          ],
        ),
      ),
    );
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
            color: Colors.blueAccent[100],
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(thumbnail),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                      child: Text(
                    title + " - 4 Projects",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1.0
                        ..color = Colors.white,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}
