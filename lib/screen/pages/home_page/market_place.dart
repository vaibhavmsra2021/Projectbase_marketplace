import 'package:flutter/material.dart';

class project {
  final int number;
  final String name;
  final IconData icon;

  project(this.number, this.name, this.icon);
}

class marketPlace extends StatefulWidget {
  @override
  marketPlaceState createState() => marketPlaceState();
}

class marketPlaceState extends State<marketPlace> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Market Place", style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                buildTeamCard(0, 'All Listings', Icons.list),
                buildTeamCard(0, 'My Bids', Icons.thumb_up_off_alt_sharp),
                buildTeamCard(0, 'Teams', Icons.people),
                buildTeamCard(0, 'Clients', Icons.people),
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
  final List<ProjectCard> projects = [
    ProjectCard(
      title: 'Project 1',
      price: '\$1000',
      location: 'City A',
      time: '2 hours ago',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      profileName: 'John Doe',
      companyName: 'ABC Company',
      starRating: 4,
      skills: ['Flutter', 'Dart'],
      tools: ['Android Studio'],
    ),
    ProjectCard(
      title: 'Project 1',
      price: '\$1000',
      location: 'City A',
      time: '2 hours ago',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      profileName: 'John Doe',
      companyName: 'ABC Company',
      starRating: 4,
      skills: ['Flutter', 'Dart'],
      tools: ['Android Studio'],
    )];
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDropdownButton('Project Type', ['New', 'Recommended', 'Favorite']),
                    buildDropdownButton('Status Type', ['Open', 'In Review']),
                  ],
                ),
                SizedBox(height: 8.0), // Add spacing between rows
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDropdownButton('Payment Type', ['Fixed', 'Variable']),
                    buildDropdownButton('Select Skill', ['Java', '3d Studio Max']),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDropdownButton('Select Tools', ['New', 'Recommended', 'Favorite']), //fetching the tools from the available project tools
                  ],
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
            child: ListView.builder(
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectDetailsPage(project: projects[index]),
                      ),
                    );
                  },
                  child: projects[index],
                );
              },
            )
          ),
        ],
      ),
    );
  }

  Widget buildDropdownButton(String hint, List<String> items) {
    return Expanded(
      child: DropdownButton<String>(
        hint: Text(hint),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          // Handle filter change
        },
      ),
    );
  }
}

class ProjectDetailsPage extends StatelessWidget {
  final ProjectCard project;

  ProjectDetailsPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Price: ${project.price}'),
            Text('Location: ${project.location}'),
            Text('Posted on: ${project.time}'),
            SizedBox(height: 16.0),
            Text(
              project.description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                CircleAvatar(
                  // Profile icon
                  // Add your profile icon logic here
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.profileName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(project.companyName),
                  ],
                ),
                Spacer(),
                Row(
                  children: List.generate(
                    project.starRating,
                        (index) => Icon(Icons.star, color: Colors.yellow),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                ...project.skills.map((skill) => Chip(label: Text(skill))),
                ...project.tools.map((tool) => Chip(label: Text(tool))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String price;
  final String location;
  final String time;
  final String description;
  final String profileName;
  final String companyName;
  final int starRating;
  final List<String> skills;
  final List<String> tools;

  ProjectCard({
    required this.title,
    required this.price,
    required this.location,
    required this.time,
    required this.description,
    required this.profileName,
    required this.companyName,
    required this.starRating,
    required this.skills,
    required this.tools,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price: ${widget.price}'),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(widget.location),
                  ],
                ),
                Text('Posted on ${widget.time}'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpandableText(
              text: widget.description,
              onShowMore: () {
                setState(() {
                  isExpanded = true;
                });
              },
              isExpanded: isExpanded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  // Profile icon
                  // Add your profile icon logic here
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.profileName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(widget.companyName),
                  ],
                ),
                Spacer(),
                Row(
                  children: List.generate(
                    widget.starRating,
                        (index) => Icon(Icons.star, color: Colors.yellow),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                ...widget.skills.map((skill) => Chip(label: Text(skill))),
                ...widget.tools.map((tool) => Chip(label: Text(tool))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandableText extends StatelessWidget {
  final String text;
  final Function()? onShowMore;
  final bool isExpanded;

  ExpandableText({
    required this.text,
    this.onShowMore,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          maxLines: isExpanded ? null : 3,
          overflow: TextOverflow.ellipsis,
        ),
        if (!isExpanded)
          TextButton(
            onPressed: onShowMore,
            child: Text('Show more'),
          ),
      ],
    );
  }
}

