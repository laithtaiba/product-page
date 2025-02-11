import 'package:flutter/material.dart';
import 'package:myapp2/pages/add-to-cart-button.dart';
import 'package:myapp2/pages/product-size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:[
          const SizedBox(height: 30,),
           Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Icon(Icons.favorite,color: Colors.red,)
                  ],
                ),
                 const SizedBox(height: 30,),
                 Container(
                  height:350 ,
                  width: double.infinity,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(image: AssetImage("images/clothes.png"),
                              fit: BoxFit.cover
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Modern Light\nClothes",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
                      const SizedBox(width: 50,),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 1,color: Colors.grey)
                        ),
                        child: const Center(child: Icon(Icons.remove)),
                      ),
                      const Text("1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 1,color: Colors.grey)
                        ),
                        child: const Center(child: Icon(Icons.add)),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    "its sample and elegant shape makes it perfect for\nthose of you who like who want minimalist\nclothes",
                    style: TextStyle(fontWeight: FontWeight.w100),),
                    const SizedBox(height: 20,),
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Choose Size",style: TextStyle(fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                           ProductSize(),
                            ],
                          ),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Color",style: TextStyle(fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.circle),
                              Icon(Icons.circle,color: Colors.grey,),
                              Icon(Icons.circle,color: Colors.black12,),
                        ],
                        ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                       const AddToCartButton(),
                    ],
                  ),
          )
          ),
        ],
      ),
      
    );
  }
}
