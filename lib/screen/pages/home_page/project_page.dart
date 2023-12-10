import 'package:flutter/material.dart';

class projectDeets extends StatefulWidget {
  projectDeets({super.key, required this.projectNumber, required this.projectLevel});
  String projectNumber;
  String projectLevel;

  @override
  State<projectDeets> createState() => _projectDeetsState();
}

class _projectDeetsState extends State<projectDeets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.projectNumber,
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                SizedBox(height: 3),
                Text(
                  "Difficulty: " + widget.projectLevel,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 15),
                Text(
                  "Description: ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in lectus placerat, vulputate nibh pretium, hendrerit ligula. Nunc a commodo nisi, ut tristique dui. In vitae aliquam tellus, quis interdum orci. Suspendisse varius lectus a blandit malesuada. Nulla pulvinar orci at felis rutrum, eget gravida lectus fringilla. Sed sollicitudin tristique nulla, quis finibus ligula suscipit ullamcorper. Phasellus commodo dolor eget mi sollicitudin posuere. Nulla risus est, laoreet sed lacus vitae, suscipit pulvinar felis. Vivamus ac erat lacus.",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 15),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    text: 'Skills: ',
                    style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'HTML, CSS, JS',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal
                          // Add other styles as needed
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    text: 'Duration: ',
                    style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1 Month',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal
                          // Add other styles as needed
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
