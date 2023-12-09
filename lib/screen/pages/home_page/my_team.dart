import 'package:flutter/material.dart';


class team {
  final int number;
  final String name;
  final IconData icon;

  team(this.number, this.name, this.icon);
}
class MyTeam extends StatefulWidget {
  @override
  MyTeamState createState() => MyTeamState();
}
class MyTeamState extends State<MyTeam>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Teams", style:TextStyle(color: Colors.black, fontSize: 18)),

      ),
      body: Column(
        children: [

          Expanded(
            child: ListView(
              children: [
                buildTeamCard(0, 'Teams', Icons.people),
                buildTeamCard(0, 'Clients', Icons.people_outline),
                buildTeamCard(0, 'Recommended', Icons.thumb_up_off_alt_sharp),
                buildTeamCard(0,'Join Requests', Icons.check_box_rounded),
                buildTeamCard(0,'Favourites',Icons.favorite)
                // Add more club cards as needed
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTeamCard(int number, String name, IconData icon) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          '$number',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(name),
        trailing: Icon(icon),
      ),
    );
  }
}