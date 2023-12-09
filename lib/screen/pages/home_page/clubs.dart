import 'package:flutter/material.dart';


class Club {
  final int number;
  final String name;
  final IconData icon;

  Club(this.number, this.name, this.icon);
}
class Clubs extends StatefulWidget {
  @override
  ClubsScreen createState() => ClubsScreen();
}
class ClubsScreen extends State<Clubs>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clubs", style:TextStyle(color: Colors.black, fontSize: 18)),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildClubCard(1, 'My Clubs', Icons.people),
                buildClubCard(2, 'Favourite', Icons.favorite),
                buildClubCard(3, 'All Clubs', Icons.people_outline),
                // Add more club cards as needed
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildClubCard(int number, String name, IconData icon) {
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