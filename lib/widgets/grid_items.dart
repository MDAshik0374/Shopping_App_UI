import 'package:flutter/material.dart';
import 'package:shopping_app/screens/item_screen.dart';

class GridItem extends StatelessWidget {
  // const GridItem({super.key});

  var pNames=[
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: .7,
        crossAxisCount: 2
      ), 
      itemBuilder: (context,index){
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ItemScreen()));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFD4ECF7),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text("30% off",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),),
                      ),
                      Icon(Icons.favorite,color: Colors.redAccent,)
                    ],
                  ),
                  const SizedBox(height: 4),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "images/${pNames[index]}.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  const SizedBox(height: 7),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(pNames[index],
                         style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                         ),
                         ),
                         const SizedBox(height: 10),
                         Row(
                            children: [
                             const  Text("\$100",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w500,
                              ),
                              ),
                             const  SizedBox(width:5),
                              Text("\$130",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 13,
                                color: Colors.black.withOpacity(.4),
                                fontWeight: FontWeight.w500,
                              )
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),
        );
      });
  }
}