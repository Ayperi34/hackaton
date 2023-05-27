import 'dart:html';
import 'Productpage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Zenan extends StatefulWidget {
  const Zenan({super.key});

  @override
  State<Zenan> createState() => _ZenanState();
}

class _ZenanState extends State<Zenan> {
  List images = [
    'images/bal1 6.png',
    'images/main 1.jpg',
    'images/olive 9.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Nur Zenan',
              style: TextStyle(
                  fontFamily: 'Miama',
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
            Row(
              children: [
                Image.asset('images/categ.png'),
                SizedBox(
                  width: 12,
                ),
                Image.asset('images/globus.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('images/vector.png'),
                SizedBox(
                  width: 10,
                ),
                Image.asset('images/heart.png'),
                SizedBox(
                  width: 10,
                ),
                Image.asset('images/theme.png')
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 200.0, viewportFraction: 1),
              items: [0, 1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[i]),
                              fit: BoxFit.cover)),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.circle, size: 7),
                );
              }),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Maslahat berilyan maskalar',
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(194, 246, 162, 1),
                          backgroundImage: AssetImage('images/face.png'),
                          maxRadius: 30,
                        ),
                        Text('Ýüz üçin tebigy \n serişdeler',
                            textAlign: TextAlign.center)
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(194, 246, 162, 1),
                          backgroundImage: AssetImage('images/Frame.png'),
                          maxRadius: 30,
                        ),
                        Text('Beden üçin tebigy \n serişdeler',
                            textAlign: TextAlign.center)
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(194, 246, 162, 1),
                          backgroundImage: AssetImage('images/soap.png'),
                          maxRadius: 30,
                        ),
                        Text('Saç üçin tebigy \n serişdeler',
                            textAlign: TextAlign.center)
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
