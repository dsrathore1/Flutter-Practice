import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Pages/Day3.dart';

class Day8 extends StatefulWidget {
  _Day8State createState() => _Day8State();
}

class _Day8State extends State<Day8> {
  bool onClicked = false;
  String name = '';
  TextEditingController _controller = TextEditingController();

  moveToAnotherPage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        onClicked = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Day3(),
        ),
      );

      setState(() {
        onClicked = false;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.meddon(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Container(
                          padding: EdgeInsets.all(45),
                          child: Column(
                            children: [
                              Text(
                                "Welcome, $name",
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                height: 60,
                                width: 350,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter your Email";
                                    }
                                  },
                                  controller: _controller,
                                  onChanged: (value) {
                                    setState(() {
                                      name = value;
                                    });
                                  },
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                height: 60,
                                width: 350,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter your Password";
                                    } else if (value.length < 6) {
                                      return "Please Provide Password Length more than 6 digits";
                                    }
                                  },
                                  obscureText: true,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.amber,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 350,
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  child: Text(
                                    "Forget Password?",
                                    style: TextStyle(
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 6,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                                onPressed: () => moveToAnotherPage(context),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    gradient: LinearGradient(
                                      
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.red[200]!,
                                        Colors.redAccent[400]!,
                                      ],
                                    ),
                                  ),
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.linearToEaseOut,
                                    height: 40,
                                    width: onClicked ? 60 : 250,
                                    alignment: Alignment.center,
                                    child: onClicked
                                        ? Icon(
                                            Icons.done,
                                            color: Colors.white,
                                          )
                                        : Text(
                                            "Login",
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do not have an account?  "),
                            TextButton(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.red[300],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/Images/3.jpg",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
