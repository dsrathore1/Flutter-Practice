import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Day5 extends StatefulWidget {
  const Day5({Key? key}) : super(key: key);

  @override
  _Day5State createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/PNG/loginPage.png',
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: "meddon",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      fontFamily: "lato",
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 3,
                        ),
                      ),
                      hintStyle: TextStyle(fontFamily: "Lato"),
                      focusColor: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      fontFamily: "lato",
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 3,
                        ),
                      ),
                      hintStyle: TextStyle(fontFamily: "Lato"),
                      focusColor: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/Day4");
              },
              borderRadius: BorderRadius.circular(60),
              child: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Colors.indigo,
                      Colors.deepPurple,
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topRight,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do you have an account?",
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
