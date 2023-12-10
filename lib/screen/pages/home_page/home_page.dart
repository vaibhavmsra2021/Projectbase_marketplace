import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text("Dashboard",
                    style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600)),
              ),
              Expanded(child: SizedBox()),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Implement create club functionality
                },
              ),
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () {
                  // Implement create team functionality
                },
              ),
              IconButton(
                icon: Icon(Icons.group_add),
                onPressed: () {
                  // Implement join team functionality
                },
              ),
            ],
          ),
          Card(
            child: Column(
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    buildEarningsTile('Total (Month)', '\₹5000'),
                    buildEarningsTile('Completed (Month)', '\₹3000'),
                    buildEarningsTile('Total (Year)', '\₹25000'),
                    buildEarningsTile('Completed (Year)', '\₹18000'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          ExpandableCard(
            title: 'Rewards',
            content: Column(
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 1,
                  children: [
                    buildRewardTile('Reward 1', '\₹100'),
                    buildRewardTile('Reward 2', '\₹50'),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        // Profile icon
                        // Add your profile icon logic here
                        ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Earnings'),
                        Text('\₹5000'),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement earn more functionality
                      },
                      child: Text('Earn More'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          ExpandableCard(title: 'Projects', content: buildProjectsContent()),
          SizedBox(height: 10.0),
          ExpandableCard(title: 'Teams', content: buildTeamsContent()),
          SizedBox(height: 10.0),
          AvailabilityCard(),
        ],
      ),
    );
  }

  Widget buildRewardTile(String title, String amount) {
    return Card(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(amount),
        ],
      ),
    );
  }

  Widget buildEarningsTile(String title, String amount) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6.0),
          Text(amount),
        ],
      ),
    );
  }

  Widget buildRewardsContent() {
    // Build the content for the "Rewards" card
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Reward 1'),
            Text('\₹100'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Reward 2'),
            Text('\₹50'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
                // Profile icon
                // Add your profile icon logic here
                ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Earnings'),
                Text('\₹5000'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Implement earn more functionality
              },
              child: Text('Earn More'),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildProjectsContent() {
    // Build the content for the "Projects" card
    return Column(
      children: [
        ExpandableList(
            title: 'Active Projects', items: ['Project 1', 'Project 2']),
        ExpandableList(
            title: 'Upcoming Projects', items: ['Project 3', 'Project 4']),
        ExpandableList(
            title: 'Recommended Projects', items: ['Project 5', 'Project 6']),
        ExpandableList(
            title: 'Upcoming Payments', items: ['Payment 1', 'Payment 2']),
      ],
    );
  }

  Widget buildTeamsContent() {
    // Build the content for the "Teams" card
    return Column(
      children: [
        ExpandableList(title: 'My Teams', items: ['Team A', 'Team B']),
        ExpandableList(title: 'Team Invites', items: ['Invite 1', 'Invite 2']),
        ExpandableList(title: 'Recommended Teams', items: ['Team X', 'Team Y']),
      ],
    );
  }
}

class ExpandableCard extends StatefulWidget {
  final String title;
  final Widget content;

  ExpandableCard({required this.title, required this.content});

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            trailing: IconButton(
              icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ),
          if (isExpanded) widget.content,
        ],
      ),
    );
  }
}

class ExpandableList extends StatelessWidget {
  final String title;
  final List<String> items;

  ExpandableList({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: [
        for (String item in items)
          ListTile(
            title: Text(item),
            // Add more details as needed
          ),
      ],
    );
  }
}

class AvailabilityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Availability'),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Implement edit availability functionality
          },
        ),
        // Add availability interface here
      ),
    );
  }
}
