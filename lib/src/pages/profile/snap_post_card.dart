import 'package:flutter/material.dart';

class SnapPostCard extends StatelessWidget {
  final String title;
  final List<String> tags;
  final String imageUrl;
  const SnapPostCard({
    Key? key,
    required this.title,
    required this.tags,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[50],
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
              title: Text(title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              subtitle: Text(
                tags.join(' '),
                style: const TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
