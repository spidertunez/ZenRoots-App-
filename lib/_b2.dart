import 'package:flutter/material.dart';
import '_b3.dart';

class onboard2 extends StatelessWidget {
  const onboard2({super.key});
  static const String route = '/onboard2';

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
              margin: EdgeInsets.only(left: 20, right: 22),
              child:
              Column(
                children: [
                  Image.asset('assets/images/cuate.png'),

                  Text("Start your jpurnry with us", style:TextStyle
                    (fontWeight: FontWeight.bold,fontSize: 30, color: Colors.black),),
                  SizedBox(height: 10,)
                  ,Text("Record ypur emotions , track your habits , and join the growing gardening community "
                    , style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w400, color: Colors.grey),)
                ],
              )
          )
          ,SizedBox(height:210 ,),
          Row(
            children: [
              Container( margin: EdgeInsets.only( left :30),

                child: Row(
                  children: [ SizedBox(width: 130,)
                    ,Container(
                      width: 40,height: 10,
                      decoration: BoxDecoration(color: Colors.black87,borderRadius: BorderRadius.circular(20)),

                    ),
                    SizedBox(width: 7,),
                    Container(
                      width: 10,height: 10,
                      decoration: BoxDecoration(color: Color(0xffE1BEE7),borderRadius: BorderRadius.circular(20)
                      ),),

                    SizedBox(width: 7,),
                    Container(
                        width: 10,height: 10,
                        decoration: BoxDecoration(color: Color(0xffE1BEE7),borderRadius: BorderRadius.circular(20))

                    )
                  ],
                ),
              ),
              SizedBox(width: 90,),
              Container(margin: EdgeInsets.only( right: 10),
                  child:
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, onboard3.route);
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
