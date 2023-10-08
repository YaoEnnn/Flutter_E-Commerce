import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/image/Logo.png',
              width: 500,),
            const Text('Just Do It',
              style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 20,
              ),),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: const Text('Brand new sneakers and custom '
                  'kicks made with premium quality',
                style: TextStyle(
                  fontWeight:FontWeight.normal,
                  fontSize: 15,
                  color: Color(0xff525252)
                ),
              textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()
                  ));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350,70),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  elevation: 4  ,
                  shadowColor: Colors.grey,
                ),
                child: const Text('Shop Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),) )
          ],
        ),
      )
    );
  }

}