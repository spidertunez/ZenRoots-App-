import 'package:flutter/material.dart';
import 'package:untitled20/home.dart';
import 'custom_page_route.dart';
import 'Login.dart';



class onboard3 extends StatelessWidget {
  const onboard3({super.key});
  static const String route = '/onboard3';


  @override
  Widget build(BuildContext context) {
    return  Scaffold( body: SafeArea(
      child: Column(
        children: [
          Container(
            child:Image.asset("assets/images/pana.png"),
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
          ),
          Container( margin: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Column(
              children: [
                Text(
                  "With us ,you'll never be alone",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24.7,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10,),

                   Text(
                     "Talk about your problems, and connect with others in our supportive community.",
                     style: TextStyle(
                       fontSize: 17.7,
                       fontWeight: FontWeight.w400,
                       color: Colors.grey[500],
                     ),
                   ),
                SizedBox(height: 250,),

            ]
          )
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                SlidePageRoute(page:Login()),
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xffB498B9),
              minimumSize: Size(380, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              textStyle: TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
            ),
            child: Text("Let's go !", style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 20
            ),),
          )

        ],

      ),

    ),

    );
  }
}
