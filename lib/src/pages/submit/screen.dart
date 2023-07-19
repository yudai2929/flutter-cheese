import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';

class SubmitScreen extends StatefulWidget {
  const SubmitScreen({Key? key}) : super(key: key);

  @override
  State<SubmitScreen> createState() => _SubmitScreenState();
}

const List<String> list = <String>['カテゴリー', 'Two', 'Three', 'Four'];

class _SubmitScreenState extends State<SubmitScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Header(
        title: '投稿',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
          color: Colors.black,
        ),
        actions: const [
          TextButton(
            onPressed: null,
            child: Text('保存',
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          )
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'タイトル',
              contentPadding: EdgeInsets.all(16.0),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              height: 68,
              child: InkWell(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("場所",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
                onTap: () {},
              )),
          Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              height: 68,
              child: DropdownButton<String>(
                value: dropdownValue,
                iconSize: 24,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_right_outlined,
                    color: Colors.black),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                underline: Container(
                  height: 0,
                ),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )),
          TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'コメント',
                contentPadding: EdgeInsets.all(16.0),
              ),
              maxLines: 4),
          const SizedBox(
            height: 48,
          ),
          OutlinedButton(
              // まるくする
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 32.0, right: 32.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              onPressed: () {},
              child: const Text('写真を追加',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ))),
        ],
      ),
    );
  }
}

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

enum IconLabel {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}
