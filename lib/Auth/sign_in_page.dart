import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui_flutter/Pages/Navigaton%20Pages/bottom_bar_page.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.purple[900],
       elevation: 0,
      ),
      backgroundColor: Colors.purple[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  radius: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.purple[900],
                    radius: 48,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  )),
              SizedBox(
                height: 25,
              ),
              Text(
                "Welcome To Moviez",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Create your account",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SingleChildScrollView(
                child: Column(
                  children:  [
                    SizedBox(
                      height: 20,
                    ),
                  Textfield(
                      text: 'Email',
                      icon: FontAwesomeIcons.envelope,
                      isHidden: false,
                    ),
                    Textfield(
                      text: 'Password',
                      icon: FontAwesomeIcons.eyeSlash,
                      isHidden: true,
                    ),
                    Textfield(
                      text: 'Confirm Password',
                      icon: FontAwesomeIcons.eyeSlash,
                      isHidden: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => BottomBarPage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 12,
              ),
             
              Text(
                "or",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.white,
                    size: 25,
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

// ignore: must_be_immutable
class Textfield extends StatelessWidget {
  Textfield({
    Key? key,
    required this.text,
    required this.icon,
    required this.isHidden,
  }) : super(key: key);
  final String text;
  final IconData icon;
  bool isHidden;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 8),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
          obscureText: isHidden,
          decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: Colors.white70,
              size: 20,
            ),
            labelText: text,
            //  prefixText: text, prefixStyle: TextStyle(color: Colors.white70),
            labelStyle: TextStyle(color: Colors.white70),
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.deepPurple,
                width: 1.0,
              ),
            ),
          )),
    );
  }
}
