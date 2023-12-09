import 'package:flutter/material.dart';


class project{
  final int number;
  final String name;
  final IconData icon;

  project(this.number, this.name, this.icon);
}
class Projects extends StatefulWidget {
  @override
  ProjectState createState() => ProjectState();
}
class ProjectState extends State<Projects>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects", style:TextStyle(color: Colors.black, fontSize: 18)),

      ),
      body: Column(
        children: [

          Expanded(
            child: ListView(
              children: [
                buildTeamCard(0, 'Ongoing', Icons.stacked_line_chart),
                buildTeamCard(0, 'Upcoming', Icons.calendar_month),
                buildTeamCard(0, 'Completed', Icons.check_box_rounded),
                buildTeamCard(0,'Terminated', Icons.disabled_by_default_outlined),
                buildTeamCard(0,'Disputed',Icons.person_add_disabled_rounded)
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProjectDetailsScreen(number, name),
            ),
          );
        },
      ),
    );
  }
}

class ProjectDetailsScreen extends StatelessWidget {
  final int clubNumber;
  final String clubName;

  ProjectDetailsScreen(this.clubNumber, this.clubName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  hint: Text('Project Type'),
                  items: ['Type 1', 'Type 2', 'Type 3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Handle club type filter change
                  },
                ),
                DropdownButton<String>(
                  hint: Text('Invited By'),
                  items: ['Person 1', 'Person 2', 'Person 3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Handle invited by filter change
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    // Reset filter options
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // List view showing clubs based on searched text and filters
                ListTile(
                  title: Text('$clubNumber - $clubName'),
                  // Add more details as needed
                ),
                // Add more club details based on search and filters
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ProjectDetailsScreen1 extends StatelessWidget {
  final int projectNumber;
  final String projectName;

  ProjectDetailsScreen1(this.projectNumber, this.projectName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  hint: Text('Project Type'),
                  items: ['Type 1', 'Type 2', 'Type 3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Handle club type filter change
                  },
                ),
                DropdownButton<String>(
                  hint: Text('Invited By'),
                  items: ['Person 1', 'Person 2', 'Person 3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Handle invited by filter change
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    // Reset filter options
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // List view showing clubs based on searched text and filters
                ListTile(
                  title: Text('$projectNumber - $projectName'),
                  // Add more details as needed
                ),
                // Add more club details based on search and filters
              ],
            ),
          ),
        ],
      ),
    );
  }
}