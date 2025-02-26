import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const AdvanceUI());
}

class AdvanceUI extends StatelessWidget {
  const AdvanceUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.logo_dev_outlined),
                    TextButton.icon(
                      onPressed: () {},
                      label: Text("close"),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Recents"),
                trailing: Icon(Icons.arrow_upward_rounded),
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("Images"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(children: [
            Image(
              image: NetworkImage(
                'https://th.bing.com/th/id/OIP.1iuKbMAm4roP1prJs9KErQHaE8?rs=1&pid=ImgDetMain' // Replace with a valid direct image URL
              ),
              // Ensures the image fits within the specified size
            ),
            CachedNetworkImage(
              imageUrl: "https://th.bing.com/th/id/OIP.GYfbe3hhi4zsZWpQz_gecgHaE8?rs=1&pid=ImgDetMain",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ]),
        ),
      ),
    );
  }
}
