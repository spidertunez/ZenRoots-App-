import 'package:flutter/material.dart';
import 'package:untitled20/_b3.dart';

class onboard1 extends StatelessWidget {
  const onboard1({super.key});
  static const String route = '/onboard1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, onboard3.route);
            },
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xfffbf5fb),
      body: Column(

        children: [ 
           SizedBox(height: 40,),
           Container(
             margin: EdgeInsets.only(left: 20, right: 20),
           child:
             Column(
               children: [   Image.asset("assets/images/amico.png"),
             Text("Welcome to ZenRoots !", style:TextStyle
               (fontWeight: FontWeight.bold,fontSize: 35, color: Colors.black),)
                 ,Text("Here, you find peace of mind and tranquility through gardening and healthy habits"
                     , style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w400, color: Colors.grey),)
               ],
             )

           )
        ],
      ),
    );
  }
}
