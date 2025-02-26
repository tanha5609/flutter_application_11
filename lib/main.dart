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
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.logo_dev_outlined),
                    TextButton.icon(onPressed:() {} , label: Text("close"),
                    )
                  ],
                ),
              )
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
          child: Column(
            
            children: [Image(
              image: NetworkImage(
                'https://i.natgeofe.com/k/9acd2bad-fb0e-43a8-935d-ec0aefc60c2f/monarch-butterfly-grass_3x2.jpg', // Replace with a valid direct image URL
              ),
              
              // Ensures the image fits within the specified size
            ),
            CachedNetworkImage(
            imageUrl: "http://via.placeholder.com/350x150",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
     ),
            ]
          ),
        ),
      ),
    );
  }
}