import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/shop_page.dart';
import 'package:flutter/material.dart';
import '../components/bottom_nav.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //navigate Bottom Bar
  int _selectedIndex = 0;
  void navigateBottomBar(index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = [
    const ShopPage(),
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _page[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder:
          (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff262626),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            DrawerHeader(child: Image.asset('lib/image/Logo.png',
            color: Colors.white,
            width: 200,)),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                height: 20,
                thickness: 5,
                color: Color(0x5a3a3a3a),
              ),
            ),

             const Padding(
               padding: EdgeInsets.only(left: 20),
               child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                 title: Text('Home', style: TextStyle(color: Colors.white),),
            ),
             ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text('Home', style: TextStyle(color: Colors.white),),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text('Home', style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}