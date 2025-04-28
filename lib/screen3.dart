import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 20),
              _buildTabs(),
              const SizedBox(height: 20),
              Expanded(child: _buildProjectList()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back, size: 28),
        Text(
          "Tayo’s Projects",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Icon(Icons.add, size: 28),
      ],
    );
  }

  Widget _buildTabs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildTab("All", 17, Colors.cyan),
          _buildTab("To Do", 5, Colors.deepPurple),
          _buildTab("In Progress", 3, Colors.orange),
          _buildTab("Done", 0, Colors.grey.shade300),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int count, Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "$title $count",
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildProjectList() {
    final projects = [
      {
        "title": "Create Ad Banner",
        "dotColor": Colors.purple,
        "avatars": [
          "https://i.pinimg.com/736x/e9/ba/40/e9ba401b22f6355ffa19bed755ec8b73.jpg",
          "https://i.pinimg.com/736x/55/7e/79/557e7958e0b6dbba283116761e7ac913.jpg"
        ]
      },
      {
        "title": "Create New Blog Post",
        "dotColor": Colors.orange,
        "avatars": [
          "https://i.pinimg.com/736x/42/ed/81/42ed81e1e37b43342cba39752d93d050.jpg",
          "https://i.pinimg.com/736x/e9/ba/40/e9ba401b22f6355ffa19bed755ec8b73.jpg",
          "https://i.pinimg.com/736x/f5/8e/a9/f58ea97fe51761b90aa6897a8b02d031.jpg",
        ]
      },
      {
        "title": "Online Course",
        "dotColor": Colors.purple,
        "avatars": [
          "https://i.pinimg.com/736x/63/6e/3b/636e3b9e7b967e40fa8e0c9690f4ac8a.jpg",
          "https://i.pinimg.com/736x/43/b1/1b/43b11bb45de757b114153240d257b974.jpg"
        ]
      },
      {
        "title": "Complete Portfolio",
        "dotColor": Colors.grey,
        "avatars": [
          "https://i.pinimg.com/736x/ca/e3/d4/cae3d4500c2f1cdbe29813536212b43b.jpg"
        ]
      },
      {
        "title": "Plan For Next Week",
        "dotColor": Colors.orange,
        "avatars": [
          "https://i.pinimg.com/736x/ff/f8/d0/fff8d0bbafbd32ac5252e1cc989f5a88.jpg"
        ]
      },
    ];

    return ListView.separated(
      itemCount: projects.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final project = projects[index];
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(239, 239, 239, 239),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.shade200,
                offset: const Offset(0, 5),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: project["dotColor"] as Color,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project["title"] as String,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Row(
                      children: [
                        Icon(Icons.calendar_today,
                            size: 14, color: Colors.grey),
                        SizedBox(width: 4),
                        Text("2 hours ago",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: List.generate(
                  (project["avatars"] as List).length,
                  (i) => Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        (project["avatars"] as List)[i] as String,
                      ),
                      backgroundColor: Colors
                          .transparent, // Ensure no background color interferes
                      child: ClipOval(
                        child: Image.network(
                          (project["avatars"] as List)[i] as String,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
