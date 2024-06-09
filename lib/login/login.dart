import 'package:bizfuel/Businesses/bizhomepage.dart';
import 'package:bizfuel/Businesses/bizregistration.dart';
import 'package:bizfuel/Businesses/buzbottomsheet.dart';
import 'package:bizfuel/login/home1.dart';
import 'package:bizfuel/login/reset.dart';
import 'package:bizfuel/login/tutorial.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "bizfuel",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Mobile number or email id",
                        fillColor: Color.fromARGB(229, 255, 255, 255),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Password",
                          fillColor: Color.fromARGB(229, 255, 255, 255),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))))),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 600,
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BizbottomNavi()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Reset()));
                    },
                    child: const Text(
                      "Forgotten password?",
                      style: TextStyle(color: Color.fromARGB(239, 0, 0, 0)),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.black,
                      thickness: 1,
                      height: 3,
                    )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.black,
                      thickness: 1,
                      height: 3,
                    )),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 55,
                  width: 370,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Homeone()));
                        },
                        child: const Text(
                          "Create new account",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 220,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Tutorial()));
                      },
                      child: const Text(
                        "TUTORIAL",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 35,
                ),
                Text("Bizfuel © 2024")
              ],
            ),
          )),
    );
  }
}