import 'package:cheese_client/src/components/ui/header.dart';
import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';

const crossImagePath = 'assets/images/cross.png';
const heartImagePath = 'assets/images/heart.png';

const dummyImg = 'https://picsum.photos/200';
const dummyTitle = '猫カフェ mocha 名古屋栄店';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  bool _canSwipe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: ""),
      body: AppinioSwiper(
        cardsCount: 10,
        backgroundCardsCount: 1,
        // isDisabled: !_canSwipe,
        allowUnswipe: _canSwipe,
        padding: const EdgeInsets.all(16.0),
        onSwipe: (int index, AppinioSwiperDirection direction) {
          print(direction.toString());
        },
        onSwiping: (AppinioSwiperDirection direction) {
          final isSwipingRight = direction == AppinioSwiperDirection.right;
          final isSwipingLeft = direction == AppinioSwiperDirection.left;
          setState(() {
            _canSwipe = isSwipingRight || isSwipingLeft;
          });
        },
        cardsBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              // アンダーラインを引く
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
          );
        },
      ),
    );
  }
}
