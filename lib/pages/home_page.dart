import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/components/bottom_nav_bar.dart';
import 'package:sneaker_shop_app/pages/cart_page.dart';
import 'package:sneaker_shop_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //this selcetd index is to controll the bottom nav bar

  int _selectedIndex=0;

  //this method will update the selected index so zero d=for home and 1 for cart
  void navigateBottomBar(int index)
  {
    setState(() {
        _selectedIndex=index;
    });
  }

  //pages to display
  final List<Widget> _pages=[
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index)=>navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder:
        (context) => 
        IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, 
        icon:Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Icon(Icons.menu),
        ),
        color: Colors.black,),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
                        //logo
          DrawerHeader(child: Image.asset('lib/images/nike_logo.png'
          ,color: Colors.white,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color:Colors.grey[900] ,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListTile(leading:Icon(Icons.home_outlined,color: Colors.grey[400],size:30 ,),
            title: Text('Home',
            style: TextStyle(color: Colors.grey[400], fontSize: 20),
            ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListTile(leading:Icon(Icons.info_outline_rounded,color: Colors.grey[400],size:30),
            title: Text('About',
            style: TextStyle(color: Colors.grey[400], fontSize: 20),
            ),
            ),
          ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0,bottom:25,),
            child: ListTile(leading:Icon(Icons.logout,color: Colors.grey[400],size:30),
            title: Text('Log Out',
            style: TextStyle(color: Colors.grey[400], fontSize: 20),
            ),
            ),
          ),
          

          //other pages
        ],),
      ),
      body: _pages[_selectedIndex],
    );
  }
}