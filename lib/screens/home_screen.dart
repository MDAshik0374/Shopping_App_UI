import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app/widgets/grid_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = const [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),

    ];

    var imageList  = [
      "images/slide1.png",
      "images/slide3.png",
      "images/slide4.png"
    ];

    var iconImageList = [
      "images/icon1.png",
      "images/icon2.png",
      "images/icon3.png",
      "images/icon4.png",
      "images/icon5.png",
      "images/icon6.png",
      "images/icon7.png"
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:const  EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:const  Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
      
                    ),
                    child:const Icon(CupertinoIcons.cart,size: 28),
                  ),
                   Container(
                    padding:const  EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:const  Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
      
                    ),
                    child: Icon(CupertinoIcons.search,size: 28),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello Dear",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 5),
                  Text("Lets shop something",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  for(int i = 0; i<3;i++)
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/5.5,
                    decoration: BoxDecoration(
                      color: Clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "30% off on Winter Collection",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Container(
                                width: 90,
                                padding:const  EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                                ),
                                child: const Center(
                                  child: Text("Shop Now",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   alignment: Alignment.centerLeft,
                        //   decoration: BoxDecoration(

                        //   ),
                        // ),
                        Image.asset(
                          imageList[i],
                          height: 180,
                          width: 110,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Catagories",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )
                  ),
                   Text("See All",
                  style:TextStyle(
                    color: Colors.black54,
                    //fontSize: 18,
                  )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left:10),
                child: Row(
                  children: [
                    for(var i =0; i<7; i++)
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4ECF7),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Image.asset(iconImageList[i]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            GridItem(),
          ],
        ),
      ),
    );
  }
}