import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';

const crossImagePath = 'assets/images/cross.png';
const heartImagePath = 'assets/images/heart.png';

const dummyImg = 'https://picsum.photos/200';
const dummyTitle = '猫カフェ mocha 名古屋栄店';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Header(title: ""),
        body: Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          child: Card(
            shape: const RoundedRectangleBorder(
              // アンダーラインを引く
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(dummyTitle,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    const Text("マップで表示", style: TextStyle(color: Colors.blue)),
                    const SizedBox(height: 16.0),
                    Wrap(
                      spacing: 10,
                      children: [
                        SizedBox(
                            height: 72.0,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  dummyImg,
                                  fit: BoxFit.cover,
                                ))),
                        SizedBox(
                            height: 72.0,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  dummyImg,
                                  fit: BoxFit.cover,
                                ))),
                        SizedBox(
                            height: 72.0,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  dummyImg,
                                  fit: BoxFit.cover,
                                ))),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              dummyImg,
                              fit: BoxFit.cover,
                            ))),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.white,
                              shadowColor: Colors.white),
                          child: Image.asset(crossImagePath), // 画像のパスを指定
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.white,
                              shadowColor: Colors.white),
                          child: Image.asset(heartImagePath), // 画像のパスを指定
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
