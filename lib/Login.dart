import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled20/sign.dart';

import 'custom_page_route.dart';
import 'forget.dart';
import 'home.dart';



class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class RememberMeToggle extends StatefulWidget {
  @override
  _RememberMeToggleState createState() => _RememberMeToggleState();
}

class _RememberMeToggleState extends State<RememberMeToggle> {
  bool _isRemembered = false;

  void _toggleRememberMe() {
    setState(() {
      _isRemembered = !_isRemembered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleRememberMe,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            color: _isRemembered ? Color(0xff4F4351) : Colors.grey,
          ),
          SizedBox(width: 8.0),
          Text(
            "Remember Me",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "Login To Your Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Please enter the information you used while registering.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                "Enter your email",
                style: TextStyle(
                    color: Color(0xff4F4351),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                "Enter your password",
                style: TextStyle(
                    color: Color(0xff4F4351),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          suffixIcon: Icon(Icons.visibility)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  RememberMeToggle(),
                  SizedBox(width: 75.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        SlidePageRoute(page: forget()), // Ensure the ForgetScreen is correctly imported and defined.
                      );
                    },
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.infinity, // Make the button fill the width
                  height: 40, // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        SlidePageRoute(page: home()), // Ensure the HomeScreen is correctly imported and defined.
                      );
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color(0xffB498B9), // Text color
                      elevation: 12, // Shadow effect
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 48.0),
              Center(
                child: Text(
                  "Or use social media",
                  style: TextStyle(
                    color: Color(0xff4F4351),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 70),
                      Image.asset('assets/images/flat-color-icons_google.png'),
                      SizedBox(width: 12.0),
                      Text(
                        "Login With Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 70.0),
                      Image.asset('assets/images/Vector-2.png'),
                      SizedBox(width: 12.0),
                      Text(
                        "Login With Apple",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  SizedBox(width: 40.0),
                  Text(
                    'Don\'t have an account',
                    style: TextStyle(
                      color: Color(0xffAEA2A2),
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        SlidePageRoute(page: sign()), // Ensure the SignScreen is correctly imported and defined.
                      );
                    },
                    child: Text(
                      'Sign up ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}