import 'package:flutter/material.dart';

class SnapPostCard extends StatelessWidget {
  final String title;
  final String tag;
  final String imageUrl;
  const SnapPostCard({
    Key? key,
    required this.title,
    required this.tag,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[50],
      child: Column(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          ListTile(
              title: Text(title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              subtitle: Container(
                child: Text(
                  tag,
                  style: const TextStyle(color: Colors.black),
                ),
              )),
        ],
      ),
    );
  }
}
