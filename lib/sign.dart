import 'package:flutter/material.dart';
import 'custom_page_route.dart';
import 'Login.dart';



class sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupScreen(),
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
            "I understand and agree to the Stanley Terms of Service",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 24.0),
              _buildNameSection(),
              SizedBox(height: 24.0),
              _buildEmailField(),
              SizedBox(height: 10.0),
              _buildPasswordFields(),
              SizedBox(height: 10.0),
              _buildCreateAccountButton(),
              SizedBox(height: 10.0),
              _buildSocialMediaSection(),
              SizedBox(height: 10.0),
              _buildFooter(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create An Account",
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          "Describe yourself as clearly so that there are no mistakes.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }

  Widget _buildNameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter your name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(child: _buildTextField("First name", Colors.white)),
            SizedBox(width: 16.0),
            Expanded(child: _buildTextField("Last name", Colors.white)),
          ],
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter your email",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        _buildInputContainer("Email"),
      ],
    );
  }

  Widget _buildPasswordFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter your password",
          style: TextStyle(
            color: Color(0xff4F4351),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        _buildPasswordInputContainer("Password"),
        SizedBox(height: 24.0),
        Text(
          "Confirm password",
          style: TextStyle(
            color: Color(0xff4F4351),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        _buildPasswordInputContainer("Enter the password again"),
        RememberMeToggle(),
      ],
    );
  }

  Widget _buildTextField(String hintText, Color backgroundColor) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }

  Widget _buildInputContainer(String hintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordInputContainer(String hintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            suffixIcon: Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xffB498B9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "Create account",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialMediaSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Or use social media",
            style: TextStyle(
              color: Color(0xffAEA2A2),
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        _buildSocialMediaButton(
          'assets/images/flat-color-icons_google.png',
          'Login With Google',
          Colors.white,
          Colors.black,
        ),
        SizedBox(height: 24.0),
        _buildSocialMediaButton(
          'assets/images/Vector-2.png',
          'Login With Apple',
          Colors.black,
          Colors.white,
        ),
      ],
    );
  }

  Widget _buildSocialMediaButton(String imagePath, String text, Color backgroundColor, Color textColor) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(width: 80),
          Image.asset(imagePath),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 70.0),
            Text(
              "Already have an account? ",
              style: TextStyle(
                color: Color(0xffAEA2A2),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  SlidePageRoute(page: Login()),
                );
              },
              child: Text(
                'Login',
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
    );
  }
}
