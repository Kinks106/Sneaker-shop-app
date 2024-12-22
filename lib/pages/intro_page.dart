import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo at top
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/nike_logo.png',
                height: 240,),
              ),
          
              const SizedBox(height: 48,),
          
              //title
              Text('Just Do It',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,),
              ),
              
              const SizedBox(height: 48,),
              //sub title
              Text('Brand New Sneakers and custom kicks made with premium qua;ity',
              style: TextStyle(
              fontSize: 18,
              color: Colors.grey),
              textAlign: TextAlign.center,
              ),
              const SizedBox(height:48),
          
              //start now
              GestureDetector(
                onTap: ()=> Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> HomePage())),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(60)),
                  padding:const EdgeInsets.all(25),
                  child:const Center(
                    child: Text('Shop Now!!',
                    style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,),),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}