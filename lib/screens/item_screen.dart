import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/widgets/product_images_slider.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color:Color(0xFFD4ECF7),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),
              ),
              child: Stack(
                children: [
                 const  Center(child: ProductImaesSlider(),),
                  Padding(padding: const EdgeInsets.only(left: 15,top: 20),
                  child: InkWell(onTap: (){
                    Navigator.pop(context);
                  },
                   child: const Icon(Icons.arrow_back,size: 25,),
                  ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(padding: const  EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
               const Text("Apple Watch Series 6",
               style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
               ),
               ),
               const SizedBox(height: 10),
               Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.amber,), 
                    onRatingUpdate: (rating){}),
                    const SizedBox(width: 5),
                    const Text("(450)")
                ],
               ),
              const  SizedBox(height: 15),
               const Row(
                children: [
                  Text("\$140",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
                  SizedBox(width: 5),
                  Text("\$200",
                   style: TextStyle(
                    color: Colors.black45,
                    decoration: TextDecoration.lineThrough
                   ),
                  )
                ],
               ),
               const SizedBox(height: 20),
               const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
               )
            ]
            ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 18,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent
                ),
                child: const Center(child: Text("Add To Cart",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFD4ECF7)
                ),
                child:const  Center(child: Icon(Icons.favorite_outline,color: Colors.redAccent,),),
              ),
            )
          ],
        ),
      ),
    );
  }
}