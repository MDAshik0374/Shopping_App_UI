import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  //const CartScreen({super.key});

  var pNames=[
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone"
  ];

  var pSizes = [
    "36",
    "M",
    "S",
    "40"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:45,left: 20,right: 20),
        child: Column(
          children: [
            const Align(
              child: Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
           const  SizedBox(height: 15),
            for(int i=0;i<4;i++)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.only(right: 10),
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 248, 248, 248),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width/4,
                    margin: const EdgeInsets.only(left:8),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "images/${pNames[i]}.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top:20, bottom: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(pNames[i],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Row(
                          children: [
                            const Text("Size:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                            ),
                            const SizedBox(width: 5),
                            Text(pSizes[i],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                 const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("\$50.55",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent
                              )
                              ),
                              
                              Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(CupertinoIcons.minus),
                                    Text("01"),
                                    Icon(CupertinoIcons.plus)
                                  ],
                                ),
                              ),
                            ],
                          )
                  
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("total:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
              Text("\$300",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              )
            ],
            ),
            const SizedBox(height: 20),
            Container(height: 50,
            width: MediaQuery.of(context).size.width/2*2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.redAccent,

            ),
            child: const Center(
              child: Text("Order Now",
              style: TextStyle(fontSize: 20,
               color: Colors.white,
               fontWeight: FontWeight.w500,
              ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}