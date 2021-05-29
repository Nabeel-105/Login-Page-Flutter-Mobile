import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';

void main() {
  runApp(MaterialApp(
    home: SignupScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SignupScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SignupScreen> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('background1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      //  padding: EdgeInsets.all(10),
                      height: 150.0,
                      width: 190.0,
                      padding: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Image.asset('logo.png'),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: TextStyle(color: Colors.yellow),
                        cursorColor: Colors.amber,
                        controller: fnameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          hoverColor: Colors.amber,
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: 'First Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: TextStyle(color: Colors.yellow),
                        cursorColor: Colors.amber,
                        controller: lnameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          hoverColor: Colors.amber,
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: 'Last Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: TextStyle(color: Colors.yellow),
                        cursorColor: Colors.amber,
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          hoverColor: Colors.amber,
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: TextStyle(color: Colors.yellow),
                        cursorColor: Colors.amber,
                        controller: passwordController,
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(_isHidden
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          hoverColor: Colors.amber,
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: TextStyle(color: Colors.yellow),
                        cursorColor: Colors.amber,
                        controller: cpasswordController,
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(_isHidden
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          hoverColor: Colors.amber,
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.black,
                          color: Colors.amber,
                          child: Text('Sign up'),
                          onPressed: () {},
                        )),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: FlatButton(
                        textColor: Colors.yellow,
                        child: Text(
                          'Login Form',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          //login screen
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                      ),
                    )
                  ],
                ))));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
